Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ED87193409
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 15:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729609554; cv=none; b=BSCYoTGu/K5GsriQZHIEhl79GdHjk6E9d5SRSt4sczoNLDiWo7TsuAyJalDMHriduvGm8JnASpOkDGp0S4vrwvCystFoaktrH0QbOlanqXtxnVuTqhxS8xcZS/t329wbAQfK/inAIKgUQW9rAbfi7Q2hVloQjOPIWraNliEnp/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729609554; c=relaxed/simple;
	bh=LV/e560xGRvLvQ2cesAdJAv+qCfed3ct+7vNaSJTqdM=;
	h=To:Subject:From:Message-Id:Date; b=WHvwnttxYkbQMhjDQdhQuxPmGYJGLmiomo45eintPBPUKkGn0/GhvjI5JtTvPBofaD8n/8S3CIYSCNwITlEKaU1NkRxPDZx/Spc4MzXCVvUCRyhS6kUEuOYONoXRjkE1gK/w8p05LOCpIRfqmfP/A9hBaQSpQUKfo+hTnJKRiBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DcP5wo5r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DcP5wo5r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9BC5C4CEC3
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 15:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729609553;
	bh=LV/e560xGRvLvQ2cesAdJAv+qCfed3ct+7vNaSJTqdM=;
	h=To:Subject:From:Date:From;
	b=DcP5wo5rZVZz1J+0uvehsZ/V6s5kl5vl8VlQ5JaQuK8mvEb0NRmzQr87LKE+vEvhA
	 IrNFWI+LsOlht5XwwkUCU+ziGZkxmpiPOjINXPUqDIwxQ/9md3p2dXjyT/uKLLhVxf
	 zF1Jh8T5zZx86SINES02UY/pGj+dE6PrzjTt4p+RLPVOA2NOhkROTdx7MHKoBTgvTd
	 ZR+ke2mbJXxaB1GmFUGnOO+yCABXEwJ7AyGFAAlrkX1PplhcX/EK98Vx1tc+L2skCE
	 wmW8U1zN3aU8noWoCHrkFFhr2iC39bxLNW68m530NysFH1RqOyijPuzIUnCQEvBClu
	 MDsOXGUy+GT7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A46ACD2C56A
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 15:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172960955364.19368.744251629666665570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f40d3854f5ff7ce0bc47e463eca4e3609370114b39b63e6a756bafb5227391a3
Date: Tue, 22 Oct 2024 15:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729609553
