Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 483A34CDEC
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 14:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728139554; cv=none; b=pBlKQwY3QMDbXkZpvQ/nRfwmqwJs8syHLJb19fkQnDVfJpXmmX6z+2EivGooEJgG3j9k5XcLC4uEhPBsVj9/+jp7IOJFdPFGsxQTDruTocjwN4UPLZ5nQg2gkWZxDD/p6YPWNWX4V8UAGwG6Z5m/XQOacbaaIbsZFpyZbMZX4GY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728139554; c=relaxed/simple;
	bh=YbOeSDc4nfy7virVZlCEuZoW9/K1QyKQ9kcM0McYWVk=;
	h=To:Subject:From:Message-Id:Date; b=SqqBwseLpo7OEJl5eRbkkT358zZNtcct8hCchZ68OT9OoPIwAlM7GghwGgY5/LA4hHgGCjzZ/LGv7FmlDCuDEA0Q9fTOC5TbMQV9F2Xti7GUJzWCLycU6cIaSynrYL6jWSErlddNPIKm9LEbjvJCmKA6yRVokQsWrzrrl3VNUe4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dS2ksbhR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dS2ksbhR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBAAAC4CEC2
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 14:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728139553;
	bh=YbOeSDc4nfy7virVZlCEuZoW9/K1QyKQ9kcM0McYWVk=;
	h=To:Subject:From:Date:From;
	b=dS2ksbhRfrm9rgzVBZwKEH/AWwaeg8xkEj6LwhVAEHdvX73AiLi3o2Djbp3E9s+GA
	 DPdl/bQDrYKyWwJmHgNpXL9Mt8vUzV7kn1RSNo67dl7n9frNViH1z9kMJxSYaRGYKY
	 mHITBQCLw0jMIc4B6zT9wARa+AeWSrHN5TsYiow0CLXKQdpqMuNZ+CRFLER5gBL9ZS
	 Tw5wFrpipx507LDqriWcqy4CK6t1ZTJTTeelaav1SnKphWOAelZvogFiNXTrAbzrnm
	 16F2tRAEnNI3x+7e5snEMKH4OGIBj5gybTs3qXPHcd5vMBOr/N8A850bPwApAmLMxg
	 DBFYZYQGQsfMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4435CF34C4
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 14:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172813955363.27556.17551092335027323007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c78a1a32ce1be8d909be36170ef145785cd3d91952fc926d81a1d7da221bcdc7
Date: Sat, 05 Oct 2024 14:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728139553
