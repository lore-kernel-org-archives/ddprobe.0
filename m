Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6891022D792
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 15:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781451994; cv=none; b=XocMRD1D1cQPuTkNbAS3OpXCVVfBVK6ucduvt2ufH/YBL3V4Tc+PN5irBPtjD86zbSVDxB3HVZYaKVRki4bxQlzfytahOwh7xX5m/GtsaDX/yoXnBRtZYdibLSz6QVenosaduiKFFUprJyHx7rIAqq+1FKHihcwAtfsNtE3RerM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781451994; c=relaxed/simple;
	bh=au0kZ7NOXFuNd31AkWCCcIFNXW6zHhuPNe/KXViAJbc=;
	h=To:Subject:From:Message-Id:Date; b=I+XCp2vOiYB1fv9qCJrRwXNGpijVIpylAhuBZ+2kuMSl8g9IRGRbWmuMtyjj60mzY9QdeEFcH22wM8WOVzCmYrvh64UEbJbOK6fjVEtPDcQ0ygLkoY6En+IcA1XEOlUJAyVwTL7mwk9ieVUWk9FkSSW4A5VgNs5jOYSqLyPuJF0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ashl4OZI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ashl4OZI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C721DC2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 15:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781451993;
	bh=au0kZ7NOXFuNd31AkWCCcIFNXW6zHhuPNe/KXViAJbc=;
	h=To:Subject:From:Date:From;
	b=Ashl4OZIZwtY9u5pHW+h311d+zHVX6WnuPftVXIFxHPDiVsvRdM0YLBIQx8R6GUz7
	 AONfe5FzGhdVIw9lMPMCR0lqL2ALGeYMqOCxGp5lE9JDr18xVB3TEnjaLsvOQCDCYI
	 dNGr5NrATnJh4GaYMqLKK2YwDgSWRDd7W6loiIjvQSF3+BFIagK6T2ZTjGJEEMVhK9
	 YY3i8Z760fMXpizAUkZHILV2MeyFco4/8vY1XEqTdh01IOJXv6I9somHcQ515QkqOI
	 /iAxaozGoXInIpa210NCPivkQ3Y2npziq8aXcX0SYzI9azxD0eFIb9Swop8B2Nfd2O
	 xPxqylQj1OUsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB882CD98D2
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 15:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178145199369.11901.12216974206708867283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e1ce180367d62d42d3b05043f17d7ef7eef40c50610937d1b16b89206152b7a
Date: Sun, 14 Jun 2026 15:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781451993
