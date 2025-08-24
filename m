Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F067269806
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756041594; cv=none; b=iJgoQlrj5e5e8ohFiAKB+sgsNuJA3INCvKdqtWfLGH9CWRDV7ilqC6YaVBQIAGr4/1Ka9h5nY8QvIAJNnnrOTCPcyX4E6q6Z9awBu/1imXK8J5TuZlr4eDoM7KImIMJUtGIj94TQewj4kesk3Gw0G2jYKPKrpCQTduRk82YXwmI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756041594; c=relaxed/simple;
	bh=PEg+vXLuHUhGYEgypS7/SqjF0a543unp9I2w0OiUkQ8=;
	h=To:Subject:From:Message-Id:Date; b=Uu/602L/2dMNGkI8zMDXP13mjtNc4khTwwwwQmm8AARlD2nlcL1GiuFv9EuqmO/d4n7bZLVb2CrEeDWAElKxarI6dd78KPGzZ829zPTpDjZBz6wks6ptI9XJPpVdsqoD76UuPp16mKWPHv4xE+foHFHj5EqbFJzwAaZGgmz0APA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cwpOWPdv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cwpOWPdv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F7DBC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756041593;
	bh=PEg+vXLuHUhGYEgypS7/SqjF0a543unp9I2w0OiUkQ8=;
	h=To:Subject:From:Date:From;
	b=cwpOWPdv8c/MoiLh5BwiPYQhc/geJq/Eek09UMEQ24EAnOOAidEUPMPQzvZFFtmyp
	 GKVU5SMPAIEAcSLA/Tj9Hj9TBUiqdg+Ngq/H4YIgvtkRWCVHyD4SzWj97C/ecyOA9X
	 V5Zll4188S0FZk5Q0HDOJ7cDmjHsrSrhdg3KQgpS005mV2XoTEsbT9UejumzHFnrrg
	 4M1IvYzB2Nii5x8u1FQKAcmpbp7C0BGhbrsj/1MWbyym89MjVCEnTM5YU28ZmbzXoR
	 U1ttXVmmQFDUACHktnRrDj1QWA49NnX8VK6djthPM2CvPRo6N0IbKL+oZOB3yEybAX
	 WqJDePu9H2sNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAC1CA0EEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175604159358.30518.11316081603867088425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a8f8a96c0bed70a67df491b4dad989bc3a5198ae59e536b72ed4939e1351799
Date: Sun, 24 Aug 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756041593
