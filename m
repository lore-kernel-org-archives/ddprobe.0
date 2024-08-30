Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C0F2165EEE
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 21:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725053754; cv=none; b=D4+EWuo4O5Gs+diZHSRLyun49fzwOwSQh61W/OQdzAKbsF1KK0va+ogxb9ZlC0JgJZVX7xMwCv+Gu17oli3VZ+AuoPE54KtxmOxMXipkNYy/vlqYZgrKJgG4LCCwrKaawEX3zHFWAk3pDg2iAWOv7CPitw8IhMqgDKdu/MM69Wo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725053754; c=relaxed/simple;
	bh=NWDldVqhNBduhflXhCf/V/35vTrqFFqnCWYpUTMwysA=;
	h=To:Subject:From:Message-Id:Date; b=ry2VAywTndTohjemjt1DmPVhseW9HOyB5qD7eTcvfVSZw1opSj2aqnM/9kad96GzI4cvGoPSbrEgxpaL64Rz9bxMx/DOkCTtdhYztiCHpP7Lhd8fNaO2XnoM6gDJMiP73rS6LL5zgZrFGffQZgwjVpOVFSCs4wAjPjOLskZ15XM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A+a68P57; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A+a68P57"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2063C4CEC2
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 21:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725053753;
	bh=NWDldVqhNBduhflXhCf/V/35vTrqFFqnCWYpUTMwysA=;
	h=To:Subject:From:Date:From;
	b=A+a68P57KFlifgf/KUerRonSZTse4WfAjUss6Od7zocIktsru8CBATzGk+RGhCmVJ
	 sZOl2qG7CPHaOO/jE9MiHDheTiAHSk9bQMnMsLgwngJYKxr8qw7WtfvcLwDpFlSpHM
	 EQCTq5/3UjNnAAX7WxHIcZ62ogm54Qi9Q4J8MWScAmDyEkCFfl8ACdfuWD3p+wXPis
	 kirduwCwaKXQzWV4QUmoyyiLYmTsW/ucOkNIkpuW7vXDAC9X5dP0R5Zz49PdfKNHsA
	 z0jZbcINk+QUxN5Ztioa1ouiVqv+pxrctyxwfy+SB5TQbCA+8FjZB2W8+TdWRwWRcR
	 w7cCfE0np87mA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9994BCA101A
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 21:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172505375362.29021.12207424742765898483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bb5422e397cefbbee124aafa33c6ce42bfc2d34e47b679febeb8668808c92c9
Date: Fri, 30 Aug 2024 21:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725053753
