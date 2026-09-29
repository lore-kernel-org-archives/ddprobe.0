Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8436F31B828
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 14:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790690434; cv=none; b=bu1NWxs0Grj7X5mQ9kYkK9wX1K826/AaNs2czjCO2opOLtmYPBmN2u2yIiJZSLnQfg1BWkRGqMT30ZmgxnoT+zzOfyPxqq7zFOMShgvo9Qw37ZnRdIemcXRElx/aHjZC7sftrqDoXVTRpgLn2V44oQNPnvliTKFZWspNO9PdMVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790690434; c=relaxed/simple;
	bh=Pf7YVzoxIl7++Fl0HN/HrB15h7CMwhHm7M5XvQOb/cU=;
	h=To:Subject:From:Message-Id:Date; b=ipuy/IOUBnFaCjFK6qG1q++cuGmZacHtrldBAQgPBo1u6qi/b+smFUikugv8Sz51PWWv8GeNUKjZBvhJK8UjaGbJs2C5fKoMn1weGAzMt4I4Q6SlDpbtCV9Rns+oWg7H5umEjQ23KTh6uiCfCDK8GRhURZiOkUTCt5YVvqsFDvw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M1xjuh7v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M1xjuh7v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D49B5C4AF0B
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 14:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790690433;
	bh=Pf7YVzoxIl7++Fl0HN/HrB15h7CMwhHm7M5XvQOb/cU=;
	h=To:Subject:From:Date:From;
	b=M1xjuh7vOB69kUkFGPsHDL3PRK0KFvXimkEvxqQuqjoZoq8OVmq/YH8CmM/MOCAtx
	 zdf5QIPe6rqh1788ph90ewDsO5VeSP4D1KbVmIyxRPNponZWZp6jaeLbCX/R162s6x
	 NFqd7q448ZH77PTMVkhv0cbQwLE3GcWSfKFl4BKcCHrmnZK0Yd6a7QBVGQCZ0sNpqD
	 tHtueFvDVmIGqlyu/mfi0dmwuFpOw7q2SwVmJQwxFQ4VXmg+opzrb2cvFYtzqhvP5b
	 urrV1PzepyQYZOmG6QVlMXVvboBlyvw+h6fUCFnz0A+N14tLK37tGIpewPs4YtZ3MS
	 7itkHLmAdyLgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B22FDC9832A
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 14:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179069043372.21815.6135125330317364187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80ea5a54d0875e3d88e4bd8c51292dbdf461c96d98d77fb4f7865ed93145adc3
Date: Tue, 29 Sep 2026 14:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790690433
