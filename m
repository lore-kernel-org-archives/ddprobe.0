Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1253F2DECCC
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 06:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763707314; cv=none; b=bK/KLh4EU9BHNaxWcls9rcrT5Cxr4A9sEZaOzaGzQbTsXjc5QfDxMANB1+hmLYzquHGzHoPkmhvs6kOZGFYGnSr3/coFI/yNfyec+Hb377W3jY9LSEOH686diiy1j/dduupdFsiL9r4JzGJMIU9jb08XEx689X44lUh9mZ0mZuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763707314; c=relaxed/simple;
	bh=ZmgfazD9IKasNEcepf1vtbK651IUkZ3RdgcU0nsbwto=;
	h=To:Subject:From:Message-Id:Date; b=s/KaA9IXei933nLbIddbPYINA234XrM+EF5R50D4DotlePRyRIE5vgUS3JfgR0T93/7t3RjteNL63ay745Ze86FO8IU6KVCVi3/4pMCHL0CTMaC0l3wZS87NzWmNG4ESVcUSWDyhtlxLDuQwgw9piu40xhHEJuZLWCHxDMRqLXg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WjY+ZEcw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WjY+ZEcw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B88C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 06:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763707313;
	bh=ZmgfazD9IKasNEcepf1vtbK651IUkZ3RdgcU0nsbwto=;
	h=To:Subject:From:Date:From;
	b=WjY+ZEcwNEVXBTDIxqgROjNQQ7T+CVzIBTl0TePuH1iFj9FtUv10wa6al1YM5yKi1
	 ojL12ybkBZtrCD9VKK7br7QCyJDa144DCdWBDdzXw8MeRMjU71T8sCS60p/IS6I/jf
	 vMiSzP7PGO+a4ftT2uZfpBr7ccnibzvWJ0E8zhHY0qYZawn2r2haeVvZFz/bxOW5nT
	 8JcZ4xGopZTo0limDyCs2vJROST8kLL5x3hMQZw/mheJXzU744qqFSnq3NBcYO2LnI
	 TrnTs7Tr1AvMvVMrvOzuIaE+KpapovIzfDJT5dpXuyg90Zjb8NNF15MQwqKhU8OX+7
	 Wtb6tqHpNu/7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E99CFA478
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 06:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176370731358.10725.2312584399523503068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8dafe75fb5be5b90e4a49111f51177701229aa64e6c1fa8eeea81046a764e49
Date: Fri, 21 Nov 2025 06:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763707313
