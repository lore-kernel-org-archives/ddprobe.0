Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4286E36C9C5
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 15:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787584234; cv=none; b=A+TD1DoEg1aqkAV423RnOVo3dgeQKxr2km8O17+Qg7ev3fFap0buRftE8cfBQwS+BzlTEzfL0DjKMqG1/Rb2lBzAslespwNtdJe83go11/17WCyVMUXlY9948ObeiEsfdjhFfrGWX4aNTEfWOJs0blXaqqP5QKR018u/fGkT2N0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787584234; c=relaxed/simple;
	bh=+1kFzIiv2AAWqiMQd1v4D6fh7HvtCE1r4YZjwX7k+CA=;
	h=To:Subject:From:Message-Id:Date; b=u0yFdPJ73DAFF6Rb3vojBA7Eo6QhB38m/smdypewH4J/qHezcJQOhp52nxBkiEbgF3bFwUvcyWjqesaILGH+CHMxWw1oTSY4VHc2+bEcb+rK7MdStjzB5T8FzWPjvoD3e1kwHq74MVzJSKCXefauXaMWfhXuQxIG75BtE/bJBzU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dpK43N1t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dpK43N1t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5DEFC19425
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 15:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787584233;
	bh=+1kFzIiv2AAWqiMQd1v4D6fh7HvtCE1r4YZjwX7k+CA=;
	h=To:Subject:From:Date:From;
	b=dpK43N1tunYkeDdE91aTo+dzHVNsKolGZaVNDr0CLdA3UdilrbvdJ8Tw+JGbHr5C1
	 164W6JMORGexXLeUMMAC5NzpW44r8O1A9o8AZ9jeQDiIW4nm6JjWsRQXiZc7PmTNZD
	 mX/RWL4uMX1tvbSPBiiLiIFyDRW/YLUji/mE3K64N4Nt01BTsywX/TWUTJehmaBbvC
	 NSexDXrInxkQ5jLYSnQzO/Zys24iHqBvVZzrzXtzLS7EIqwZistJh6DCJMWgl+aIyy
	 c4YDL/SbCZkiQUAF8a8sMM5eeAwvUjNU0M4YoxoEz4OorXwkntq+P92MDn3rMWCx5r
	 9Vap45Bkeus0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB998C5DF81
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 15:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178758423369.24722.2369910594163245483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 497e25671410a7c2cf1d4af279a22d58120b00b4b38c80b692baa4da422ee47a
Date: Mon, 24 Aug 2026 15:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787584233
