Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D7A18BE2
	for <ddprobe@lists.linux.dev>; Sun, 11 Feb 2024 06:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707632897; cv=none; b=devAILAJqk0bGZig3Qm3SFwf5D+czaaQ7LZXOsMsnxMa30Uhu+enAhCxfecBXJF71xoOZEhxu0Ydujb11uKUrFDxA+76SiblHGyWwz+DFqH3qZX1ccnto9tHCAz6yLiBRof3u/Ied0vw6lIQbWf3jBfQWE2ehl4J5zvj487BHkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707632897; c=relaxed/simple;
	bh=OASz5JC6Gc8iS03xpNohrTQvdA7ScAVFUhK32opEUe8=;
	h=To:Subject:From:Message-Id:Date; b=S4N3nfTsmKl0AVaeb+TYUSQHuG13qqauMasULtF4aO2seFK5qfPL8RJYi60lTK1edUxbi/MxUSR7QaZ7SHH5/KIffKrIL2Wj2u/KZIpqbB0ApPWqGKIe9PAEtHdFPGshlYXAfzv+5x195KcjTfA4sedDYhxZ+3VRNRZferSza3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hp28C8KB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hp28C8KB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 92B19C433C7
	for <ddprobe@lists.linux.dev>; Sun, 11 Feb 2024 06:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707632896;
	bh=OASz5JC6Gc8iS03xpNohrTQvdA7ScAVFUhK32opEUe8=;
	h=To:Subject:From:Date:From;
	b=Hp28C8KBf4lyLiFd3jxhjcLqOcESPdKiwPaVCIq2KH/YQkHC/znuzT5f7JBgtiQt9
	 kA7FA+L5QnDlFl7qPIFYP2e0LCfxKo6IPBrJ9R9tBESXSj0Atl+iekXY6dLhVADtNC
	 ttCPmLcEmH52P4syXSkhYyrOhjXwv4QvLHiCECo+ggYwK7gVEuePgEOtPuKiCnkyvS
	 CRjZIshmMrumF4YRGdGs4PwKX5v6kx5sJAHAleQ13LzlTIVEj7hewhoZFrU0XFhKxY
	 URp4f3eaTVQDLJTE3hgYgErr+VGPTeTDVpY4No76Cehsqgoqqk4zY/VAfSq5necrAf
	 +x++E/kScxz0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70CF4C4829B
	for <ddprobe@lists.linux.dev>; Sun, 11 Feb 2024 06:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170763289642.17322.2656689003496497003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6677f43dbd1cf11edec1c125f8b0070003909f0a422f6077c086c349f671a066
Date: Sun, 11 Feb 2024 06:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707632896
