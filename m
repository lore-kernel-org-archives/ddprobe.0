Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00151382F06
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 08:54:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774256095; cv=none; b=O4UKhFlqG0gIGaoMe1EmMp7akcwj/+TyQ061rlxB/3ESA0nQQzE16hYW5MShQZHAzSYgZSHwrzjaIRHgqw9Ys8E30K6Jr0hZJKlQGc1rSZSz0ZWmiLuc+/5k+Bi4Q6W82WfEY7BOm47FQ03/xSRnw1NdIQjdi9PTI8E7UiOxXPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774256095; c=relaxed/simple;
	bh=Iba/vSmc90UpJI/7IDcCLl0P+ubyu0sUfo0OKYGQYkw=;
	h=To:Subject:From:Message-Id:Date; b=KniQK+99fjcYZF9DjCpeaOgXiXA4c5G1H3OtM1zaBal+UZ6GH9qc64qGp4Zs8znYPZklh6enXbQ3S2p0mumh0X/3H5/N6850j0e0r5Do42JiOdv6B6eivhFmanhsVCzC7fFzpbQ//DKzPqM1lfmixfabncQ+IbljoLVS/P65OOY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AF+BlzQT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AF+BlzQT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A88BCC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 08:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774256094;
	bh=Iba/vSmc90UpJI/7IDcCLl0P+ubyu0sUfo0OKYGQYkw=;
	h=To:Subject:From:Date:From;
	b=AF+BlzQTEjBacYVfs1ui1Ks2Ot6gPd63V4fIHexSnVXbfrPyr1xDarDmSkNKpuEk3
	 QFSN6UFu7mF7DqXNGLhAqxVnPB/Us++2CLB0IXv3+l2Bd+tXM2rTAiqiYkdptiHCGa
	 OBmVFQMElZWvOzWSNWlKOKd7ycRFni9daj8qJp8Qz3iYUZaxPqzjBIIafjakx+qk9b
	 lSbtzPD4aRhhpjfMlmXuN5uMU2HutREU7RK7XW6q9UvptwRhPNRs79YG6dIPp06iOL
	 L4/wlFPmuKidCs7a5YtfH32/JMRIpcA7/YqZ0KpCps44XkQGpfQMfK3FCHIOS0hUw8
	 jZOxltrG+PVYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 956A1EC01A9
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 08:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177425609360.30429.15471147284117205258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0733275e89eb616528a012a45f51178a3dae4b725ed6a42adc90190a9d3c6a26
Date: Mon, 23 Mar 2026 08:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774256093
