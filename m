Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A00419CC24
	for <ddprobe@lists.linux.dev>; Wed, 30 Oct 2024 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730321754; cv=none; b=l0iGv6URRC7jCW1p8lS/dmsHi+FEVhMWKTTA1mEJILxfevEJLs0yJeLZSNEVrRQLXm/ORbLYoybFm3hE1SiNVpjzlgJ2OSmt7RbX7vfBjbwIfET6S8a2maiQUl6psC5DE06lsP9bDnsjv8on65fRRspC/oVuDpptgu/4LBJPBLI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730321754; c=relaxed/simple;
	bh=zTnAjR/s3+o2d7JE3/XC0IbTO+lA7c+RU9g770tA1Qs=;
	h=To:Subject:From:Message-Id:Date; b=MfChvSaYgmh5jwaoSRIE7Df7r0bO4P9LqApdDhR64B7CZErmhoxO9soMoYAudAug+3l4YHa+S3AES9NwtCEhIUzWKi+oFiFNNhfO8JYO0Oq+S8hJ7fOX9JtcdC0GrbXjq74T6Q8kcJrs/vE8NtnNR6aKsSAWBLvPe95yFvq6nfM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bC/PkFR+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bC/PkFR+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEDC7C4CECE
	for <ddprobe@lists.linux.dev>; Wed, 30 Oct 2024 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730321753;
	bh=zTnAjR/s3+o2d7JE3/XC0IbTO+lA7c+RU9g770tA1Qs=;
	h=To:Subject:From:Date:From;
	b=bC/PkFR+Mc9X5YZNv4ApPlF+RN35f2r/Y08XVilMRtVq7Ex5Hhz182QEReFIER2NK
	 fHpTU3HIzXb2v4uJQLrncfgsUVchmANy1nlQ05nIpLcUhkJHB4LvFR49Wlos49cfhT
	 p6kh1GOfMz1UMMVlXuOb4MkJZqA+vmhyPlU243R1wMuQcrYlpsPd5oknGqyKe1L0qd
	 wJvEXUMpju6QfZg8WVIVEMLXddZT8xwKNGfspiAxHbxLUM/eGllosXobXKo8LCJ3UJ
	 7eTgh0Ig8u9S3Uy+G+UUFaWjmzi5efKhdFufzVVa+hEtGregDvxy6SW1pa0YTeLros
	 aN/TmLXynVrow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B6CBD6B6D9
	for <ddprobe@lists.linux.dev>; Wed, 30 Oct 2024 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173032175362.30639.6504331104296810977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51d42ec0bebe0de00e3c44c43a9b8c9186ac6b8eb61f96d9127da7c5d472db10
Date: Wed, 30 Oct 2024 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730321753
