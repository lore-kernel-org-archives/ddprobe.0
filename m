Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1DBA431E44
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 12:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784896234; cv=none; b=HGCPR+rps+f9YwtLm5F3SSWH2qqzFecnOGqAvRkpFsGalC25UuoBf5+N3O+xH5Bd+bxIpiWDxvy3lfY2caIwYYuheSSFcDVnHFajRwwCTgTFgGQnbmt3TU0ezeH6GcTNochcvorRq3V9soeOPaYsvFhdRdCnx5K1DkCdypLZ7yo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784896234; c=relaxed/simple;
	bh=rWsMPcbcFL9Bdj9nrJSqm8DSYfkKLRyFd7K/ivrmjQM=;
	h=To:Subject:From:Message-Id:Date; b=VVoBrNWa8xaSFFXxmJVtamfhluBm1NEpBxrRs4A0iU38JR3Ru124A6oREVcG6zgu69t7Fs8azBF161cU0ZMFEaXFmRbcAbUR3dBSfcuVDI35n8qLg0178aG73vkpDa3G3zMAcoflgPhrH5izrs4QORCrK7L+Yuo3DRrK3+3IoFs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VERdt5Ux; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VERdt5Ux"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0407C19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 12:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784896233;
	bh=rWsMPcbcFL9Bdj9nrJSqm8DSYfkKLRyFd7K/ivrmjQM=;
	h=To:Subject:From:Date:From;
	b=VERdt5Ux7z3aPpG+3bfmQ/X9Pc9uBGSPaaKgttvDtJaj8P2mNAHcJSGT09SpfRCMz
	 WwC+DvtmYvBU/fQqOJmezD2YSK1ooJuAmk7A8JhrxeqwVh3YQiKlsJMr+0jFyJf1v2
	 OKnorwFfYjsq0k94nfQOm25C5963V5nsLMmOfoNv7KI/lofzns8Kt+1pWTSDc7ThjG
	 QCCUgywUkM9P0gwiHNYuFAWqIx+ky6qdJMda4kU7IB1gJ6/JHWhEiwKzQ7YfIuP2lF
	 MwpQ8Ohwj2xtaGxi2bqwLLg8z44E9JdKa38zZfAbEJGtFCcpk9DRNGonInbEgf4DLk
	 29E2ZRlV+i20w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB69AC531C9
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 12:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178489623368.31365.17956149453360873234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04932fb79241ad9c20b8cea3219c21f174b901f50bc9eb94825c5a8802c0290c
Date: Fri, 24 Jul 2026 12:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784896233
