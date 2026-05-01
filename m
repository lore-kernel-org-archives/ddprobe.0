Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D14820C461
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 04:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777609054; cv=none; b=kmhcI7c+NuCyWDFA4CkdCA2K6SCSUxnF7lcjX/i2sZTG0X0gtfmwM2lyOGi9GId+qKFKDFjCfvPptZGjLVPcmDjqrSrwizGLnL0b70v0r1Wypd3Yj3RCqIUwxU2NZulJgJV5whqK/XNzbQCEwY13VrvS4U0mMyHpEXgtU9vPqrE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777609054; c=relaxed/simple;
	bh=aSIdpkcbbdct1ke6C7Slyu6uHZatH6sXMrkHv440HRw=;
	h=To:Subject:From:Message-Id:Date; b=BhblnYVMIqADli2qTi2RXNypdF7zzNwLVHo6vhUFurDch+DKvKG2iLt1ZCRJdkVb9dCCLKh8+DhBCTox5AdcimztP5J4aqd+KFaRXt8UbNkW/tKJzSDg5tZY0MOEisIPp0XzY1zmqScypP9iA7bfVzVYg+U7/8wW0bJA6zc8eG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kDALvsAo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kDALvsAo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C27BFC2BCB7
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 04:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777609053;
	bh=aSIdpkcbbdct1ke6C7Slyu6uHZatH6sXMrkHv440HRw=;
	h=To:Subject:From:Date:From;
	b=kDALvsAoiaaTHQPnF2eEz3IhLGHFfZV/wmesiH3j40Q0nQ+MIUgXYx1xCphgMqtvI
	 XZLDiP6rc7gtPMRui9ILyND72lTOtRPMd9KBYCtQN4RIKgvpmB+ZwoxNZmno+p+ZDn
	 MR+CGCtkvgnwrXaJt17JolKekAsitjnIRv9jnBbxgowEe7wIwbFCvZ/2KPh8kNy2Xh
	 MKv6s7OsiXt3NUx5bl8l3II0AEPOVAdxP5smlza26QsE8apPiCkjaicDJwEsdE+EdG
	 DITgB4qH6HN3A/lCk6rlAo/CLwI5OAG8Q+6AdXfGRyLVMo06Hdl2s88EUXTFHLQ8LO
	 e87Qa6gKQIApw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AACB8FF8864
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 04:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177760905368.2583.15567257744786546676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e769ce4ede327aa7dae5ccc80425d534305fc27a6c7bdebb79abb59a16da2ca4
Date: Fri, 01 May 2026 04:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777609053
