Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B774221DB7
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751439594; cv=none; b=Ic65aT04KCQMlzhhb0hnd8NLPFxRGomgsVSLH4/QWIRhY8YBqafVKgWEKj3NTcdBzYgwhiieQZi9wRamIDx8dET06P2KJ+ubZ/9d7Y/SYCo2605BrmCeBw8Sr19VqeAFpPH+PhU0HfSGWbFzLPhBZ4dM8vUdc5Zjp1vejCrE2Fk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751439594; c=relaxed/simple;
	bh=ajPe/GQRQeroC39do1AB+mj6nxiJycbGDxGJLPw9Cds=;
	h=To:Subject:From:Message-Id:Date; b=jS14Ne4tv6u3+c/rNRHg5c2VeSS6C1R5ruXzarXzEeQEvTieEA1emzO0xzpZpF858dII25/3Shve8wDmH+hIOpffSZ85H7pc+uGZnvL/rkglst8A8NBUMsq7gAOKPgaMfmkTWvmcNY+ac6cPnPdeb8bGp+NdcowKCJ0N+lMxUew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TLES2jLU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TLES2jLU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3694C4CEEE
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751439593;
	bh=ajPe/GQRQeroC39do1AB+mj6nxiJycbGDxGJLPw9Cds=;
	h=To:Subject:From:Date:From;
	b=TLES2jLUbdu8cGckAUzZeG6GKq9GbzwhqPTD8RL8UqnaacyZcNOARfhztgysFLyOx
	 qJKP9/1tMaU0IgPGNtAFzP2ELsZyZnHhfzc/5u/baEiqikztrGSnvQzAFG7+pXfJYd
	 NPG0pCW5bhq7oCNXp32X5tY1GFTZMRft1RxHl4Y7+U6TpELurGNyryf902s3ta/Y40
	 FUkggRtz+FEJSbXQxXo55j++n1VmPB50wCitTS+mpupSzVHzJjaGpqp5/oW4kAKtEC
	 P4AkCGTRBTRur8MAdmTh/xUZEAZ4RxmiB8hstuxVcPQAoRfikT+qc6zdf3Y9eyT0zk
	 Izwe9mydDTsmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 957C6C83013
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175143959360.18423.2176667420339200645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41e2479abb479a654051031cd5cb74fec3168210ec9646ed10982322b387644d
Date: Wed, 02 Jul 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751439593
