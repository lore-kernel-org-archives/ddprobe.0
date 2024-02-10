Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30C19168C2
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 06:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707547697; cv=none; b=TGGh4hbD37JDim36mZdZMrcvUwuc3ALIsTolbzeSHFEZ4nf/QkXSM6fAVlRoc+Yl2g4msTty1bYdoIhEiiWT8HG4A3UnWTV7hwr/ssSmLoNCnmJ0WtUlz3Nba4dPlcZ3x4ULjmD2nJqnpz61mCV1sEUrLLLPfHLgpxJmc6fNlMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707547697; c=relaxed/simple;
	bh=wT8KMj+hjKE7P5jRKmEKra9oMvkkZxB8QwcozzwlNhE=;
	h=To:Subject:From:Message-Id:Date; b=FAeSLtk7IP3smb7UloeKC2eJbFvlHxAASZiqljuRmHsoyNrY6CqLieSuboqp7xna3QGFV55Jzi+bkITDVCOCx7MQGNGSoNk8EBES3hpoSlimKidOUdvlFtvvbGZVjUcVLBwOdDEYi5XPq5YoCJbP6T3Q9m0C2uPIEby6CyIRS3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q++2Y+vI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q++2Y+vI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8CF31C433F1
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 06:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707547696;
	bh=wT8KMj+hjKE7P5jRKmEKra9oMvkkZxB8QwcozzwlNhE=;
	h=To:Subject:From:Date:From;
	b=Q++2Y+vI9Ttnp/vderEIWPflzDJiLKGU1pgZirgD/SXIb1LWX+OYyINf9AhFNjT0c
	 2nb40VA11o1ArwjCHO5G3dvEPKi5SJ1DppfJ+d1WvDZxBR/Dninkf0fUSSoiBR/NbY
	 tm4uMb0tNgthMhNQZrzdVEOPrHtaM9n1+pHBVSvLogg2CTGsl9XQ/73a5v2VNZ9BeD
	 piXYlw0LNZkpuMArrGEdujAH6WIWSeYUiP5RBg2tTP7GMdYuI792rBxcOuGco4pPfG
	 13BosBOTVSh82tiigyK2pcX4PaXnYKHeZ9Eoesvwtfk35QNQPnTrpjI/AyfZMTKOtR
	 xiRag1bdrBJtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 71E1AC4829A
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 06:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170754769645.11265.10805382379156491975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9edec7d8c32a9294e38a18aba81d9f2b9fdc2e075fbfbeb0dff4b0d9eba3d262
Date: Sat, 10 Feb 2024 06:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707547696
