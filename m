Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 684D823C9
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 03:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719201143; cv=none; b=PawDl9Ww9F8n07uJ1jfDOaxEnKZJuvzlweBccVnclPzUu02CpWvdznuQ3ZwHp7OhOA4q8n1MtxkqeBbb2NWPn9/mY1kCnhmjnHHVjsrzKpRQgFvxFiDVwx0UQ3+mEOcq0I+zBoCqtaxsajFyR334uQKzpFnS7EP9jardi+U5dGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719201143; c=relaxed/simple;
	bh=LNtaF1WF76U1gYELonT1exgm2SyOKGoyl+0JM8yg2TI=;
	h=To:Subject:From:Message-Id:Date; b=hcIorHk1CCiMULd/sOyVy4jvRE+iv3Mq6VKvWQk9jeaZULVWsiSKhxBIujwlEfY+z/Imqb0XSn6AUXTqlZ1E406Zo+XHWZHko/VD09CDTiNGoMlvwfAs8IOt1AnCr58JFU8qusGzH+PXBesJqg2E70ANG1zBYnpRvjnOShQ/EW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IC1tjJFI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IC1tjJFI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0D63C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 03:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719201142;
	bh=LNtaF1WF76U1gYELonT1exgm2SyOKGoyl+0JM8yg2TI=;
	h=To:Subject:From:Date:From;
	b=IC1tjJFIv+VNUymNFnHo0XTP19GqeiYrO6DCQMwAirv1OILytWQ9nCko5B5QPp12g
	 9rS70PwQjDnniRYjXLO0vRg10YBPsbEjs22N17p4RQJwQ8Y/X8h+D1OGyOTnSMVYaZ
	 eGy7u/RQ2ljoK8PACWuC0xGKLV1DT0iasQKLqyH+SxDMaZLnf1gWd7nhvUXNcg8cZy
	 Nbzpuf9V/9khzzd0MX2FhbLdbpWKWwX8IG3Yj0pQfw2d/9fvnO0DN652chcDUkPwAq
	 1+dtQGe5PsP+BNzgTlEU/OmjRsNOVQOYofm3gpG49CDo7RaWNzwNRq0ixJwlMyuZPX
	 fraKWUkBVtfuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC09DC2BD09
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 03:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171920114276.27420.8361067685444549890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58508988e6427c06e4b320f406cebaf801585b39715305051bf96f5d56a44df7
Date: Mon, 24 Jun 2024 03:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719201142
