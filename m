Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 466331865E3
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746564594; cv=none; b=HXIZgOScxnCw5kk4Vt/phk9lnINrHpolmf8FfZ4kvrl8VcKZ2Qec6VGqML7VfrN58XbKBCPxVb3R5gtNwebLIXDFkhJ+t44OtFPEXJzxnT1FP43UMUjcs0KvHMI3Pnb9NgNKENf1MFYg2bgchNz8YF+z4d6M7q5R3ch70wGJsfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746564594; c=relaxed/simple;
	bh=EK1Pcc1ACZq/5Bje62KAfChUj8foLMlTSkUeolt34QQ=;
	h=To:Subject:From:Message-Id:Date; b=T1btR9ZR4R4p4c45fz9SUoD76NUt45F4r3Cy7XUHQkzJT2ajhvDoKlLyzed2SRIHliKj3RTqhf94JylCUE+fXlmMUzXhL392X7yi6RAT1mGBEMTHfOlA/PVwE3zeDuWzBC98Pgk00QpgADGLztA1oi7YE9fFDGqIf9hYfhEwgSE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sbKiru2c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sbKiru2c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D08C4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746564593;
	bh=EK1Pcc1ACZq/5Bje62KAfChUj8foLMlTSkUeolt34QQ=;
	h=To:Subject:From:Date:From;
	b=sbKiru2cg9imkIoVVtvVJCk3InRwZc0a34bmm0amsvOWBn66GSI0xfjukZGG0ygkW
	 uF8/2eDt7WdGf/z1x/eAgUbcsvmM8oCucHR6sE2YhXFxX2ctn1li/1l/IWz4elBYJ8
	 HlT9fNiypGxre9SoDM71+AsfQPuRwrGEZJagNKeKucGxYmzlwkwk4jJNwdIrFYTgzj
	 4WZFiof0NXwEgjhJA46gogEo3X5bPQEPhNkjV0RfMnBirqE31pOAJl1T6u3Lx/X7lb
	 lBJxooYi5jNx/1Z6QJCt/ZMvDTqVMRSAfVAmit2sEKDJ4YTT6+5/1A4Zlyf6R/FinK
	 R4N6FGCJxAi1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 936D5C3ABBC
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174656459357.5284.8200616866196775178.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0dda34674aa2d836aa8198a4dcb2d24a20ccd33d1f2284049a663363abb745af
Date: Tue, 06 May 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746564593
