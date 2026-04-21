Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 248493B6379
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 10:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776769054; cv=none; b=h23ev05/jfiLdTYuvMVhP0O1TDVVfishXKiUBhIff3nIzgc7Hz81NT27fcYgy+BvTWL9V17bQO870mxuZWMrg0pOOz4VOY7aRbQZeUQn3439TC9XG2ZxSFlJ8BnSFFawfmGSwP5Pts4hh7FVP7eSSaAFHnMhrL0excBDRxqBWAI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776769054; c=relaxed/simple;
	bh=MjFsyrOIFYTU/qJ3/oIgi9v6/S/9PWhnKW5rYhIPfrc=;
	h=To:Subject:From:Message-Id:Date; b=NfLItrYR+GtZE9xqhprt0wx+Rz5Z4rar1qDAT25sberLYFBJLiHC8lvqPWpRg/hayojdSDHvMtN90TviQ25+Li7sBNwIG+dyAm82rlJBcjLAZ1csMdpz/4l8rFiIh9DYoN4AAQxYQCP0K55dRR46Cq1Nldi2DEBFDF51+T23L4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VYSCBJcW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VYSCBJcW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5994C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 10:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776769053;
	bh=MjFsyrOIFYTU/qJ3/oIgi9v6/S/9PWhnKW5rYhIPfrc=;
	h=To:Subject:From:Date:From;
	b=VYSCBJcWqHM/oRP6WJXAQ79t4YZfraCrGpRLmoxq4/7y5ncNRX5HR+4XONyWB+MJr
	 pS6sTZG8Ny940O/5E70pR7+IJV3brlO4zjYrXi6WT2l1iqPFRp3EmuaTYq3NRYB++U
	 WiLUaKYTO4wTVkCqUW342O18HI15eH8U4Uky5BioTeDQPz2hFiGO22Tqnk2WmxzBBH
	 uTzQ+QGsdr9/o5Jmz4YwyDZG/7J0Ldh6IkNq+7PUYrsusl9FeXRpyk1nLofVvQJAh0
	 sbxbsNn2Keg8+lSiUI+jxbu5x5Eo41Eu+aHYF4MqffMnRIuqNfejj1vMeOqYZsaB5z
	 PaF3EYqviyE3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA25CF89251
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 10:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177676905368.19501.2273732612639270399.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcd76064828a4e12a286d5d4b1dc9918290a68559d5b07abcf7b2025b216bd6f
Date: Tue, 21 Apr 2026 10:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776769053
