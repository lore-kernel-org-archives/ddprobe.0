Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C01616DEBB
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 02:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727403354; cv=none; b=b2vsVnnDcOVIyooSp2X8pTT9kDMmzZWmmuY0PkwG4NoV28WskVuvp+48quGRiRciBKVNg8E3zwiyLzg0HecraZxwlbXV7EQBdHb9epXFaMP4kLnm9Ad2+V0t4yRCRzaD/jF5cCgc1T2fBkmonJyALwAxBpbKY0FYRkjVN84utlc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727403354; c=relaxed/simple;
	bh=qzZJ8IBa9eAwLp3XXHNvq55RRzHSttB9FHsAPKuE990=;
	h=To:Subject:From:Message-Id:Date; b=oAH8EFxgbGpPfoMeQDr+6AhUN0SOT+XZNnRJEN0wEQIFQIPbJ0t12uMOwj7yzYyvGVqSCwP2UlSw0LF5w7intEHvPuQcCmNwrT3VOeuFPYiKk5FsTswNZRXgfMPEVIoEO8UeF0lHUBGNsQFq5dRS4ROSH9gd7x2Nd6+a5Xm5yfY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XqbjPiWd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XqbjPiWd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFDA2C4CEC5
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 02:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727403353;
	bh=qzZJ8IBa9eAwLp3XXHNvq55RRzHSttB9FHsAPKuE990=;
	h=To:Subject:From:Date:From;
	b=XqbjPiWdyf0igmoV25FTyBkLEPCdJyOr9f7NuvYLmBUBR96NQC7K/eZF2OdwWG2IL
	 NVhRVpTXtr5oPh7wTJOAhjLzAWUcnQo9vuH7tlpoT3M+M5JnXQEy9E/4/Vr09uO/O9
	 Qe1n2nT2udD0xoYAiGmBYmAma+iGsUHPry4BJDkMekjsb0Y5w7XMadSNOg06WTpK8/
	 45WC152Hlvz1vfsNwwCxq9loSmiC8hCXwDpTdRPC9dfAnyH9/ifAZNAdcQoDJKZN1p
	 E/6uTl2FiUZfdzLq3yaBZJazrofzuZ0w36sKqZdJ8FR5GcKsjssgD6Z6tsetgvuO9F
	 v/PxzdMPHbMog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B99BCEBF69
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 02:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172740335362.12421.3703152338216526968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24c538a1dcde858bdbc2d922cab896c6408c2121b2948e7d2ff7adb02c85d0a8
Date: Fri, 27 Sep 2024 02:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727403353
