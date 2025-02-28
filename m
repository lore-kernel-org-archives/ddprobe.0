Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B5A81EF37B
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 15:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740755934; cv=none; b=H78PG8DVTB3eQGKKHQRWCHgbZC9v6OYdacp3Jc//Ije2ssRrVcyDkDN/1fB4SXUcPC1woMvM8lI1mgp6k2TQirXdBD9SBuhbR+cvOixOIlAZWNJ7SmAf7Zf66S9S6fYS61YJYdYP89Db0fIvdhjqZyiF1qMhWFgnsHHsDMVeo28=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740755934; c=relaxed/simple;
	bh=FK9BDo69/Xt7wAr8I+nleGqQtiVQYAp+/Fauhc61jDs=;
	h=To:Subject:From:Message-Id:Date; b=IDrjGybqgepy3caSXlDa28r9bYlg071gLVB4rNppbFzbpc7Qm4kU8BRJFCsbD9ClZ8wyDguMBTlIP9YCVQtdPOhz8JfCUcDAYXy4MHVfcNz2a2lANiq+ONXTxHrq8Hn4v6chyLX57BdFBDDwbtWE50hOd2wFpp2qOMhRpnvfBsQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kvdrameG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kvdrameG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E70C4CED6
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 15:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740755933;
	bh=FK9BDo69/Xt7wAr8I+nleGqQtiVQYAp+/Fauhc61jDs=;
	h=To:Subject:From:Date:From;
	b=kvdrameG+vIhrJ5oWYwKGAJqQojgr1AbPMpfguYwrhaWtpvSZxcfjx7k5tS/eWqQB
	 G479Vk743//PY+DY60mKSOarmfTHKpUUEilFANla7zM0S59UBA19srPG34OQtl+tkI
	 s/9b3gZiisksUBS2jMb1Tq+izJpCEPID3Bawt1RydJDZq3lcNSfaTeVmGQb1NzYdAm
	 xd4zYJ2gIglFUlTlviX7y89bqxy8boSiRI2zwimakjWL90v4BH3+5eQTnRT3kHtpW3
	 9Y4Dbf9hXDtLM/ZzrFQq2val0RVNoObDnKqz3UoG829Np+u+n+h7N8NAJSkevjDgUc
	 x0uR+NCqOKgww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C0AC282C1
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 15:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174075593360.12633.8665406042714812157.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a87f167445f45dbbbe4127881086db3096e0f660652978a6d333209820ed8cba
Date: Fri, 28 Feb 2025 15:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740755933
