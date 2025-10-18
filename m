Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D0441E47A5
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760812794; cv=none; b=igZjQU1+Kmcm/lsTFYMhMdy/rcl/ZMoeOaVPFgd37KbgKtzjCb0dOdCIlVWDYo3/BrRtJS5jDRpubvgsAY8z6RhgNQve3RIuVTD1f6ZgdtauoxPGOV66aC+0bg4HE0wE/UcCyNs71QEiZaTo7yLqKLh3S+h0JfirWTXWwu9P80w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760812794; c=relaxed/simple;
	bh=aXRK7zG+4sr6jquv01MKYqJgE7fOrUMbXekRIUBfAxg=;
	h=To:Subject:From:Message-Id:Date; b=b97DQav8vQgtsKDqkHv1WpMaphlr+AgeMwHBeLDM09MToKzkeo+0PVZ7ZlItyhRtgPw64yIifrl3C9L8NrDnPi/9J9zJsO4OyvuN3/PxzPe6A1yx/mrRv5EPlLGCkV1We7YEKnRxnEUTryeMXhKqPdxxpOQJuhrczfckl0AUoVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ML5/EKJ5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ML5/EKJ5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A444AC4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760812793;
	bh=aXRK7zG+4sr6jquv01MKYqJgE7fOrUMbXekRIUBfAxg=;
	h=To:Subject:From:Date:From;
	b=ML5/EKJ5QhtfaIeQ+ok9FerDE0r/G9R3yTMpHiq91UILZtXTxq8Si1zzeosMAqa+O
	 uy7V/iJK48fbw4T1XWVKBlZjDCxJiyuYbYQXu/ZzVORDlxGl4Ge9pV8hAINnNdWc6R
	 CaAGUeIO4lQ4Xc1dLAxLeA3I+XUtmWWcKEl2qQrOmypEhsLr3Hl/LOB/qnlPK13vRk
	 M2tTlAoe7QHC6aD3E9fs/qAuuAJBHBfINMH+wRM2k3tkCtiv0MVXB5pGYAya4OHhgS
	 aeK9Ds3X9TUsycNABH2Np5hBZUATRZPSA6fSaaa21XMRatyq3gmT0V7jRiqJGwIaS1
	 vGC+6L9fLQrGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E3FCCD193
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176081279358.7501.18062700608230459957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e9c8d216c5c5c2958abe5916d01562a02b46c206a5fdd8d287282f11ad82a04
Date: Sat, 18 Oct 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760812793
