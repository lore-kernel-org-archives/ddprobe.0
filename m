Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33B907405A
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746029394; cv=none; b=pTWpXiBHTnWOXNKhAADiVJipPX9CdbvWIzmXgVBGC3PBcTzUR8JoMADDXzR9meNvtL+2a9hLp3QFcDschj2SIaeMGV/7nwxpMAXRZRgDgizTPU/sJQPKS+ZDX5YQ1npebgH3pgphSvOKwAYVfAcNy5fW5IQN9Ve4HC8RehNHP9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746029394; c=relaxed/simple;
	bh=bFHxrJlt2AoeFP47Wt7isV02LgaAWma1GHAbGglvJho=;
	h=To:Subject:From:Message-Id:Date; b=M46JewvfTGhKoNp8d0RmIqoSC++lQ1O3+H4DxtPROOhMZVc115Q4xCvtT1YEa4lkjMjFlz/mnikoHgop1xKi+9k+S9mmotAZQ0UABddgHicgWoQctbgvJD/Ka383rcgXsB3t9nuNu4rrQr9tI0CWyxA12bYb9HAxrfTeU33Y5Lk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EJUS5Nl9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EJUS5Nl9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DA55C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746029393;
	bh=bFHxrJlt2AoeFP47Wt7isV02LgaAWma1GHAbGglvJho=;
	h=To:Subject:From:Date:From;
	b=EJUS5Nl9hXRrAT3Ogz3Hhz5Yz7xmsb01Ym3ueGInMMPnvMJBPyjCcFNfDz4cSIwpR
	 aLkNufvotEMz8O4FUEFcErWb9WiOcFRuRf9Zx6On34S6JIQK7RGRqJDa85Ns7wq8O1
	 tlnBYbZBfVWvlMExreKz1CTrfy+0+ByXF1uT3cIpLgStDu1DJ8fQIL5kHbuxsylvQG
	 zab1syPNH5NeJRpGnctCNfcnzEsOtnktwvfyOmL302Itkjo2PI1FWsAufzI9JgGAvA
	 Jyvz5cE+tycont/j/Cw/VQhja1yuyBYDzDhVv9QfdMY48PKpNgo70h7S4NABeUikdi
	 /TB6USavRaUGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E6E7C369D9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174602939357.15628.16319353307747467294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fdfeb1bf7d7d8982ea6932f7282ea265aba65c961d43b1ecd0289f1a5beea4f
Date: Wed, 30 Apr 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746029393
