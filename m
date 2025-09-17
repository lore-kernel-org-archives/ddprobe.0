Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E4D62FB085
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758127794; cv=none; b=I4E5KzZfQEdtgobxoUFsqEeFTMpH//IAw83rzj/fYD0n4eUDlKqofOAilPPd+m2p0ZgrYpwuTsNa2ECQAhEZ1OCV6Tv0ICaCK9ziKLZsWDdErZDNVcLvu+0uxZQJG3MLQ1RZEEKRmALuuBRisvFgjS4lnAfSCIYcDxGYjHtWQdM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758127794; c=relaxed/simple;
	bh=KOqysJUnwpC6Lkt+8lpLFktaFEQOPwxZibH8pkB4YRM=;
	h=To:Subject:From:Message-Id:Date; b=N49zECmXQLWkac88ZmlnAKs7y8biI7XT/z6N+GkShqbaDH6bQN3BQLtUeKMBmCwcNyJGJmzkA87F6Ii/0BQ/nbW+Vp5XrHB9rZMwreEsbCGoOU6Z08DVDqxA4Su2vJqW9kPZirWLIZEsRGWhVq0ZYHzBsG3VHRoAcrM02rRPPlg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GPvn/xZS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GPvn/xZS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A64F2C4CEF9
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758127793;
	bh=KOqysJUnwpC6Lkt+8lpLFktaFEQOPwxZibH8pkB4YRM=;
	h=To:Subject:From:Date:From;
	b=GPvn/xZSUaSEbGmYOo5qnbFqp0DmXTxLhL41ccXJqVUVBF5e/KJ2SoR618DpC1gJ/
	 TXOCrY3BnZUil5+z6avevEEB2ghRUqysdvEx19pb4HnJcmR5vly8nQlkNsgUw2VqGb
	 k+ma630TC8y2pWtLHV23Fs8OZqlbjHTlHCEof9Qkyh8/bRYZ1Nb+GcLNRG0s5q+1dH
	 dJG4jLvv/bXFc55Ox8GXCQpo1AnlGtoWXuKSAae/Roo06tT4W3FM27qug67qS3lOtF
	 Nc33eAhXbc9LOj1uSnOqQ3xd7U4gXzbFma7FI67eSXs1NI89R+uN10W2VtQON9FlqN
	 BVP+uOxckFs2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97A46CAC5A0
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175812779361.10068.10786919935181087378.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35ea5b8719ead2ec1f9992b5b05341578d1dc828ffadfc717426f88a1875f99e
Date: Wed, 17 Sep 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758127793
