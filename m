Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4532028E3F
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749112194; cv=none; b=cSoM6whiLTpOz1sa2/wfq9mKnWvVi1tPuOUXJjBKydwmmvuQjB5w4pC58hym8NZg6W9QYqnsb/CxwblB2XrO66NgbB6DiEFdtr7WNSTVSRPc9pm/lHesSSIk+pDKdTkkiB/I589CqipIXJR6EIfOntJBdIKNUJHFd8x9ELYqjNk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749112194; c=relaxed/simple;
	bh=FGmTlAHbm73uLhyWsVyw0F4W4GcSEwXTICxuD7mNYhM=;
	h=To:Subject:From:Message-Id:Date; b=a+cgNtbfqkBo5eUI89NdDGdV5dxRBIZHuXitKlDLcSkZ4/7xe5kx0m5MJT1vPJR7yHIbxuOzxvYTJdL7XMuJoZf+dAfC/Gv72aYnb4mrqjQ8f8eKVAlzMgDgZmelGiCJwKMYFNanDlJjKyzoEob8bemKo1BXWLksrS4P8OFyPMA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FlXPqQMZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FlXPqQMZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A64EDC4CEF0
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749112193;
	bh=FGmTlAHbm73uLhyWsVyw0F4W4GcSEwXTICxuD7mNYhM=;
	h=To:Subject:From:Date:From;
	b=FlXPqQMZf+8TgBY/xoMQvr1960TyNMv1adij8T2kwprixGF/f4dNvSO+h3b9Bu7Fx
	 TQFPeiTDwvGXLnlciZWCFq7wP/W06w19Aiu7kamoM3tc+Fm3kYHPPhATnaA9H5iX/F
	 qkuX609x+jl8xWWlFJ1WrcLEdl+c4NKm9nRkOTFW8jZYIkpaU06l3LoIsgPiFdadvV
	 yYQQyufDSjnaX9ZY6ZEwQR7Szbu0kjKW8WqieKMuZxTnMlk6efbvEGlK7XsYtwHME5
	 s7PSp3V82VljNNioKGx0Bx9UXwqSTy/yN2pki8mwduONuyEWN2O+GHA3D/tLr+Ha/Y
	 amcdIY/PWncQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91150C5AE59
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174911219358.8859.3728795438381207659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edee4b1a9e336a5143fb81f660f9b113f35b5b2ce96e2618588716af94f95d71
Date: Thu, 05 Jun 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749112193
