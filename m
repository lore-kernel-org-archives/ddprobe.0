Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DD341F4174
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 05:52:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779601954; cv=none; b=mZ9OSmWo8AlZX2LuCfhG4puZQlPTe9vGm+2QptYLNuht6VNaK7LqnLNS7MMNmyps6rGmPmIOA3yKNx+oTwVH9pXgcZiZ2xr4nF3Lr1kshqLLH3mgZahOlRjCExoltX2thtEVLwomHzCm4PYGTor9hcm5PhfL18pBY6Ya0xaq9gE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779601954; c=relaxed/simple;
	bh=5+axGLHysjrX2HrNAZtbbfuzJNZDD1k6/PWToY4ftJA=;
	h=To:Subject:From:Message-Id:Date; b=AUQlTG+ElWpV/Xvqd3HIiv6XlKpuRYE35E5jtClOWl4G/aQY79j7FzBEFE2vLdzXsHxKJKEALEiY8Uru2swovU8Tgz1MdLx4noWEAW53dLYiFL0Adp8Jyomrs9Cdhu0FP7bPzuWbjA+1XTwPqOTUOOgCmjmaDX4K4K8y+cRMdCg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q1grI+YF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q1grI+YF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC8E3C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 05:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779601953;
	bh=5+axGLHysjrX2HrNAZtbbfuzJNZDD1k6/PWToY4ftJA=;
	h=To:Subject:From:Date:From;
	b=Q1grI+YFsHHNrfAnY09YhEThyDxzOMSXQNnnLdTBEvtlR5rDtNzMZhq6YzCfQBLF0
	 qiYHHgnQ/lXY2+EEam9WjViQaX+THGIf/TenJrrPDpABswrH5mXcGQHHfiOpRhhKzJ
	 ecHt/LlnC2saHHfqEmP9pvVXTGBnEeZ3L4zmLtSDhojHTm0fbixTZFHtix7frG2Eu7
	 HucQIBuFLNWM9f1KBbbnhYtLFWT7C4klvaX2Awrzhsu5acXyzsrIvnSLomLBYEnjyO
	 ljnMx9qgvSI+TVZibkPd4oap1f+Om32ayvILU/oANO9XD1rCx/1ZiVJ571y2UqhB5+
	 UkeDqR5xQJKKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACD20CD4F54
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 05:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177960195368.23735.3345287022018966038.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9d8654b12bb0ef87be2e60ea6664ad5f2be8f03dec21043216ec0222b72ed2e
Date: Sun, 24 May 2026 05:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779601953
