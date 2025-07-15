Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30B8F7464
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752606594; cv=none; b=uA8VImgUq8im1k8XPd+PkIIlWk76wFpnA2jnV0cyTdDtRwP9GGHfjNHIN8QGVoJaKCh2fz16V5RPxbewrE+QOTIiLlHoW5s/f67Imxl8Sp+onXKERFRs9Ra3K0zSGuRhUPi32Ik4kvVv7ljNK1fXNmSIsHfgiSpSpHOYYY1IS6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752606594; c=relaxed/simple;
	bh=1Lx8y+ME843rzoY8F4SQlaX0SxSMozZbXXEIblgWSqM=;
	h=To:Subject:From:Message-Id:Date; b=OQclB5TNNjUbyOWNtKS/H+7vzV3RUwGe3rkfD9vZiOPQOauEndPCF00coBrwJsrIcu3dGaOYNRaZBr1kVQOncTzUZcWq8LYyog/H49CzId3aRonFbFjuauXUibItQ/t+e5Jdxge/gOgtBLPr3T7FclOuIBWlc6tKa/wBnakPzPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pVJ/2phQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pVJ/2phQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4FC1C4CEF9
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752606593;
	bh=1Lx8y+ME843rzoY8F4SQlaX0SxSMozZbXXEIblgWSqM=;
	h=To:Subject:From:Date:From;
	b=pVJ/2phQqFt4CW+ZG2ZFwir4UYHwwujhJrPguzBE28m0J2ouNTGCmqd+OR2soeGNm
	 RVSXsYhcP+oT5QzjS5drj0OSyUh+BI6LwuNlwIse4tPSZyaPoZ7VmNBNOmFSfHClJc
	 k3v6j+HrIFNMiXfE0631WcsSipzeRGsBxxe/ymKE73s5wnJ7BmrgOq0Eda8m2MtO6u
	 sTd69HMqVYgJMApAJI2OJVs1Jc1rJcy6ud00G2MwHlhnKv/mx81UmGu36BO31qAGxf
	 WjEVu3CLMoKJ5j+PhPno1yOQNfA5xgrrHP4tvSBJdq/eFJFciGa1j8oubh0MUuNTaa
	 wbf5W8ie1+3fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A594CC83F34
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175260659363.8926.16560610479696819084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24c5f696be98eaae2d49a9d02b08334c1f8d154080afbacf4b67fe642f7f052a
Date: Tue, 15 Jul 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752606593
