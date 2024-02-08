Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 037567E770
	for <ddprobe@lists.linux.dev>; Thu,  8 Feb 2024 16:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707409697; cv=none; b=KS4mP8cj1cC1P1MwexZLcWnL7Tai/yrEdepomZHRsHf+shwsWqKxNrg8SiHo43dfgWQKbAlz9DqSh4Kl2RhlkJKs5iCJnk7eY57pMTEl4PiO4vNqiJOplXTHbCFePsYtpZdiRMDkbheQz+FlFRh2XFxf3yJLivoUzXsAowH+8Vs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707409697; c=relaxed/simple;
	bh=jzCO2Y+ed0ErGkvtZcrBeiCmTIY1QebeLuqKCfOIuao=;
	h=To:Subject:From:Message-Id:Date; b=MkZimgOy3SVOh/s8hZYxzWmvIgXchrRNE08HjDDm7g/nrpnAb7Ixqc4JMAosO9xe5bBYXnH2ngQ8G5+W2wDZ3yM0RL1msOTkpueojJXVUr3ba19b3E3hdKaFLQ19hq54lVB0xAB/iIhb4rPxnHVoIg7j3cy3ee+9v8205atjjfI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kk60enbT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kk60enbT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A7A4C433F1
	for <ddprobe@lists.linux.dev>; Thu,  8 Feb 2024 16:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707409696;
	bh=jzCO2Y+ed0ErGkvtZcrBeiCmTIY1QebeLuqKCfOIuao=;
	h=To:Subject:From:Date:From;
	b=kk60enbT3c4SFUd2gBus7D4WnWQAhDXzkEd3MNPNy48q8uPMJSYden2uVzodMGsxx
	 mARPeYi6WKsPjFHbj+cSNhHqOXQnRGP9EABqVY+PDvx1DjaIVHcmsWYyJyBqM3aLme
	 jxjN7UPrk8DYOXjsDDFI5ACXZoIIVP+NVVFYgueuIHiGOL+cDwC7zF6+VLeE5UfsVR
	 +Co6ds++2puZqFUfFg9VEce3hlZ3x5Rl6xHX/pJ7Wdf4IQC3QKTIL39yCrH2/28jXR
	 aBCs7T2iI1hPTVvwU8GqSEu2A950/3wbKYby8Fkp+6LsSfRMMUhRyO0ZrRk91Vj8bR
	 MNeIq+Swnz+Jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D09BC4828F
	for <ddprobe@lists.linux.dev>; Thu,  8 Feb 2024 16:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170740969643.12650.17112212355934705475.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28c937c2ad50ac8c6bde0a6974f77eaa53ff1f0ce947f113f689a7fc424831cd
Date: Thu, 08 Feb 2024 16:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707409696
