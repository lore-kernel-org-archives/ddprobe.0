Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21A7CA47
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 01:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735782954; cv=none; b=pPDcgXePO0V0FIgDM3OX+3KsQPJzDYvHzhVtEO1aFt2s1066B+r5BzYd/1APnB+Vo0Wy8dOGSvo+t+ny05VBtO5rRk07y03GB3BoeQe9ayVt5RcYiSC+cHoNYdNF03Y19pM47+CdPUPVVOfJymmHbc7NsT+NlusoOA4x9cSC9do=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735782954; c=relaxed/simple;
	bh=BwT1jAbJ2N7b2JN0kZJJfaEMvacqcftGp4bqZ1lGCic=;
	h=To:Subject:From:Message-Id:Date; b=Dh1xYgGUSz/pCs3FSCkOTgW+F3gx/v1Kv25PuERdFGOVMvGrGs4sKJR97dzjRc50qMz0Pyr1Oyv03TVFwFqdn8eFXG8acMwcrzls38H6U4FovmPL58xDk0bSL4pT+QsEz47xOKuvc9iwXKeZ2mIC8hcN2pAw+Go9QxzalBHIPmI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LRmvFJO6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LRmvFJO6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD480C4CECE
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735782953;
	bh=BwT1jAbJ2N7b2JN0kZJJfaEMvacqcftGp4bqZ1lGCic=;
	h=To:Subject:From:Date:From;
	b=LRmvFJO6ZwyxLfA9WHaxesI3I2OxN/7xzOCG5yKD/rmr1Vb7e6ta4gpSPU0YDbnsU
	 QQCms0pWxCg9HgDDTLWAA4AScVPIsXHSN8Gf5mP3ZrPnpTp44qwy4CPBjYByWAA/br
	 TegbFpg6GtY5mLYujc+AmlF1BtwsQPWMOjl+Cr6O/UOIocp+9nM4lfS2c8qmp50JNt
	 EnJios8HsbYPh87PkJck50fYlvMZA2JgNj/HMBNBv4eYhBJ3m2GxpRJ0Cvxc3wo/0N
	 tTy+U8yNaiSBmR+qcd2l1cU+F8TedYcTXaEDTTa5ajYVENXarZLdEkrn45oFV1aY5G
	 8uOttjkgxsBbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B1C7E7718B
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173578295361.16487.1374493299400934808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b723a21a498d90dba1c535f625fa6e14997a5133cf534c02cf82e16186cd8e53
Date: Thu, 02 Jan 2025 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735782953
