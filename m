Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D315939B4BC
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 14:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768487633; cv=none; b=IPAbfYucQpiPDMRr2cZjfgB1H5AJ1Pfw+BxfTqoJEqU6JjFeNlW9GVMXNcgvyxi5eiqU8l/IIcfw5XWFyO7G4IJTxWs51rzWIVkQLvcjzeOHPTIKnmft5HrSkodsaX7PZYr4PL6RuIDAMQrxYTcA/Ca24XFcqGs4nAYq7JFY2o8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768487633; c=relaxed/simple;
	bh=Q/1ePi9crHP/MDJ7Hry9eUWcyNVq/FDkTHqfdn2kBEs=;
	h=To:Subject:From:Message-Id:Date; b=NsfTr299RWjwFQ1EA+riLAvmtzTy2Mq0fq/qc4WepEsNwTknmzREj4UnfJ4vR6jV4zzLzpWvjO3lS57TG+JkMrmGDcPLR4f5uEp8TRrvjprtYxUgEbBrGWxHjAmRKPmfqtHrYe3ibkjtrxPgF+E21PnlWCFtOnl0K5kAAtmpzsE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u2YMMlNf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u2YMMlNf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA5D7C19422
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 14:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768487633;
	bh=Q/1ePi9crHP/MDJ7Hry9eUWcyNVq/FDkTHqfdn2kBEs=;
	h=To:Subject:From:Date:From;
	b=u2YMMlNfzuko284ih2MFfPgF6dwvYwtf6yFGC/CPVzsF3Y9pUMu8d4Qva6bC/PWRZ
	 cacDEpabInlWayHAv1ifLXq3phVwSOM3G29xCXJFsgX78rcSW/k6t2WizkO/JaEMBJ
	 PcQPmvharmGMIHgLO3VkqqS055xDO9Lz3SXGUuZEux8md116DijQcjFiHrXsxWwCzE
	 f9iWTZ8d+F4XLTdZa3vN05XJ2nI78+Rvc1dE6iGBobACX7C9OmxfGWUkSZiiDuRhQd
	 TL7sr9qJkOPaMs1K1zUfyEw4NdYvBfNONvyhR47o0LRVz4bMpMQFEvjkVL8gnfmVoi
	 V87pdeqjZ5kTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB40D44C54
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 14:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176848763358.9112.15308259687102481163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a689b453eb595cdaac7a1fb52f9753bfa2330fea902f164e90e07635c658e9f1
Date: Thu, 15 Jan 2026 14:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768487633
