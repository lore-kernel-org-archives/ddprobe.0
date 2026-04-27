Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DDC23B5837
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 10:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777284454; cv=none; b=KLI0B+JkM0FUf1ys/bNhd0RmlKl5OH8E8Er6mgOwapl8beNKmhl0D1e2bdm8TG4wmao3tJ6JolWgTN23bYvgSCRMRBKFWTsVA0vdjmxjeSeL+Qt6/D/HdAZ8QEWA9bcXixyNL+XfRFySCGF2pGzwwVdMXDFOSQAgCbdMOi1G26s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777284454; c=relaxed/simple;
	bh=fC/HKS5I7dTRB5i3TmCumuc5o+lBTQYd3eIq9ZbnUsQ=;
	h=To:Subject:From:Message-Id:Date; b=q1uwETfbj9usrCT5AolrQNb/WhZW8EwJO4SlimZSJNxKDK+EEL2ctmac9ax1uzMINtESzsAUq67RceMDknrzUMaEI01h6iF9Y+JHHER6CkfIH48rgSozriz2olYvcWkpLJYr+kT06J8rHu3+9OdEguOXqceaRsGDKOj0tUl2eZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L17bbfT8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L17bbfT8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF755C2BCB9
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 10:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777284453;
	bh=fC/HKS5I7dTRB5i3TmCumuc5o+lBTQYd3eIq9ZbnUsQ=;
	h=To:Subject:From:Date:From;
	b=L17bbfT8I+wjCVNa0pPbEd2GQ3j/GSH6hWrddKgIAKNQGK8ua1veVODcYDXQNLORI
	 q8SWeh4hovlRgBmL09fh8MjurBtYYDCgA1eWBgryaWY51HtQjQq+F9MwWEmcheHgAP
	 ATQC9h0pt5QmuCSFlZbssNk9xC6hxR/HjVdkPXBlym2FC/qka9ZnOsir9emTv59I4h
	 0BfLG3Srm2OxbpgHWLPckjGop0m1nMhb20xOWn52KEGd9glqGz9NT6wYeiVNZpFAEr
	 EuJ/ixj02c8jkxXsS0VoNB4Pc3sjY0F6UY5rXYN4b1Cf9xrnhaYoumlwq9CYpIRAYd
	 VmWHR6mr1h3Lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACA5AFF885E
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 10:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177728445369.20047.2314252638854422326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94c9b233e7a0f86849ea3c0c221bb09ffa10ce4377ba715541a53b9a73356075
Date: Mon, 27 Apr 2026 10:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777284453
