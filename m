Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62B2B1E4A4
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 18:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719598463; cv=none; b=drpfr7lfb/kPT7iaxXUPiC2P2m9LJFnq38eK86/AWX62UxZNgOmzEM2BQYpVQ8p6Tv9N7cli/v85EVG5vh4Om4kX9CM0+CHtH/gBzTjThv80/O8wZnsjrl35Wa+mPOfR/krugDoKwsyY5aczjZk8/PkVUErutdN72AW4Y2rm1pc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719598463; c=relaxed/simple;
	bh=N+xBiBMDAfJotQK73SVMxxPQ1BdjAehdYzEc7lmrxLU=;
	h=To:Subject:From:Message-Id:Date; b=cmu6LeX54mky1n39QewufJPIXMfluguoZqniasrAvnI4acOxHhTOAYKD31U5Z5r5TfCLtkIHKdc0+bjaX8H9rKemr83JPNaEQXlzaBrg/0mZIGpoZxMq/aElZLFP7NdMAboiM6/eDMedCzMVkpZ4I2O0ZLzsxDaZaFXUvvtVGIk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ips3L8Z3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ips3L8Z3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5FFEC116B1
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 18:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719598462;
	bh=N+xBiBMDAfJotQK73SVMxxPQ1BdjAehdYzEc7lmrxLU=;
	h=To:Subject:From:Date:From;
	b=Ips3L8Z3q/fOht6Dhzte5EKDmFt+94nCIIeAsNJgG0BnyZqhdHqN+4phCrry6jBGK
	 MrFCxQyeGiJSj5Rjv+4+FrUsNK9iX3ZRN5VnzxrQVyahS8ii8oWYwgv+CvJfkj9SQl
	 XIrHl48cErZ7vQkrjIhO2kzCE/iGyLdhwGcYfRoSDwMS0mYDg1IysKYwMM9Aiq+F+k
	 19oQ/Q5EGltuTgbQB5iEaRICvEqkl/iFsxMAdvjs9EuicTAXzgKMT2fkgPONbpqT5o
	 on5KmQ3nyDB5Qm/JnlKa2y2OV2RE2s372tb3OI+jDaMGE8Ikwd5pctsT8ABF2UEHz/
	 IkdCkad9oLuSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D026DC2BD09
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 18:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171959846284.6949.17943511047903443214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0046d57ba7ce260bd9c54ac1c7a71eebd347e36cd077da160dd8ddca0ebbbf94
Date: Fri, 28 Jun 2024 18:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719598462
