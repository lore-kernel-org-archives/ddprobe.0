Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 404A438759E
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 06:44:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772865894; cv=none; b=CuIRf+1t8eewZp7RHhKIFkWnWy9WAi/639uzvi99VytifWWrvqLQYzJ+c8feoP5BlBqj+E4d02V2UR6pC24L4RM0jXnvxyqAgZLvwWoHQuPMSh5XjVa/gVbw2L3+5oyyxVdNuEGBWEFkT+fix5nIKfrz2Aeax71d8btuZLYYlZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772865894; c=relaxed/simple;
	bh=O+J5qrwTvDHgOTUGE5qsxSZVf6Diu0WHXc4Nzh8WHzA=;
	h=To:Subject:From:Message-Id:Date; b=RcYRPebPo0hmAcLSuqBLcM414TvfHf5MlJj80/HCqR2YzZ/0iQV0vcMER97fuJUqITgeCvnmbZS051WXhNv3+rDIZnTBetqAghhhm4z31B3nJFlm3cXca+aZCqTK3QBz7Zwj/ezLPlKRU6UEUIDYqykJbVKedf7B7iNOT012Iao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jWKAl3B6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jWKAl3B6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3F6EC2BC9E
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 06:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772865893;
	bh=O+J5qrwTvDHgOTUGE5qsxSZVf6Diu0WHXc4Nzh8WHzA=;
	h=To:Subject:From:Date:From;
	b=jWKAl3B6WizttajuW7RWK+pEt/mYY6aiCWG29h8Dqezx+P7G6hGhyJnaF9EKkGXiA
	 DRJm1qxMiUHFRd+W7mBa40GQjnAZ49QwbbmSEagyhUGCtJWqI7FgiRu5DxsQ7TKCMb
	 ol847DmleWNsFVdQVsBmc6XbwXIrFHmGPkUhei6SRAauQL+YkeIL8PHLB78TU22B4i
	 sB1i4SrTmhUNLlh6mIji1On/zhSUmt6p90zl/5dIA5w814JyG1/D5MUBRLVR17GRKw
	 fAti9R0YIsZquL0Z7BlJS2ndsJlwrXZZcVRFl5umViz6Tkef32IKdmBbuSYAJBY+6g
	 LMKst81cQepmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2600FC9ED7
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 06:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177286589368.27932.9147867579223873229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cf3bf6f0f02a0d17962806ee75ddb00f48932ee45eccf4387c692328648c5c3
Date: Sat, 07 Mar 2026 06:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772865893
