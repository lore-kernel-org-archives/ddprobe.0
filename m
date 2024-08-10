Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D0001C28E
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 14:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723299954; cv=none; b=X3+/bnnKUAo+7WhMIHO10OKVi6HafGmgvyqJG0uBF+jaU0DnI4Wbm4d0xeB+iIW2qBJs0KwxFsLvxMHTNGYZve2tf2JiVcS2kSzK+MtHVogNa/fMmmlNTGUNUcJ658FsPcFXPbiNAZFlconhnt+OIbSh0zQVt/BB7mINKaU9KZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723299954; c=relaxed/simple;
	bh=Ds59ZuAiNhKvVyloI7vEmzvalJ1YxEnRkc9E5aJ5Xlc=;
	h=To:Subject:From:Message-Id:Date; b=tZkF4YagqoM6FIB/HIfPsipf+2UoRO5XAZUFITgmycrLzi9/qR4GoYWmFHKVaf1gFZt9woiOcrDQEj0b5QT6cvPckxGmBbt2T89/NEBUD6OBqDv1qpZjgKMdzc6m4d9kpWy8vlWAvBEZuKSy25UYjB3es96P8bHR7Od69uvSZJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=do4V2Myu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="do4V2Myu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5CB3C32781
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 14:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723299953;
	bh=Ds59ZuAiNhKvVyloI7vEmzvalJ1YxEnRkc9E5aJ5Xlc=;
	h=To:Subject:From:Date:From;
	b=do4V2MyueGa2RqDOr2LVfxD3CyqzMGiAQPXZe8RlsUKcAQA70xaiJ6lnqxQiDTHT2
	 HheZaF3h6PBSD+7PL1jAH/3fXWfVrXVcoKz1TmoznN/9iNphvCRdukwX3QLOHUFoFo
	 stnqHKw7r0bmhW/PA2/InQmd/ZbFIGsrPVANVnILKEcXEN2XO6s5ysSEyfa/AwuHMs
	 f00VOUrYXGgwGRSn6omEQ9mI6SPyl/RGS749BCu10+LhnZZOQ47FsRvXG3GHUpB6mO
	 nJZwN8brPaFaepWJYhDLodM8TN/YzwhMNBpt8W1/s1AQV5hAF92g9DLswOgc21wfOm
	 c4gFP8f8kbZzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93DA4C3DA7F
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 14:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172329995357.19840.5595339128151098938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13b2e0ccab30c959c788b9720991e087b07fb34c58743e5d9bec7890b17cd999
Date: Sat, 10 Aug 2024 14:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723299953
