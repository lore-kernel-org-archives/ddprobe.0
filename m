Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EB972773F9
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 04:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770267234; cv=none; b=guuLCjUVN7TRdnrcahjsPDOXxNVhvP+OH9ML1XKBDcJOWgN8fRxbD3EdkKu5+S+xk1Am8hpwaTkU9R3oRaCiIWZF9ZuGRtj5SQ6lzzDS3pbBlhymo1ziqWftfXNQrP+3BKahWgwPDfTLAYH2g5TvOKbWNaeoqRKpNV99HxZ/Rbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770267234; c=relaxed/simple;
	bh=rvhrKQySDRL/bhoeRqYTfPsMiEpbKYDR5+uuL2YOdmA=;
	h=To:Subject:From:Message-Id:Date; b=hCpf8xZlaVD4AfjqiTntVFUDCBKerQAEbTwoQijF0I5c/+3+0ng/EAhpqvh2ijbEtN28pNQbogP3Qf6ueBaFerfIi4sxVe4Ihc0meUt/E+6fOhJzgCPSUaFERu9UGGNE3OGUk2xOMxakNwQdR2f0Uu4F21GDbdYRg2LqGoD1ukI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HwEVrg8o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HwEVrg8o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B03B7C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 04:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770267233;
	bh=rvhrKQySDRL/bhoeRqYTfPsMiEpbKYDR5+uuL2YOdmA=;
	h=To:Subject:From:Date:From;
	b=HwEVrg8ouAxVcc9JZPoZRQznMexHJAGgZu1BYfbSmhMzHYYcYZsq/z9VS7fFssppA
	 dOvHfH5y7mFW15j8j16Crw2dM3jOr9bfAK+95Bst+XqBWnxB/r9ugR3H5lPRgChcJ9
	 6oJZboG8bpkKCMv8SUggib24/DUexyzcP6c31OFZ7Sb4H7ztMIuavzNsPm398pNgkJ
	 oBqjrvH33Pd9kHX228TUDJAhKWx2B6IfVuTqiOSeQqZehO/drNWnArHXewOTRITQtG
	 fgWe4Pzz/TnY4qaN676gacGelm4IFTnNI0DR4N3VlAMbDK4wE4u845mnL/VhMAhfYp
	 VmACEfas05qiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A874EA7968
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 04:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177026723361.19950.8335999927618435689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 819f455ed9df1cf590df85a26d8bf41f5739f700a11bd7b960fbd0a6951d332d
Date: Thu, 05 Feb 2026 04:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770267233
