Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CEAF3A8740
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 08:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784880634; cv=none; b=r69I89WexT06N5v8ipoHshwLNW+NjbMASwiAwnnCSQzufAjoqCUghHZJHw841t3T/s0b36uUu1ZdvjrV/Elm5WDXRtcidnnYic9xD66urJGVu+27ZLVtffhbluLefGXQaJSkUKz2YLelJrerh9Bhy7TNUXTBuMFmmsSLoFJTlQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784880634; c=relaxed/simple;
	bh=/ODtTauuNgEh0BZcDlfMmdHNR0DaXFiV66S4E7PGv+k=;
	h=To:Subject:From:Message-Id:Date; b=OcqX0CWWcTZlcXeiFig0b9LRlxFlNlmCgljbqnoKarB5gJk92BCS0/XmDJH7UCb1C86t995h/Ccj9Ich2v3UWa6inAzPjUXy0zIASHlFlZy7Bneqiydb9yffUmpGPFu/Q+ltUi/T/YbUCgbE06DGMBjfrNaq1a5gteVmyUTk63E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J48o8reV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J48o8reV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD32CC2BCC6
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 08:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784880633;
	bh=/ODtTauuNgEh0BZcDlfMmdHNR0DaXFiV66S4E7PGv+k=;
	h=To:Subject:From:Date:From;
	b=J48o8reVAR1fwDrUi1QInLnNrnlZzOH0ePIr+6PS/gboTeOrKDemI2ILgGK4aCnKO
	 +0wGqoIHsXE41cBaKt37VjOUJ6wa41r8+FhPsQxDY19XxQlxGvMR4LB5zAIOu5uKBI
	 D5SJ1n+A481//kVFjvBw8YLz2ESpNLAYdf1s7My7R6I5kikmMdhjq/+V6u86bL8iHV
	 E5YCurFSY1B3/DUrdlE05wlUmDiyucJleE3sd8bVCZTEldixe9WBaVvLye4K4uXDik
	 fptoF1ML1pt9fX3Fk3ktqUC1ca7ob554Wrdaajn2z5IUOL1mo4lD8moZZowlZklH//
	 d07o3YmAo0w5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8A51C531F9
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 08:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178488063368.19908.13411241429898829399.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05d92e1a95b416e6e09516ce9006aed50d3c0e87d91f00c9e80297e02ea57d42
Date: Fri, 24 Jul 2026 08:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784880633
