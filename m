Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FB6B248F6F
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 05:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775108134; cv=none; b=RxJ1DRaIQYP3QRal00EB+Rs1bKsB/GWcgTbDrLdlBvXb3QFhoDTmybPtkIM+B9qh4QA34iT+ZpANXewuNPrRVw0s5OEDuQRjEFviONvBUIotkGw8cKSla7s/zrCI++MVBw4IDS5cbvFKBrIIKyspQAsQ5rhkmF2DXZc9gl4exZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775108134; c=relaxed/simple;
	bh=UAUd7aaMsePbLwlJFLGgpB6ZXEeBmSDtnRFtV55QHfI=;
	h=To:Subject:From:Message-Id:Date; b=a6pvQoGwOVerCxpwoGHLD2qbOf7FhqexxEs0Ea3HcRF8nr1ILZP/2GrGxFE1WOt4tyH+KsGMYT+SzPaQCNqjDBGeodp1uogMNyyQ40tBUnUOPw3EnW1w+9UEhHdlyaBbMTsYMd0aqY6wKJ/FR4rsC78GmNnfob1JuKOXV+/6W1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E6AZLpeR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E6AZLpeR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA8DCC19423
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 05:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775108133;
	bh=UAUd7aaMsePbLwlJFLGgpB6ZXEeBmSDtnRFtV55QHfI=;
	h=To:Subject:From:Date:From;
	b=E6AZLpeRgFIxN4GFKwKhC5HQbXfqLV5zt4OwFXkw0v12lABOnFQ2cINLHFGsrmX+f
	 dXmqsksbSqyGEqoXmp3JQYSJ8en94mZoh5g/IYdCQSLpHn+uGmJmHSr5UncaGFdhTR
	 t/8akDu7Y977qE+OcT5BzjMHV0jxjdl/TGdthCRRQiTNT5Sm7EWv5+BWwaJeRUFS0j
	 XBoPAA1tGus1+aSP1JxL+Y/M2kGR0iCwtKF7uC5wT2CJDAXcPQK0E8RkrTDT8XRNQt
	 CA0tp4SN8BXw0CQb42sUsj76YSGBbNNcKAFClE1NgUwpV/zENpRTpdGRWMOVMjtxfA
	 6jF/3ou6KyJgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC81BCC6B01
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 05:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177510813369.27715.1889503983687520157.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5976bad8193d54de7d421504983fbab3b197ac6fdec197b99e788b9c6e0187fb
Date: Thu, 02 Apr 2026 05:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775108133
