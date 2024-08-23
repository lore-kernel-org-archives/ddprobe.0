Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAF30111A1
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 01:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724378153; cv=none; b=KiyzErsiQm8/kc8cTYiG5XTCuY65R0CkWZuwaAx2dnEw6YzyVyW+8QUH8clXVXRajHDD9ZHppw2IV9iz0VBNTgoVA3sn1xZxT1Gs/PFEdYlUbZnXoQqnSxXulUWCqLl/rD1FhCtZO1H1NXIJcy4lzcXnZfB+3G7m6AVK65m4Igw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724378153; c=relaxed/simple;
	bh=GWheFQNCR5nI4lQLH+XLtF/LpB8WFyimFdW4nqBITeM=;
	h=To:Subject:From:Message-Id:Date; b=PKGcaIQ7zg9RB0r3m2A+3OBHHTsZf233iyotGco57lj+SGQFG0y3BaRRxu4dGxF6pP4uhpbTPq4Gq0+ekN/QRd1TKKutWu3K6QV2fY2oA2RfIltYAZCS0PSc4zKdg6BtpA6B6gs2Q/snLQVRr970URdc9t5ZGHxfyNe96NWmUIE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZfNcu8bU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZfNcu8bU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A83A1C32782
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724378153;
	bh=GWheFQNCR5nI4lQLH+XLtF/LpB8WFyimFdW4nqBITeM=;
	h=To:Subject:From:Date:From;
	b=ZfNcu8bUwBI5OklbP6v/R2MpzOMfl7ebiBUW7ZHP/Z+QXlgkRV2anX4WgR99rmxhR
	 ToM7ylkWAQw7fVIIF2cEXc8dbaLAgRG6dBTppdDTxIXxzYi+2g0hnWu+QDozFL3yGk
	 3QDQjpja2Vfiw34QqVkvq17bF5sdsvcFIW+ZYpZmLyRRNHNOmD4PCjnkap2PH5Jg+O
	 tk3/OOBowOMy9WDS1ruMPJdxhI3786Dn8EQa6jgjNMv0dWQ14CBLtAW4+bHCzDM+eh
	 dS7IARfyScm21jla359Eq0q/n/JYDmt8GDYRfnUTczWA+KJsHCGrWQCpNv/ea5OCsR
	 fomjQFV69BbKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9829EC531DF
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172437815361.28450.14063716119822303998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e715dd35e5a536769ec3abdef2f9794ec47714f6cb5a29d134d77302a8904391
Date: Fri, 23 Aug 2024 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724378153
