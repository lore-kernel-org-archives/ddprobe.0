Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AE5131F99E
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 20:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783716514; cv=none; b=ovVWA2nSmbbyvZRS6pxh+aVX2qPlrh95UY06bB5ySWRbFOIFdxv5KFaoGEsLQMbNXiUJQkosNEj5d9WvoJq/4F5gZEJ+mUFCVs4nAJqc36JwjY8h3Bcp9SZ1khitPLzBnc2DizBFSD++DJKltlFY9BfbOzP1+NCXgsjFZNrlYzg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783716514; c=relaxed/simple;
	bh=sJP+hK0WO6TJ0Gw0HghpzmSiDPllb/NmNqxaD3ejMgs=;
	h=To:Subject:From:Message-Id:Date; b=E3thNhQmhanA3w5pDJw763tuhQCjKMw71xZUJbxwPlsk3kI6jOlMh1q3FsngYRssiMfFnmRM1S3Y4hJEn+4LOJ6lFc8Q51rNWwSnXaaCDUcFPkEPVYxNCenvkveos4P6XeJDKx9O86Se5LoZy8wBf279+af3mhnIaikAuQHtLpg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MoYkjlUD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MoYkjlUD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D157AC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 20:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783716513;
	bh=sJP+hK0WO6TJ0Gw0HghpzmSiDPllb/NmNqxaD3ejMgs=;
	h=To:Subject:From:Date:From;
	b=MoYkjlUDUhA893Fv3x2YND6dHYczE+dNtnt0lKEafLpRkrqfNq+0cfzIvkhJM4kGs
	 AX2fnc+FdvFlXmWxCXCFzULNAAr92ZZQ3MUYqA04pnvJ/DHnT9itYJcZkzVVcBuG2h
	 lbyIy057FUxht/ZDwDxwkKGKmCtMLEj54Nf5kcoElRUt3X/Oqe4vTdgowPZoor8AE4
	 pi2gdfceXkt8yLZDVeMbuDVxANSCcLmo/8HV66VyW5o/GlNmT1TFhmVqkyhFmOdzOh
	 0H3e0dWCR9crxuojhmc0f8/HZAKpnVxDg/4w49TLAD+RY8B/Vt5HsSjrLXZaNr9TQX
	 ++vsEAQUPezuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE106C43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 20:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178371651368.19412.2883832270057386298.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4a0f5e6c7618675bd88afb1fb2f869c9a2b48783e3d4e913496edf1970f20d9
Date: Fri, 10 Jul 2026 20:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783716513
