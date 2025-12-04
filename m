Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27A2020298C
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 05:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764827574; cv=none; b=E8HT3oKiEro4D+DXbZrUJvgBUIQ1tLvV3AJeyJLgS7PwB7jpiiiOeHkPRDG7zc93Pem+kTlDSvAtYWw8eh7azrHBzM0Gxb2y+17U9kZd22hnEPsK1+BwpoFcjfFCVKhbG9wKyMQT6Osrpw6ocWOVp0ZneldsPV2yq1983lM484U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764827574; c=relaxed/simple;
	bh=wNFqeZVOzT22JN1kIcEOFOVqCa3nUY1mVXlH3JCLya4=;
	h=To:Subject:From:Message-Id:Date; b=oTip6lpV7ZHb7xiHm9Xv4gFClkow9ZIWN4q2a9WBqRZ5pvNU7E/rrqJphQiV849zYaJ13Nb8odc3Oq49f7Q5doV7c1mPjWeVwZ0z3JF24UgPtV21CpI0DS8iSkyS1GJF0me9smX9PXeH/pq955C81eeIchN+O8GQPPDrSzd2RR4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OXbrachQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OXbrachQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B46E4C113D0
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 05:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764827573;
	bh=wNFqeZVOzT22JN1kIcEOFOVqCa3nUY1mVXlH3JCLya4=;
	h=To:Subject:From:Date:From;
	b=OXbrachQtXElLomCtOOZrnsolCUtj4BdkV14SmEG188YhehRj2OBHPFGBVlqpfAla
	 jtPxBqX3WFhaq9hoNCbhsIo5LFEIDHI26gDEyz66CIgSD2+42gr8A22LYLMk9F3Ck/
	 v6F1juHXbJANNLNKqcWR0XiWkLow+J/rfG8TSjSrUCvJq973EPRES9qEgfksCfYikV
	 URARmNbKBJBDvZbkFcLh4oKgdwldt4BXRuQ8KD7cqt4VOBETVBuExJUEj/8xU/Aq5v
	 eyeyEyqf22DIhg6HCbZzNeyblGxAOfpoYyAoCN+sM4J4Kq04K0wb+U6adIs+8Fss04
	 jttkY1n8iYl+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D9B1D1D86A
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 05:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176482757363.8337.15497597547599716472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfb5730c431ba48450ca11f8ceef69a430a5a9603a09c6effbf8790323dec82d
Date: Thu, 04 Dec 2025 05:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764827573
