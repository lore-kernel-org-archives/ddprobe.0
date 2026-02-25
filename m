Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAF1736F40A
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 23:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772060693; cv=none; b=BmwNLoGkYSdo97M5RW9RpNjYIzsckzfp+n71zBmF09W9mPn6zxCrE65rO82v2bm16UGxL46nxCKGfuagO0tFsFcm6Id+qqvLn+GsC+dQ9ZNRYxqGxA9FdYFoJvqPPIWPOAb55EiLgcUk7kuj0Q+xptmTOCcK5p5jNVzQ8K/0cqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772060693; c=relaxed/simple;
	bh=3sIrzI3LhekOd4Am0Uy+3e7CEei6mbu7rFbTS0PQEEA=;
	h=To:Subject:From:Message-Id:Date; b=KyBwDyPrHioS6HRIOfPYLVrv2UsmN0GqU1kUAmW8b+LdVUERuiSKRr0FLkZGb2I1ri5wKZNshIjFSu4/FQ5wxOjXIotfgffSMGDLY/QQBI1Qa1F+1p/VTYfyyR5FghzFT6csqmTBSSf6rbUWx9bR3gqk/WsDZmgMS1tL7lmeZO4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fSD8oSje; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fSD8oSje"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDCA2C116D0
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 23:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772060693;
	bh=3sIrzI3LhekOd4Am0Uy+3e7CEei6mbu7rFbTS0PQEEA=;
	h=To:Subject:From:Date:From;
	b=fSD8oSjecYvxg69s8GBVh9Zu44VDSEwVdTz7U2/sfPUQoSPxipCMJYyWoqowLeZ+y
	 YgodDwhy0VMwNvf+2Jmcv3tuSLNckCycQ7ohAhCdomGozteg3OGXOEHRNAUTLaQlmd
	 qiGFkiBDk4/fb3pCiKKb4NT5uAKLUVyJ2WOG+S4MCtD0ntfsV9vodM1QGEMHXnsK/P
	 fXTyV9eVc1UcqE6kKG94gTKGboRMczEQcsypoJxG7OaP3JjXuimBJT00qELxLxRG78
	 00bqvSFs/CJiYw/gz3Za4ZschOs3p6IqfEqmPI6UMGZe3smq7Pts1CZF4L1Yr7fM/c
	 bWqEA5plc7WFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D4B6FD45F9
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 23:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177206069363.815.11017562575702350766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9338c253cd6cc8eb2416a1d03183c47d090b5ad05a2a780e6e1a0c5fb42281ab
Date: Wed, 25 Feb 2026 23:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772060693
