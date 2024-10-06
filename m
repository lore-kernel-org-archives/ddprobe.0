Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34DB8155336
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 19:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728243954; cv=none; b=agEQsocGvptX8gn1MgojvlPS+uuP23QBUzaZIT6fNo/Tx0uxwUs2J0aQ7TYrUqKOS9Ni33grtOgvyrOWPi+DpweHk5ws6tOX2tzySYZTjKaR+FNgASCURqbzWF4UBqRn5lLhKy7+YcCoJty/SbkyMcY43UgM8bILqYkR4F+J7CM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728243954; c=relaxed/simple;
	bh=9MoiJ6TevZfpSsqS6tmpop2XRP4PeYyH4oD/Na+37aI=;
	h=To:Subject:From:Message-Id:Date; b=MRcX2GlDtNrDhhLJ3SF+fDUuR9MJTsP0MvnL4LoPEzMFgXqeJ5TXADaIDGeiom8HdRfB/EzwZyGA4ZCGfzUpeIruO1Hzd/FQVr1GVj4bwckosbeMwcJviZDFSPXZf+RzysnFuSB1P6lWx258oYoHjOiJ9R/TUM6ax+og7iqOHDk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BHXrPPKO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BHXrPPKO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7085C4CEC5
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 19:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728243953;
	bh=9MoiJ6TevZfpSsqS6tmpop2XRP4PeYyH4oD/Na+37aI=;
	h=To:Subject:From:Date:From;
	b=BHXrPPKO9/N+Dm6ckT5xumb02Aqbaf7Me8AyGn9Icd1JRBnKn1O5SwSexqtgZGaJr
	 /amS9iLv6PQEEOqeSILjHm+0GF5L+1AjsRBsyCHOiA6pBSbnwZh9jii6ZJ4ntERHvY
	 nU9kEjXSxWAuy3XHUDvaSoGu8FdBGkbn7CI+iMKDTAiWiuZhHH6kpfE+3yqAt5/R2k
	 /J/o2J9qlhTWwgiG+GlDOt2vO5RP8GuPlWcpRkrOF8lU8qGWyNMpaVY/xgNq3MhOhG
	 bvStTxiOTjMLz/4IkWGEg5ij+wbtK70OFJFeeNg9/xu9CCkgGMbAQqtCMn9OWt8PQC
	 UHiLmlIlG1T9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917F4CFB43F
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 19:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172824395358.31805.2376408594186580354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 527ff6760e71dc2b920627d15558ab63d77c2ce2c8799186c69ecedb3ab28275
Date: Sun, 06 Oct 2024 19:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728243953
