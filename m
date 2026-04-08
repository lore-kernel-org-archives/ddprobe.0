Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B5C43B8D78
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 13:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775655334; cv=none; b=PAT6TYMdsVHdIyECegmBGchFUJZpmx6aPcfFITaaJfd80jr17qAELUqa6DrkmX85Q049QhnRzfq2mNqsWjOtMFnD2PJdUn6DRwfTXSSS0qp7n7liou0OvOcFnL+Yi6caoAXqaiaUGW7MY5HIsuBRQtOWTWeT8XjR/mil6umR8Tc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775655334; c=relaxed/simple;
	bh=JLM7heAG6d2HGl1/gU866dztxcJyUXPUuM1mCfIfF4c=;
	h=To:Subject:From:Message-Id:Date; b=Bn/riyjMWQWEvPTQt3PPSnMnnNgAbnK/Kq1elG1QZbXHvk4DsocOnhzgGlwHbaB3ir8f+I2Tkf5IcZPwQBImfuPIux4ucmzvNyvw/veHCANljIA6bftPNS7SMBH4VjZC/a1pet7+5T5gguGuR8mXGSlv4PMTyMOuhmP3sIUrs7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XgFRbINB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XgFRbINB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA4F7C19421
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 13:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775655333;
	bh=JLM7heAG6d2HGl1/gU866dztxcJyUXPUuM1mCfIfF4c=;
	h=To:Subject:From:Date:From;
	b=XgFRbINBAKK5Lt0BGdcGHtpaY0AfalaUCUETDdSMvIXgNqB09bCL3uxM1+wXVTqhC
	 6Doo3Q3aNWsXN8NAj+fvJtp79BSNmC5BPJJ+PmeM9uo9VwhAfTkyBmXpYDtG4P+IJN
	 DjmbmkzL10+Gz5inz/MG5G+/yeLNKDL0iHBY5OP2EOfAE/AmZ041i8pnKqUpTFwhwd
	 gcUrHRxqjSc82SNO1NqKJzIO1eEQQwaRxaTXOaaOpj8/Muez2GxuwUggaFwagtTPM3
	 s0x50mQkn89uFLkluitUzN+85uyC8uhII1CfqO8DqTzcEnM4vCi1zJ3dAJWVE99odR
	 Uw7v/qv+B4fHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC581073CB6
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 13:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177565533369.26822.5665938579125717519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b39b3a558b1110a9d17fa664e2266bbe054bd9b357fe80d31cba04443839d02
Date: Wed, 08 Apr 2026 13:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775655333
