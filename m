Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 408713845C4
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 15:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782227194; cv=none; b=pN5l8uoFFP7tbwZY37gcB6BLwwbFVBKIHa06dbLQGG9maL7IB/4LWNWZm4aW2pdJgV9fICS3rATn1DSVMr9RNsi1FMa16/npllIu0wRJMia6qv60d/WW12UDXtxgpvvVGo5h4hgVaLWRTptxCPBUqebktCR8O4VNT8gUdyCOqKY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782227194; c=relaxed/simple;
	bh=7G8QsvhGYVB9t8CzzH6C7mNN37R3oDt/n0bTHDFfYM0=;
	h=To:Subject:From:Message-Id:Date; b=kodX6TfwSNHU2d+VpkMUbSrQz8FBbX4cneSHKSEnlnknxHG0sCbU0Bv2FxmFtxQ+chRnZV0iH/PUpgXjQi5aIfEir54jqsJ4hvYTtS+rmNf5I2NXQ/VOLN2hMO10W3O6gx6iKBljnxEzA0Lf+2QpjRHlQag+C5khh2y+pYwohLw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gs+LCIfG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gs+LCIfG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC4B8C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 15:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782227193;
	bh=7G8QsvhGYVB9t8CzzH6C7mNN37R3oDt/n0bTHDFfYM0=;
	h=To:Subject:From:Date:From;
	b=gs+LCIfG9MZdgMO/uARiwQyRFXxV/n20PebyE0/oUnWNkBuRhm99PbyTRTHlKutDi
	 hZc7lKa+AgvZNyl6xxczw5tMnJmIo6bAJGzCwb/KF9kwrecXGZAQKLTrbOWQrdN7lc
	 OCgrDtg20Qc50DKLNjqOI0ifQcvg85rwQ6IVWJzamzrH39OeYg/LU8KXoM+JdU23vh
	 yt8BJf2l+f8X9nWXMM24Fb0g5ARXWbEQ5Jqz8CzdcwDtpZINgC9QZSfkACHR1gtPUO
	 H3b8tp3Okm4T9unBS2tl9P6d6A0G/lNaCp3LeJIxVfWFRjnPmszcI9geEobWGyc9Ca
	 Yws+LfOeCLm2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADF83CDB46F
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 15:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178222719370.8188.6669340584833640759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16b07a8c18516459a5513fba6404541c04fc0e9ba7210747178788bc6f101be0
Date: Tue, 23 Jun 2026 15:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782227193
