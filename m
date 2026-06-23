Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AF9C311C38
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 07:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782200794; cv=none; b=mRYe6Amcu8nqELV5tqdlnlyI75RqijZtiYIkHmT4uzKHDobiXF5HDch9CaZb5iwYxLGBsCGfNJB3RLg5au6cO0ru2LVuK4V4hLa7vysy34Y2G4xSowkJR59kuHANbtC+CcGm39Exy2YFxMiqb/C5lm6YRC4JTC8AWEn1KtMJMSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782200794; c=relaxed/simple;
	bh=kLkaLLSs/xqhKeOcVMGdiPnNinBOsUYCN/pXZ+JtSjE=;
	h=To:Subject:From:Message-Id:Date; b=eSYfq16QjONkwJiApw6THTCHi0OHx+JPCJNuvHKx05gs6RQ/fc46jJZAiJIbiyjE1i9YpOxLHFqclsefCfuLpjQggs0J950dbfrV9yaYOOakgLqWeqE1IvNFRAoy/97SJ+WUTezA8z3UGKppWCM/0pdXzxtgJZ7TgQAyLwMfVlE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PYLNkbdC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PYLNkbdC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6826C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 07:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782200793;
	bh=kLkaLLSs/xqhKeOcVMGdiPnNinBOsUYCN/pXZ+JtSjE=;
	h=To:Subject:From:Date:From;
	b=PYLNkbdCcljYs4BaDN7TDs9Rnc63HEjv2UtWVTRaBYC9JFe72RPo2wwyOXxylfEpm
	 sjCEdRGmKjM/ntuu8Zx0L+lSupD+Zjyc5w/Mfrl04o7rYtnkU1wClJdfhsm5wizQsn
	 lhSphDogZl/e6jKQ92vS09+Fjl/QPr8GIGJ/Sq8ucCIPYSqL/NxvxlT9HuvVwZCJTo
	 pl9K7cq4Gu4Nb+ILn09KVgoJJkUH0Qklzl+6IQfIZ+YD4G7ynAMJA8ZmtaFXwqWiR9
	 g11cMR7BL1g9aa8m5+2ndsa4o+YuZ9KK+8z+obPHRaZfB2heARyF9UGUwI3xiYqetr
	 PS9yxq33lGAEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9727CDB471
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 07:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178220079368.12248.11934475443392837986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe5e4f1468b085d6b5e435a85f9c4bdc7a8c900ec130af573c689b7dfabe7b5d
Date: Tue, 23 Jun 2026 07:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782200793
