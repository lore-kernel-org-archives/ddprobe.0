Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 151681F03D9
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757467794; cv=none; b=eJp9oXLyoJje8aEol4b8O5EtudwtH8DG0oPucxCRT5V4dUSPBWs66MLF3ek7V2ZguiGObpJ7CrSCMgEBsSb84bacf+gIZeif7eoy+0ad0m4ku/I+uGn966ZhaaObaqDZZZVCor5Zpr0APf4smoAVzMJvynkU5JLXo245cg2VyKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757467794; c=relaxed/simple;
	bh=EBmuK0QsumD6J2PfbtdkUbovXreaJjGKoD4jnt6Pbu4=;
	h=To:Subject:From:Message-Id:Date; b=aUqNiljOJLDwoudFMKUTspNjOJbRx+2kY6M2w2tIuzBl2SLIsqcs5OdK/soAvxjz/Wq9Ilm8+zhhfeWJq6M6bqUPLp1hGet9a7aK9DKtz4gmuuXXeS76k+fQ4lY/BOxABSbuHEgPYG9gXAOcJWr5kWck9d9Um4iJHs9c3vOinsE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ccohHQHO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ccohHQHO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B2EBC4CEF4
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757467793;
	bh=EBmuK0QsumD6J2PfbtdkUbovXreaJjGKoD4jnt6Pbu4=;
	h=To:Subject:From:Date:From;
	b=ccohHQHOdnQyD885moxJpjw1NhXOFUHObM0vKpiE8M1SfFg6iOyJQwhMLc0FbbpLL
	 90a0bh85vDZLFuUm6KZ1cFTzBg4BOA5tDV8+KN3pDFj8++2joe7+kUaAWbmpjgaNHg
	 V2bf9ByPKs/OPj5uBLqFn0b6/smunQltOrGPo6VrMI1+abz4VD1GTffHde53wGoiy6
	 SOVa0N4halIkd6Sv0wC+8XLnnpubp5Ens8B2hXue7OORP+voOhsJ5PzcjpMePwrVr9
	 cJdLPGWlDI9nd71NAYVXHAzt9agKh4FAAPpZC/V4Mg3VQpPFv8NouBmsMfBdB5mf3o
	 J2CduHSM+/N3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E4D9CA0FED
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175746779357.19637.3476416517743947751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57d1791fa5ad46fc2590bc2d810ab88f99bc6ad10010905f343ffd7d8bc2a17d
Date: Wed, 10 Sep 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757467793
