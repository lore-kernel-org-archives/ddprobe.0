Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E78B306B3D
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 02:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792031434; cv=none; b=NfJ26BCBFHVq6dNbUG/zD0H6ANlzhhwsc953EZ+evpDsy34fYyMf7iiMMeQjGglMU/PQ7N1y3vPElqe0qBxKYEvgrQsgcO0Si0xzxjjmzEMIt5vGW4fjpIkJkzhC75Ylc06ASHSdKEu/wBAxRvWCWVgDp47mHuEDd4QQV9YrQGk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792031434; c=relaxed/simple;
	bh=zr+8R9Lr25H6FrGPr86IWTi8VDuAzqACPMfwSWdVEQA=;
	h=To:Subject:From:Message-Id:Date; b=Gx560nlTPCycoYf1ry8hilLxcDBeRFZL/BbMJOsTYAj0Nkm9EsAzasFLAsbAQ7v+KaYersWToK1ultJT2gumaTkWroUYbB458d6q1MS/QT32Z6seLGhu45zy6KP+o/34pTnyh0FNEe082Dts1VeoI22qtpgW+dGcw5mpHVuwpPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JZ0wWZsW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JZ0wWZsW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D877EC2BCF7
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 02:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792031433;
	bh=zr+8R9Lr25H6FrGPr86IWTi8VDuAzqACPMfwSWdVEQA=;
	h=To:Subject:From:Date:From;
	b=JZ0wWZsWyqNFLTZ2j4hgjB0rDXBQ0g/Te4B+LoLkq9vXpI16nJxC+/39DQGGa8YP3
	 77AtaQQu9Y/OYriICe0Gzwc3uPbfo567dxaDz2KYn20g0YiQF2b0z/5MVzMepkNbiT
	 cEEgw7bWjS0ljM1z4kB/y8IG1UVBXtIINsiz5gultsXrRgoR2D8+ygRcayqUzh96ar
	 WV34eyqY5pZ7lr2HceSBNDO2YNeuCyZ3Do+naSHAFjKIocB/n/MiNat+EgdwpeAB4p
	 At2HDC6xoqf3BAw5EY8O1lQRQIS3FunOvhdgYTUTy8iQ5bzaBBD+dkU6YHZlP0Z3q/
	 t2W8TWxUTfXKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B49E0CC6B30
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 02:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179203143372.11027.702939353982834810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43d9add3d71f1f398d23e190b8993f81e561a89df2eb6d7bfe06599ebd7ee5a7
Date: Thu, 15 Oct 2026 02:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792031433
