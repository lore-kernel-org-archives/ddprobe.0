Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C99191C9DE0
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 15:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726586153; cv=none; b=sPkwzCQWLc+5XCkhgIwWsk+C48Gmvm+DOFDDhHO5SjfWoRtAJscBaWxixYfdkgBj+c652sQDEaF85ZzQlx69IfqqkNXCFW7VbugExF5qbTSjDkCzAbJm/UMuisBJoZlxvOy9yeNtA/KHKcEs0ucVnWtuFAEYOL7TjDdx+1ZSRII=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726586153; c=relaxed/simple;
	bh=M2mSryjDv0X/BDwDik07shUB6/DZXW1yE9DlawlnJYg=;
	h=To:Subject:From:Message-Id:Date; b=KjnY8gqBq6wRuak8NNeRij7lB50PfK0lQK6/z3YYnHSkmM+dYnDRWWNsP4TTGxYFESRBu6GLaFQRyy9XCh2HmDD+tE2qCKKDnh0SX+TWm0Tt1JXJV6YIUP5ETBqXei8yzuDpsslQ2gInqTmy8sBwkcuq1tZ2HUNB5yaOKru25Mg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p+A1REFf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p+A1REFf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADB10C4CEC7
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 15:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726586153;
	bh=M2mSryjDv0X/BDwDik07shUB6/DZXW1yE9DlawlnJYg=;
	h=To:Subject:From:Date:From;
	b=p+A1REFfgEeI5mcURSyoNG1ZkTXEC54eDqlwlZZ3dld6+CTzZUqtWBrsQbqZW/xkc
	 UX1ut/TAVrXMMgWhE1Y6Z24wbNe4CUIVWnfOJZW1Ud20PkdyWvJrrPw9uVFza565Gh
	 jkl9idjn8s7jasQBktPUGRaR9g9LjzJR4FDv+/SI06M+EdbkfmVw64xjlb39otfbG3
	 t82KaeooUWJ+nuKcFSncfIDfSW+TGr9m38ROd8Pcxt6H1FEHSnlFiIK+sz5PoCZiLE
	 +Vfip9fDNxsnU4AkpXhTRA3wUvlFcLp306uRSuQcgGF3T+gnpAfCp40RocBGwUPkB7
	 krM6pH65w8FWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98D6BCAC587
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 15:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172658615361.13148.5189750759778069500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90f646ce2508f0bcb53de56a367757b06ae93f3f6b3bc8d9a2ea81f6413b6079
Date: Tue, 17 Sep 2024 15:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726586153
