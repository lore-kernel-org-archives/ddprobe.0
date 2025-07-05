Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 324FB40856
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751687394; cv=none; b=d+JFzCmtQLClBdDZh3s7aXMQLwR3Rdt3YhrbTxKxNvUHc9dPIHNZS89DUlu7KNgUUqUi1KwAfiSKVO9x34F3sGPaeYeTdhMit5ZpYpLDcJ9kJfUP/1SgRj7VUdmCQm9WUIUeCOAl5JPjuyLmfHscBK4z8PLAytpm7zwJL0T2CyU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751687394; c=relaxed/simple;
	bh=u7PKpL4iC4QRVhfwweHGwX9jrV7KpT75rW0JxD4IUgI=;
	h=To:Subject:From:Message-Id:Date; b=FsauThzbmv8wO8OlPgV063eT9NVX2n4LB8e2CaRWADAJheP3PKU1sMLci4YGgDzOMEn1DOGdDU7jTM0ceQ71qbtO+2L15SciN1Hr6z75aSwDJXzlcouv5Hj3MkVB0rZYRwJjVyBOlJCi/YnFR/sCG4sQR/Mp7M/rfvviD+ltGVE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KludTBNM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KludTBNM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A562BC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751687393;
	bh=u7PKpL4iC4QRVhfwweHGwX9jrV7KpT75rW0JxD4IUgI=;
	h=To:Subject:From:Date:From;
	b=KludTBNMoo65p5v5gkAJstfsF7UkJMio8wMBT2CV+GOqpcJk1PY9HHcPP+5a+kh7/
	 ZIj1etUh4NqHPp7i26893QbXHgHn9OIxD+9sAs2rET6f9RZ9pKQ7CmYPeoixOF9Mbr
	 9dBQ/vOLIXzF/KRaC+oNrUo1PTXXaC7RmM3cpIVFDByjMVbtVSoCYQ5VnVAS/1EIca
	 iS9ZzyWDtTlHOBl/4HnuMqNbm7bfrRIYswfGSgFNVrfvVzQOYKd/KgCQmk3DdbRle1
	 cYQ7qwSxxHhY8WbXBD8bnDoeU2buI3H9kfgGuBH4LaFtx/Od9OAEjT9DAH9p9LWE1M
	 ONDrLSFcvbNkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92209C8303C
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175168739357.10162.296367786466081445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 767a1815b3a33439570e989202df20e1437f5c4bad1112a508a3e3ef3e34c9e8
Date: Sat, 05 Jul 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751687393
