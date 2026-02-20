Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D17315ADB4
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 10:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771583094; cv=none; b=pokPuBdTcypltlSt3KW4KdcNSQ5LZYAzxgC5k12stEhWs8zJHlLDCTHIZYU2/+ZDpFwJNmmPsdeLbRVgGJDTiQ+DnYP9WxMDCiPKEBudTKfZRQZ6lMkYKg0n4hxjQLaC9Q5PSLmnuch0L+mKe6dUJhEf0PLP6gaPd+fVFQgDSpM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771583094; c=relaxed/simple;
	bh=JXOMZitjZxGCELFXkTPcsmG4Uu5IecZFj1dbb9sqNGk=;
	h=To:Subject:From:Message-Id:Date; b=PLl4b7/2xPa8dy/Nr5syCogC0FA5nU2URTQT4n3j0udhfIbl95e7kHTO/KDd7vCYVFBR5ckkm+5y7Gvs0qwplgCyIqLXJnTfLgS5hgjnkJ8vX6bqCi0PJU3BuPfB4t+HSiTtGO7SHPPszJhdzAtvxv19seh4sWOGq+Dszel84to=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HNJiBE9U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HNJiBE9U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B47C116C6
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 10:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771583093;
	bh=JXOMZitjZxGCELFXkTPcsmG4Uu5IecZFj1dbb9sqNGk=;
	h=To:Subject:From:Date:From;
	b=HNJiBE9UMozvkFj+owtfgUAaX2oI5vXVTv+FcHEOJbgR0XuoH564wyabO6c3fo9W+
	 w1PJhnhRN69wySaU2zQGhguZ+7cop9JDpew4gyekUOJTqqVcNOg6Iyw8YjiL3gLuGz
	 cR5mJxp4jf1J5PWhR634YzChodtJFgmXngIOX+zLM4WuhrLjndYRZXmTq7+RBTd2Rj
	 bhRFUpp35TE8RgDLURRPGPrcV7cEW8gFMrJ/K5aXqlM68KpXO07ZNJ5vZsl5n06mk4
	 207iViTdCvtjF5AviuWEOhIEb6NmexPPSqe48SqDhPL1zmvUvJcfth45e185lm1H0d
	 TbhCLVsgy5sJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914ADC5518F
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 10:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177158309358.14158.14474657239226061046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9fe766df2adcc5774d863e7d0c8db3c8346680525b5aa8b316768e59aea927e
Date: Fri, 20 Feb 2026 10:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771583093
