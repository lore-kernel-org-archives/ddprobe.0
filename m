Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47577386431
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 06:44:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772520294; cv=none; b=hp/Jom4Vsg5DAJKYFwWL1xrznONxXqRkLsZ4P/f+Oy+wIRbaletogAuQskxqY4tY5QOaMFJxJiYXGZEzMKUoWyCNKxSk8SWUGofpLXGrL0Q8N+HD6LZcLBk/24to84bAwp4aJvhQtcQTVH/PJuCmgnpbrCDB47MwTRhkSe51HSY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772520294; c=relaxed/simple;
	bh=v708qYDNu5f9IbnaXUwFuKKTbOrsnwIrhlNlD8yz+WE=;
	h=To:Subject:From:Message-Id:Date; b=VLcka4l4dj+ogaTDL7XqXHQTPXIjaqdwVoHfudf8oYZcUX/VRCiwM4fXdxZureqpSgQRsOHWWSgVFg6twJpbEz7Pb7fSIF9GiFwMVYhzAfVGONhc+OdXDTlBKw0oocOoa8FOqajLVbT/dofNH3BqEhKZ98XR1jZHbRm/D2NIzZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qsQB7p0K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qsQB7p0K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB696C116C6
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 06:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772520293;
	bh=v708qYDNu5f9IbnaXUwFuKKTbOrsnwIrhlNlD8yz+WE=;
	h=To:Subject:From:Date:From;
	b=qsQB7p0KO5v9v6RM/CxGxGXr1+Kv/lA0dWgLfudpbsAgWvIe7T0xNsklD0Eb7uKUe
	 EqUeY9RacfUT9XWOQVXfyIyWBDyfj++SVBWTSi+b/J1F2ZmHmce9PVFZHr24F1EFha
	 LEHnpG8eBQTf4I1llYvj8t1UjGnPi+2gRNskXh7jPTArF7P5CLORUWGnlF6TkbBJTo
	 KngKghpjIFAJaOiwprBwe/UQRM2BExBklfXy15YKZ37vymxIY6xvLpf4GV7obFc7rb
	 fVYFv3KIwxCPW6mPoNWEgB4PqxGajentSnRU3mT0a3W6n/IY814jcXWobg+jhJV3x4
	 IIhPucpTrI71A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DFABE67A6B
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 06:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177252029363.10141.7216380689981881859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62cd68c80559960b82ed6a7d2a0f65bb3e6435249893f2839952a4b7121e28ae
Date: Tue, 03 Mar 2026 06:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772520293
