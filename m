Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 408F9347C6
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 02:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792204234; cv=none; b=LM1ahkW2DiRqBqSKmqfzwvvvsftj9ArBJ16VKLp6zVsTvOyOdofJaYESdd1f891TJDbrpRVoztDg/VD4snky3YiC0+QDYkmEOBkmgfe2iPfew7VgXFSgcz7EWgpGSkpTGycy9d2Dao43maTC8oWjAoChPJCDcLVpQFcPyar4Ejw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792204234; c=relaxed/simple;
	bh=rdeS1I1xXUBdCU9PN0O0E+AsUEL90pdbPzbabCDNM1M=;
	h=To:Subject:From:Message-Id:Date; b=HvHde0RbOGAy6o6yDdPw70OSZGR45m3lN0Gj9YBrKaOS9eC8r3OTsAHr3qjgAs3lsgUfUIeMTy0dJOb8j/vBoSa+mWf9K7f10YvsMNgyqCgDoBwBIQ6ctjuSYSc99GoP//x/ViNyVoHE5mxLbeuIQqd5MYEni8lyH50qeZN9VRs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C1Mbi3Rp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C1Mbi3Rp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0714C2BCF4
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 02:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792204233;
	bh=rdeS1I1xXUBdCU9PN0O0E+AsUEL90pdbPzbabCDNM1M=;
	h=To:Subject:From:Date:From;
	b=C1Mbi3Rp3Zwnyrcc4OuQZ0s0Az5RrdKW2BKaubFThCnEnUUm5Y1E4R0X0a1/9mM/j
	 R/QY9E9lwu53KnJnuwT6OfYPSFgOoHZmru9qFJuk3l04dnyC3rPQ/j/ayiC3QFHBxk
	 v9OD5MsdfHG/sdcYF1whSWuVeEULDUoe7FpLLZIDZKtKYGzca2bjZVCO79/SRzjb+2
	 UpGV0VSFwZUbBUwziEEt3fGs3+d2rfzmOJDL/9Jl+a3Zg5h/QnmdeiP1g1JNsWaeFx
	 x/AQBcRG56bjNw7WVXyeysY7Z8q+CLbUBuvcxtbupkd+kjK1j/fuz5bgvZT9LN9JDR
	 oB2fT7gpizWsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7A1DCCA490
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 02:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179220423371.31471.6745408745585808626.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e18700d95a45449a5bbf9fda3c12b602193b5cb4f3d67798c8b955a042c608d
Date: Sat, 17 Oct 2026 02:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792204233
