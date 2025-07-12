Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3587A222574
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752326394; cv=none; b=YpCzKKxwTlQPw6H9GLYpNem7hU8z2F1iWto1rTHXPQ0ne5P9bfxphXb59QhcjaCCvcaIS6Id+TcyEsoe8GLxY5aZfj2atbgm1RXypt+6XC74eXeXE3oaDJPUkR+Lp8BEfatvzJmXZvEPB1s18xgemgmScvmZdKAiOBjFWEQInXY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752326394; c=relaxed/simple;
	bh=6GLrDq2A7I5dEvZjMfCZqYoYZeRzH8yC36uTLQFHgaI=;
	h=To:Subject:From:Message-Id:Date; b=pgjGyRosEjpIgYbbeUR8Ix+RX6JFvaRdAC3mSvRHrEVDyHSgxizrq1c+R0LgYikxz+XGEY/agGu4qsjpKPx30Xv/OrdoxDbfz3ZF0cAZEfbrakwSeT5MUBbUEnDOK7h/UsSCxxdzoSHFgJcx+PEA1N9AMeim7WKVqNjhUJomPOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R6pegGgT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R6pegGgT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0AECC4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752326393;
	bh=6GLrDq2A7I5dEvZjMfCZqYoYZeRzH8yC36uTLQFHgaI=;
	h=To:Subject:From:Date:From;
	b=R6pegGgT6xHestH014mq62b2lzlyIjFFPElQ1/CvPlFeqbL/ppLDZdbEZ1R9EEHbs
	 pAn2d/Z08z9TnvG82bMK1p7hH4XX2flmJmQS0yIDlrmpSgi6KZnhjedLkIz4Ye/Ea+
	 h/XVcW3ccEOD7hgS4tYKf9vI1JwjdCygpDFsvm3AxKNsTQDY42z7aT41S7DAgaWd9Z
	 TLy+a/rNhDk5PuyrV4FQT7SyfsgJgsyoWSWgYxLHBHxvhZbhQizUDXkXmLsgmplIYi
	 GVzPR4YQ7upzAKOQUTtuzuM5oKECFLQNxFHsV6U1HLoztn96GYPlkkq4YjWJ5/PbkR
	 PWg0WwJErUCQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914E3C83F10
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175232639357.19938.17675166782667443770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60170cb0b46aecc13f52e780fd37621b4867c898c33b4ef7006c066e42241359
Date: Sat, 12 Jul 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752326393
