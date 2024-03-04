Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D96F14D59C
	for <ddprobe@lists.linux.dev>; Mon,  4 Mar 2024 16:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709569696; cv=none; b=YcZ0mIQL2DcnqzubnxpmTqD5mWO823P+Mp/6yf5r+HcAru2CPa9bwUexFaacOFpZcD0aBkUOnfDSZ/AeuZbPiVQo//AzR+TLcohecDhxprpSbzOVhH1uycLMvaxFJZs3VS6pfGrEu8UWJl44SRyo87R7FXXEL6pdR09RnM/A66I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709569696; c=relaxed/simple;
	bh=RjX4UAGvpDF0PKq4b10ifSi0zUo4jq5wRA2A/ZBtNEs=;
	h=To:Subject:From:Message-Id:Date; b=n0p4z1BXX2r+bw+Og1S6iizhTNckoNBa7NWR9P/eG6Ophx2fGimcMW42v22BIabuJq+bX9VpUMmRaR89NPS0auPkTEriACHGQwjcxb2hZBL2xW2VVpZfukO89qITPEZt6iGt0e0n7tOIOfWO4Yrn6eQQxQLv5MxD7oXSZrR6Aus=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X3YzzxAC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X3YzzxAC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 763D0C43390
	for <ddprobe@lists.linux.dev>; Mon,  4 Mar 2024 16:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709569696;
	bh=RjX4UAGvpDF0PKq4b10ifSi0zUo4jq5wRA2A/ZBtNEs=;
	h=To:Subject:From:Date:From;
	b=X3YzzxACMqpLSbBOsfVtMZfSJzy2hldOd3JiPcQufw6PijxNbG2M+7nH5kfTUMPa0
	 6pesszuqBARBxeiJVFLwJBOAUIdydSeOZZrqOx7tmGFfaojqsRyLiI7Ngq3531YUDs
	 y7clx3JmUy0+ZeuDMDH3cdTcnM0pJAa4QJNoq/EveOhnBYP/elQsuluTItIpS7ZgCr
	 qqTvRbdPvp1jD6Pyk/CQfJZ6gs7ClnwXMhevTwxI+/c3KZO+fNM1eA6M7MjulXAXhQ
	 t7f2APRuYDVWPHUcJoDDj2tzgvsIpeIrXqxBg+O73bbTAhNPy11v4P9P4G4dk5Ym2b
	 SVQllyMMBnU7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F2E1C48BF6
	for <ddprobe@lists.linux.dev>; Mon,  4 Mar 2024 16:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170956969638.32349.16314679898766717624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65defdcb49335ac9dcb5149870aa79da37610fb8582ba074df66cbc4330a9bd4
Date: Mon, 04 Mar 2024 16:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709569696
