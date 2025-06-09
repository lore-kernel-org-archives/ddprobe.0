Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24A7D202F70
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749503994; cv=none; b=GzgyHhchKvphWKGZJId2zhT/orVhKFnsj7dpbVDgkIsj30doFudAOKr1bZGGhyjJNlHAW8mz74NBl/XvD1IFnoydVhGURxwofnhRfbkfKPvBgNSylSsh8O7eJnFCUhPdSq7E7KmpbsvbtOxYydTUSRWTdSFfxZJOm/ZC0TkynKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749503994; c=relaxed/simple;
	bh=rAoLWlgNptdR/qazujj1OlZeWY80ty5+z1IA4ebUgAg=;
	h=To:Subject:From:Message-Id:Date; b=IqKXTq1YaREGZMpeSju49kNdCuANm+67COW79NnnK5Rlp1J9nNGFi4fzRaRqoBSE99eYTaoGHlpQdZFtpuy1ZsQFlLTlwtwKvWUbM5MRoZTpSUnA4vLh9O785qjQj6/7F52QRMbA5GMbkNJDkOl3VVLzaGmP8zyeTkGXFI/FkqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mv9tKhiC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mv9tKhiC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7EB7C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749503993;
	bh=rAoLWlgNptdR/qazujj1OlZeWY80ty5+z1IA4ebUgAg=;
	h=To:Subject:From:Date:From;
	b=Mv9tKhiCKVp0PFZnWX8Gktqp5GuGn0YVBLgYNBcFETiwTjdbrv6RnbOsHEzPN4JC5
	 fE8yUyKn7IniU0GnrndAN9EBdTrHs35JNr2cVFI9Gt0lHm0k0UZEWDJMYc38FLxcNK
	 ufq5TQpHpou//f4NW8fdgMbL4uSLpb8Q+UyEklBEPw/2tMGMfCnAml+eQQoEVBf+Ke
	 M5+bTVYvnqdui+HbnSeuRJw+4qFPTlosJLtmPKZlXMYXnnZVOYaEYCEymCxFZiY+e+
	 Tm20R3kLGCFyS6ySXZF7zpygTWOYH3orFzierQwmVCmNvGUc1hzHrXX+g2U7bteVml
	 IAdVe2B+WmS4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93673C5B552
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174950399358.11218.3429525085809690741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8423ddb4f874cb723c15b5971ed071f79b67c6a2e8a2ab02e7ba7d723c3b4a4c
Date: Mon, 09 Jun 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749503993
