Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32742200B7
	for <ddprobe@lists.linux.dev>; Wed, 28 Feb 2024 04:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709094497; cv=none; b=Mu4eUHcxyoJuPYthtR1oPnSMuzM2xUixTqcrSnHak8dtar5bg6uOC2vLcr7jzNuo4YNWRhZiCIsz/IPl2RvEhkCOmhDsU0XrP7YqPfymFBiqHuubQL05HVbhwGdDjUhAK0rNvnABA9IN/Emwt4Q9i/y/VKxyZbijHgjvPizWv5M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709094497; c=relaxed/simple;
	bh=J6bC6AmMY3osDUzkBuBRwMTte70jfRSJP6FCsjlSiQk=;
	h=To:Subject:From:Message-Id:Date; b=Aiu5oU9OevSWvM02b+AL+GDKpD3n9fjIHh9AnGd601fXcjuirydCQaYeUpWXKCeusrW4g500d7wWQlrYbawW/RZjRzBJ4SnQf0CUw3MyT3+3CD9SCx3BVcNfBJ/FBvu70yrvMoGI1bmwFjngOLb1jRQjzBwcEOb+y8ehfgATusM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AvZBkVIq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AvZBkVIq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EA7BC433F1
	for <ddprobe@lists.linux.dev>; Wed, 28 Feb 2024 04:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709094496;
	bh=J6bC6AmMY3osDUzkBuBRwMTte70jfRSJP6FCsjlSiQk=;
	h=To:Subject:From:Date:From;
	b=AvZBkVIqV5KyGvhym3rYhtdtTHEI/cteuN9x31VBLiwIxqbkqshAmiZXahnUzPc3q
	 loz8IHD3fWqPGX7kmYDfejUrz2ffRyHWBlo8TMe6yzCnvFqCpWnV91+OxQNwmFG5tR
	 /eoAeF/xgJb4D2hhs9ygvEQm7SdPCK6Qs6k4ab2ngycHM3/sMiaAy9OLQ423ifHxEB
	 Plzu06rrwznPb2BnaDA6+NxZ3akUDGZ1GNAbTP9mRNlccAf2Qi+OEMu6mP0H84fTGv
	 1IfDm2Zd0X+X8z8iSdIV1TNMwKJybwxUzfrFodidSROlPas/unA26L04za1Fwzv07z
	 tMGNYkzlWE4zQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 81DE6C47DD9
	for <ddprobe@lists.linux.dev>; Wed, 28 Feb 2024 04:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170909449647.15460.8175937425216677419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6f6445bfead028ec5cd9259a6ad4109fdea2cb034817c884d2a3c39a6ffb73e
Date: Wed, 28 Feb 2024 04:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709094496
