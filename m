Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 448BFAD2C
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 17:36:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720460183; cv=none; b=DrUCojzbms66XGY8lbqPXibrn7H5CICAI8mKxw8FDKYe+GNxglO/ABUm6f996wRnWvrURglE978Ot/PNzWDiC3y8jnHCp+11lrNEzRJLRXhhxSZKgbtnQkDORwaGyDiuMdbh7F1UannaPWppUH6EVBCJjm4qLa26wAi1lZYhyf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720460183; c=relaxed/simple;
	bh=+DDGwGrYDazKuiIlUv3WonkOKgZ9Bm9eKmFeqCZB65o=;
	h=To:Subject:From:Message-Id:Date; b=h2ciXEE46kjC8s77gVKeRTM3wDs/v64OhFudVSEUK8mRUL5eMt3EnDuz5qsQUlFocP/BLhUaOL8Z15GsFjrSjZNfCYPZ7C+nMRamjALc3wvRnW9BXIgQ/R5L7H7KV7sFgsJJtvOCWoSmUgSpfsciuJmCRm3EOGLqGg6RedpxyNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CXROCSML; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CXROCSML"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1601C116B1
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 17:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720460182;
	bh=+DDGwGrYDazKuiIlUv3WonkOKgZ9Bm9eKmFeqCZB65o=;
	h=To:Subject:From:Date:From;
	b=CXROCSMLCipAjEZoqEw5EjkHzOBNHfqmWzs/F6tmcbBabuSRMxqLT3/tKrst0pPLp
	 lxH2gUfmuA/LJmVDcMRDmqoIrrnCs7yhJxaSOcGNNMPP7D9xom+X8wRXf4rDSwnK3k
	 CisYMq5AS2s7hKE3F7BTD42esYa1P3faViJkNroQ/uCTR0vcextDczYwPkyCK6uosF
	 XC9ReZ0DuMupYq3xcPRL/N2oCmzUZ2T2Rr1+Z3K1eRvCnJZt1+3hpbzYYtPhqAlKXM
	 d3rtZMF7BhSpxYMOrEyRDWokUGQqjXeQUv0GAAEm9RDSoXSRm4JU3NX2qTQIWR4U/g
	 J6UTTGkr6uYLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCD6DC3DA41
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 17:36:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172046018276.23874.2401835736148372279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4c452e3962ebda04223b472cd555ecea1918b49e111d0cd5d14c09ed9e8aacf
Date: Mon, 08 Jul 2024 17:36:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720460182
