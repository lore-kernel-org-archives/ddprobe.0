Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A9213806B8
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 15:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771946694; cv=none; b=h0cQ+zQc9kQclFwlBExcrfuZIJTesVOwxwUztq/KWOsF6njjJ1UWkx5gB88V1VgbmaEmJXICrhjbcLf2WeVFobrSLTdLE3PmIPyCCoELGk4KdXDzz1i9DjNrBuxwAMUoe2YqCmAKou6LirAVH4TxX//KlQnycAswc5vRUM5uYp4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771946694; c=relaxed/simple;
	bh=c665umhP2Mw48BW/W0sZ0KDdQJyHY2Yik6mQ/xTsTCc=;
	h=To:Subject:From:Message-Id:Date; b=O9HoyZP4oZnlw5ZChHW2J6ZSKeChP5VqSRXJkCi+c2PrFYETJZPoSMws+ZR0B+OxiAeo/sGasaQ0bjuuH1iF1liIiJw9GFSobNAfhGuLnOogUgOwIkYGPqmwUTT5Mq8W0m8dSHvZwh4JZsQQ5r9hIB8TaJeIs+x3fKDsoX9FNIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PD/5bxwP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PD/5bxwP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4CA7C116D0
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 15:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771946693;
	bh=c665umhP2Mw48BW/W0sZ0KDdQJyHY2Yik6mQ/xTsTCc=;
	h=To:Subject:From:Date:From;
	b=PD/5bxwPAJLn5hmu9ynCcKueg0RMTWYmXonNuSxtTs/SUFQxHnh4t1D7ta6+FxCeG
	 GuVF9+Rbe+MGdWkwEBlxK7feVgvKTzdDZRs0IVRB/DFFpdc29D9vGVGJNhY6JTI7QB
	 0aXGa+Mqvbat24GZyKFFH1mWUFcBv+Htei3Qm2/SwDg+UJlvIKcDYSJ1EO5KYTwz2i
	 +yQb+sEvm0xs6J94y2St5EFhY01jz8a11XO/5Gq0zGl+rIZSEe1ohbp0+XqhBYG28H
	 t4lIV9tZj/hS8V2hB3B9bdFM3x1HQJ9X34tvouszs2Y5XNDfR7UjhboJnL43yyvUMz
	 QkfGuljjNKYVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 955F5F3C991
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 15:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177194669359.25758.18029598498866377938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdd4480c8877f3cb824d9dfb50864bb16305a8485e28c1d507fb8184725b42f1
Date: Tue, 24 Feb 2026 15:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771946693
