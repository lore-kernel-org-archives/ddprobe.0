Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B9DA17C7C
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 15:45:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720021523; cv=none; b=ncxLCa3Kvw6ttzGNemHW1nrR90He6bp2Im0pJQkEtov02pcOnP1wY15YcUEiEesTW8zSdjGBcWD4aXxZexlxTNhmfCfHR7tejZhUfHBVPT2Y2rOPE4MHA2jgngYkAM1vDSrvE1VA9bs2hwqkewM6PEiTNbbaXWDGopsLRumUFUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720021523; c=relaxed/simple;
	bh=lmx/Z+zQI9Z0mbcyQLMfYhKoXfIJtrtDpEl0rsoshwE=;
	h=To:Subject:From:Message-Id:Date; b=NIulk7NVQ040vy7S3rTk8916NG/C7MROEl9iHXIAXQWc5QcovabHR/I4y4PlW+eAKfnKggl1CEZf3egADMqEOpt8ZM3ld+Vb8YprOSP/+MBeNZMAmpZ+Y3eagDATK/LPuK2WnXgXT5grPMtVIbAaYy3TdXjke7Bva2vyrLR44Y8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=szPdFxJZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="szPdFxJZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2676C2BD10
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 15:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720021522;
	bh=lmx/Z+zQI9Z0mbcyQLMfYhKoXfIJtrtDpEl0rsoshwE=;
	h=To:Subject:From:Date:From;
	b=szPdFxJZJEFOYdBCendegSawGafECwqSXbyD/MPsp5/mj8EcGmedq/CZ/2qslwDZt
	 fG7GGY5NXO5Is09PQUA1qsXMjX1ZTeJXZ8JMhhKNgkFAGS9qRKzKmUjhgN6fUvNAKS
	 l5L9Xg3Sm5nAt108XoxwtqbZUUJIS8qRzPTNDiczygQKyvoCi7fKTzgzVmRjj/KxIK
	 td3gcOANduFDN5aoZqM9WYqyE8OhX6DAVHZkpy9JfxMxMCnhE5e7xwOW+NjctJOOSy
	 hV0FON49INlpBtQBYlChmQFZYLvKAeJuSL5jhJ7ZyyxCNY9ZCf7GwkXO+WLR8nSzMM
	 xYTrAtBJUFe1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C244FC2BD09
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 15:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172002152278.2897.9259504982756173771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82fc080bbace593f13a05cbc8c8c09e7f1d7bfa881cd158a15176ba4b2fc709b
Date: Wed, 03 Jul 2024 15:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720021522
