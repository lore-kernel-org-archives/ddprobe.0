Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD7E5C153
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 13:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729346153; cv=none; b=XE1Nrp66pMzvykvqBL9jwwPLaSRGhKPkZGeRd1nEyLiRvHfdvPZIxHgGLotQc3vWf95xQXg6HLAezz/weTo5nVqUEeODLgJ7ekN/jzSml73oja+02tgd5mRXVCqTk1JlYuDJZ0aSNY43zhnGE1qYDOys8MrmvBD5P/oUhtE/FTU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729346153; c=relaxed/simple;
	bh=bF59nffugKXdfQib3Lz7VCzftWXkgPewtf+GwkdKemo=;
	h=To:Subject:From:Message-Id:Date; b=TReuKrIA6L32VxCd/63UNfmXMg2vjLFdt+84QgaQhcSp22762faIKOih64R+8ALhglT2HTphodkSH/MYt33vo8L6FTxxJ/XYX9do6tvJUBhQlTUG1GSHjOeG5SnKkFKVjpCvxKeSHqpmk/Hhla7YHhpqH0ycjidrGmQ6QuE4LxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lLgrApnG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lLgrApnG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C98C4CEC5
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 13:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729346153;
	bh=bF59nffugKXdfQib3Lz7VCzftWXkgPewtf+GwkdKemo=;
	h=To:Subject:From:Date:From;
	b=lLgrApnG1UMV62IQDSog2vfFkUT8YtIxBg8RRrFsW4bfZA/J2uBt7ZgIYvAOfpGdW
	 GvxEozuwa5YEsYjG9GPKN2nTHJkaUBNj7wtUcaAVqSfv/e4PMU/HD0aPxnZ65+6396
	 EsmA2Fo6gzsTWmqmiewfhrHzYKJM24a1qph+EWlze5H3VkaxCrH2Gor4toB+jcAdkx
	 nXt/ta63iLndtIrOotopRN31QzBF0Ygi3rrDXI6CJtHo+s1VhcNRMK4qamFVDvauLM
	 ssjEEsCcelBW1EFmecz5uf4bMQbOU6QbxkvwMur6az4mYZyalDFK2ajqPNDX4kOJXf
	 O+v8cKgowrHzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 971E6D3C916
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 13:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172934615358.12466.9288287688036442836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 613c8a6d80bcfcc180622fe9093aa2586063f3e43c53ed87c562c782b8b84a57
Date: Sat, 19 Oct 2024 13:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729346153
