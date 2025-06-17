Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D05D715D1
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750118993; cv=none; b=sCGv/58MIyM1zzEjb870aAXG6Cbuv/9NFd1fXJZyUKNTY5fHucFhMWankdx+6erlHJZ7L1KAPZnWJvwpwq0ZzBGPsJ+yw8p8tpCKutMbHpK+0+7JSxiPUyd3PEM3xoMS5DgmhOlVdVFJ2RC8OkJcFZd8OEOCXRdphm5DDuSkCNs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750118993; c=relaxed/simple;
	bh=sm8xOwnc/Bju4rblx5g8WjoBDFYnAvE2P21DZRBflhY=;
	h=To:Subject:From:Message-Id:Date; b=YjkfaP2p+nn7hr9sU7OnmmXXYDeVDkehMFn2+D9qUj7CVTTn3q/mwTh7+PWh8mL6Xg4qjgDrUFpf3XrPvvK2Csd43qJmsh8k4qbZISXi5933MScnjJaKtUYFUBNU57GtuYV0q71MQLUvkjVYlhjPRpVymLBRf70pTMsxMFeZrzk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G0Z718Xg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G0Z718Xg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A449CC4CEEA
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750118993;
	bh=sm8xOwnc/Bju4rblx5g8WjoBDFYnAvE2P21DZRBflhY=;
	h=To:Subject:From:Date:From;
	b=G0Z718XgnI5jsoAUKAw6MRkfJdmgaSTh9ltmQVwTh00ANCXT0eQCrFs3gxgMcW9Ju
	 3YDBmYc+zvMqrRjd0D6q/MeMdbk7QgzpF8EN6Wc4D0JWk4FBBLEeZSrn1lgA3txj57
	 51eKwPwaq8W0103UFyrUle5E/gr9Tta8cP8MQhSf8Es5PBl8Sfcn4pkeIsOdRSnnRj
	 KnkKbChmqHQ7TiUiho4KlDB+9zMH+ScNYKSeOFcSlHckEcJ7W76s1NDjF1cjGYHdCU
	 FyGy44TxxMW3goifQknrkqWMJ/72isnVrjlIHy4m9wAmN2X2dPQ3qu+pCfVlmPovjA
	 pm4AqTWil3bFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6ACC71159
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175011899357.13565.14370176765749470149.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3db1b7674455672e6b93c99af484d6dc41d97e72f355a9285bd8b7ef55cdff62
Date: Tue, 17 Jun 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750118993
