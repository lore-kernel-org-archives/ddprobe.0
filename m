Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D7D641A574
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 11:40:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786707636; cv=none; b=I5UrT2ALQNeMvUcNmgnZ56ZvKy0NZybfYTtOMO0P+/749/UVX1ayZ4tqxtdXgtAXJ871cczj/mvyowhKJg5mZPJ2SrczNy7CUdzBL0GSNQyB96mJt09tcOth+gz7EfqRGHiqYd0ec9YEEpxlhp5XPg4zUh6bE1t2UoCyVoIfEWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786707636; c=relaxed/simple;
	bh=zaSa19QrKdUAdhe9wqZlyMu9MFL2owLDtP+PCQLkJ6E=;
	h=To:Subject:From:Message-Id:Date; b=Gqp5fhlariXzIRZ0PyvFyJ8sl6aFI2B64offAiFCtxEaiqcoo1ve6VCUizLGi/Vm8PYs3h79gw/F12EVmbNZtL7xSbGpz5CteEhq6zZPtodJ3HBtoBGu4KZ3FJ3ROCsv3dRe5Ot15jMvwqTb1uXeKfZCeIkJY6hBOAqNd3kHLNU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kt8mHlV2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kt8mHlV2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C771DC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 11:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786707633;
	bh=zaSa19QrKdUAdhe9wqZlyMu9MFL2owLDtP+PCQLkJ6E=;
	h=To:Subject:From:Date:From;
	b=kt8mHlV2SYrPg9FmxFpr3At3m6/Q6rrKSJYa3Ggcsf5FBm2QO7uIJuc6NhXc91EnH
	 qqxuBwnqm84ZSn4sTQPMZm4CzulbMoe4adYGaCsHVS61oB7OQSVJMRdHotouy9rrOW
	 L475XakTZGHQJE8142gZ0q9B+8mvP+J9gIsjd51bBgtc4V86kW81EaTbafFLyxt+H5
	 7SyozkJkyy0QueWFpP1LysYJHHjrl6HPt3aSZYlllWwcCuXeITMHccINAzY3RBfrjj
	 TKod82VIYnHgEwXhf05XAYdF/m24XJs9+5RgZkkrtmn1TGPsBhC4Q3csV+RRpFOW2p
	 sY+7AWEHFsxag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADE13C5CFC1
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 11:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178670763368.31672.11900704792004807976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bae471fa022215b23abc93f9bff9cc87c744443cfb244ecfca4441120e0c1ea
Date: Fri, 14 Aug 2026 11:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786707633
