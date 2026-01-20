Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F6AF33C538
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 09:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768900434; cv=none; b=kfSVP6F3bos1LRPESOTFSs34Et6YcWaGQuOCrmvsBW8sd4PTgSyZkEASx5gPyOOC5+rdmoTqk1+R2eWzs9nrkwxkic9T4sb4Bbd9RExuhKwUR2lPpc7YY8kDQEL8WjbNitkf0O4LpiorRxc8gVUnS24gJX81b9JpLUHUtxFMz78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768900434; c=relaxed/simple;
	bh=Kq1U9ZJ4NfaegMfp43/bNPQBJ98dgbM1m8r6s2RY9zc=;
	h=To:Subject:From:Message-Id:Date; b=eFyGor051zaSW+o8Gs2fbsNFpVrgCPJbRjLrxcHS90tWZ+XjiSaTEipYPScVsQVrtjr0WVhIpmJ3UHMnabjVmNobM8/4jIps/YeAtSyxebisbFWZdwztFCzlUCu0CEt7I9yEWsFR4vJxhX889kmB3JhNR9skPjjOfkIBLYNRlOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IrNFageM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IrNFageM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A103FC16AAE
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 09:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768900433;
	bh=Kq1U9ZJ4NfaegMfp43/bNPQBJ98dgbM1m8r6s2RY9zc=;
	h=To:Subject:From:Date:From;
	b=IrNFageM1b2OAA5ZNVqeX1nppVMEyDLHt0azIPU6CrzdO4PQ68BfL7eMsxv71Rf93
	 MBAsv4+kgPWnlQPEVxbjKTVn2o+met7kazQdeKoLuSILo2golnhn2ghQUhEC1ju/OR
	 1aQQanDFJH0tFqA48lB5YXdTikwXRGLbIRPDUyOgB/Nay+IEp7phroXUbfY08v51nM
	 supa8w9yP5vIPRgPZpFYe/XrxUCndPa1q/Ff7nfESe8K4fpgLr8kI6MqN7gySAqRbj
	 PqtbLHmUNtvRptq4KED4QKD4mRmP/YF65yAQ/YW+pP33IA79AN+gxJEyMQS6C+VKpo
	 x17GrmPEOuNzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF1FD2ECF7
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 09:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176890043358.11480.7389981785815824442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0fc4e0d73a83359c861aa1ce495e02767f47f2434243954f11aae3c02a7c1c6
Date: Tue, 20 Jan 2026 09:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768900433
