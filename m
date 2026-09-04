Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53BEF37F33A
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 21:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788558634; cv=none; b=X9sBQCHPbOi4LM66+O7juG8O1Y4iqXrzog8/HKdDLLN/57lW94uT4vI6TE7k60X6+gvmHfiVFT21I/OrjmQBp89b2ys6epYzDySLT1dgw62XT1q6ca2zZObNgZn9Ava2hzY50M8I/prs/SV1wxu8+16sR/zdoOtPsPRSMMpMXwA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788558634; c=relaxed/simple;
	bh=pLTq9Yzl645J3RI6e+aHwpavjvhPuyf6zUGspIVms94=;
	h=To:Subject:From:Message-Id:Date; b=f93yqnT982eTkVmPqT2TLG09HYH8BUMY6UeV0G506dgKtgCoSjcly2NPp78R6tBFVbWE/IvKdQVoGWrwdScex4hRTIZ9Jb5gK5pKlSWrrJbvK9lz8BEjr3JCxtMUYqTcp6sLhc9+auCMhoMfgjlKiSt7Rr0ZrVAlNCt/Apip/PE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HJN4hOHr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HJN4hOHr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D46F6C2BCF5
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 21:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788558633;
	bh=pLTq9Yzl645J3RI6e+aHwpavjvhPuyf6zUGspIVms94=;
	h=To:Subject:From:Date:From;
	b=HJN4hOHrdRYi0yFTPJOAIMmC5TxhW/mD0aB0gLtiLfeslSR5ymM75M+PYULoejLU2
	 GQWAiLd04XeLTYTi3mYMHOs00+0fFRwVtQC/UjzqBJkNuaUvNVBgDMPWdxVhAUVT4X
	 LCpZAucQBlwLRoK79FNMb6XFdaxptrG1ffYma2h04HJwdT30BwQzNH4jmGEmaQL7kP
	 8yCyfuvaryrIlF+hLQO3yFljJ9ixOg2V2QEqj3qGLmPV4aO+UqOb1b8OhrCzmmT3vU
	 U7+WAyWJW1x3sjGt6T0D6raA/oapVb000Quqv8NYDmvB0r8kymGE+GYJDupYlyQJ5H
	 u8H2xPG8xqFgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1F8AC79F82
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 21:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178855863371.17193.2567835815051693850.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41b5537c0ff63047eeb46b30d473050d1f5b89b2a3977e9a02792700866f2f63
Date: Fri, 04 Sep 2026 21:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788558633
