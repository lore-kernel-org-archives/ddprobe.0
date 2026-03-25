Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 165A2342538
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 22:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774478694; cv=none; b=dNdeZTaVTajb6VorcBBN/1RfoXbkF8meUo7dgnSMSCcdPoiS5Ulwbvxz1v05UMzQ9Ffjk7pGTfZjCB9Edtl9i8cyZH/TU6pjViRa8tsmk2AaS+uXzU9oTYZcOflC0vrKE+7GtRiCx9Y/Sd+szj6lWQ9BCc71M0GeSDAof6l8+J4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774478694; c=relaxed/simple;
	bh=YgF78ELZY3h6dTm/C5nJDdr+XQMgpCooQJEsGekmmGg=;
	h=To:Subject:From:Message-Id:Date; b=m6HEr14ZGSaYgaBtyCPcwT9IHTBI3SGpGbXSyz4pPn+5ho+rLbrUDD+yKmrt1F+vAHeVxIo8bMm6lbSJc+dCvLdmmda2dVa8GW6HQtmZLBlMOES8rDjbRki/PaMB95cPbfAykYMLoF5/fwpSMZd8jWPexDIknOzeSfZj+6ocy/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qifhlVYT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qifhlVYT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5FC8C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 22:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774478693;
	bh=YgF78ELZY3h6dTm/C5nJDdr+XQMgpCooQJEsGekmmGg=;
	h=To:Subject:From:Date:From;
	b=qifhlVYTvkdCaQSMI/pRZPdIx9LQKARIBYmtBSXjllRCXyFXQknQdk2l8wmxW09lm
	 jU8qdNsIo5FQGPdtEBfsRUVZtKbC4Mf3/PxSCN1l1Y8MzVnSMatV2JsbmcoNCKTfMB
	 w9Q5lZE9x6xo84/JPyGqk8anJfxE6zMuscOUbjdIUNId/Gl7XZk3C4O2VUwmONtq2L
	 XBRYBR2f08r7cWmBeXJ4pHh4pRcN7oY1hOS+Kon1Oyrzaj3Gylop3gCr6687QcTGrs
	 l1kgCVH1rnqdxIDaqArlgSuvIwVmHE58RYbrUvykoXm8G1fGC5n31IbhXbD/C0GeP3
	 XJ69x0fHhn7Sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D7C109E522
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 22:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177447869358.25508.7156682788996974615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03d7bce18fb7df63976d431cca92d6c570e0eda24a3045aef9fa129ebd44ec03
Date: Wed, 25 Mar 2026 22:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774478693
