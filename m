Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30F68537E9
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755047394; cv=none; b=MqQ3C6Zhc/7+tYjb2MPpoGK+weew64RHi4DC32WRvq4rp8pIoLw19GM4BQwVeU6DxTzhQG9bYXtbUbNFfL38fEripDuSQNMU/H64op+F46jtxuHtMZtdMSLENDeYfeBjRyxTNWXJc8ZifkZBjeaOlu5KdSIA9B+Lh+c8f60kzxY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755047394; c=relaxed/simple;
	bh=P3O4Gz+2Zgj21uaqs17Yh+K3uLMwUj/W4JtTY0/gKds=;
	h=To:Subject:From:Message-Id:Date; b=XjREn3kSTog97j+e/5HqnGFZ2VQU1HtX2g3RP8xqW2skv8LFRnExlExQGSWpNOE4qU0XvOIBCPoczCpl7BSkgAZjpeWUSDrpXH7bA5t9Dc0mkIosLGZXG554pnpDSXownVde701fv18EHKNrVVTkhSd+vGNVYC4Pp176QH+vAWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ip2kBWEG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ip2kBWEG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A16ACC4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755047393;
	bh=P3O4Gz+2Zgj21uaqs17Yh+K3uLMwUj/W4JtTY0/gKds=;
	h=To:Subject:From:Date:From;
	b=Ip2kBWEGiYjS6BcEPff768WEJuAsl6OE6aCVZpCJRcT3/Ripos6N2CEH2+ZUcSpQh
	 wb+DL4qIZlnE3e+m5iPF656p98jU/EoTCjD3vjl3HgntpNfDo93BGFfrJEOuEHgNpO
	 Z4430VSN0b+AN01rui2EAUCkeu+vZi57B8vpa4qY5xCc9swvsR1XzL5vdcVFAxeagL
	 cyxnIFHad+HMo5nct5DMD0gNLuyLMqC31RrXcbsrOCon507c8q2LwlrOncqQ0MM9Bw
	 8B5bATHNIkKWhvEGGc1OHaYmzh9cxGv4M/MlAcAukQmmYQ5wrRAzgQNlWgQuU0qp1L
	 lxKtjayZx+Z8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9341FCA0EDC
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175504739357.22326.12196987413422129132.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccbb52bc74eb9019f56b7b8464dff46f60ce77470339f0289fe9f77b496ca1e6
Date: Wed, 13 Aug 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755047393
