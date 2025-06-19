Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AD8030E83E
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750361394; cv=none; b=Bzpy6au5V4U96sqCnhu8qY4oq8ZSgFX1yFBxpTLtoj59nSkdcXl46+vcTo4tssF6S2TkZl5hy5U1H7ml+l46h22MQBfR/N8C9CdTEykAPCDhfX+vOGg2NYQYF3Dyb3e+vonzDW35+d/3w/oUFDfc2Od/+QAYxmJJ14MPdKbG6GI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750361394; c=relaxed/simple;
	bh=7VtdY6wOw10AdXReQfJPWs63muNRR2VluXv0o6Wr9hc=;
	h=To:Subject:From:Message-Id:Date; b=kvNd8RIOMqrHDHCYnjceqM8rXR21BhtDP2bQho3OSf0KylnLsWPyzIhLMU+GS9AiRNqRifumRd9YpGXnO7YxVpzXCppCvmeE29lXoGDmXBubAGPq+SkN2JVQ3ckVl3vNnCGF717pA6+olR3adOLZPKaZS1FObCJKZ9DXtKTNLlI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hLPp08pu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hLPp08pu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C4BC4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750361393;
	bh=7VtdY6wOw10AdXReQfJPWs63muNRR2VluXv0o6Wr9hc=;
	h=To:Subject:From:Date:From;
	b=hLPp08puGjgxgmKgzLkTygOSzvAuAw8hTBBqpeR4vfWLipyE84kVfUCM/2RY4oFTh
	 JFbjkLkXMsS9iApgjZAvoZ3q2P1f5H4jqHARCLfTacSVY99pYFNlQ9CB2CKUhlrMek
	 H5FLUx+Gzt51pVWVRDKAwf5cPA9x5XRnW+eKgYtq5mEreoGRZl5yCB6BzicmZeYWhG
	 Z3ZNM0hktTEloFSws7AsLZBN2vOerVfqobdT31gLaTStkyhm1BRxtAfHFCxzXXBSOg
	 6L7ek0ZRABova9IA83tn8dv0Fhm8rEDE6CVG9a123GBQNR/78pHr0mOFRv2C3Xtmk8
	 TKd7dTKd6/OxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908BEC7115D
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175036139358.23486.6741497590959163968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5851a2524bbd1fa253b5822eec50b39843697b1bde800380db0b4765b5c76872
Date: Thu, 19 Jun 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750361393
