Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 208E013C3CD
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755826794; cv=none; b=CmxlKx5914GiPXPIIMxnJtx+5MQNYA2QI2lAfzZTLwPsLC1yX/xULfYVN3b26aiqj3com8VHikKRz9hyENaML8Xh/Wzj3T0Oj8ng4pDoI/xy6HV2Ivrp99qRhoRqudMW2TY2GVCs9apqD2sPbxhxW2XCrXa3t+6R25VCfvkbJJc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755826794; c=relaxed/simple;
	bh=0JBjtv8ozMn1ucd9zAgGNfW1YS2pYWT1r0CJHwFPDGE=;
	h=To:Subject:From:Message-Id:Date; b=flnOeN9cSLkTji36alWNOVVaEtt7s+XZB3nxQY16Pq0xxRnFhh0TKjwYMlNmA+lrgRjEF/UQFoWagGiDsip2OJu7rSMFJyCynKYyYN4btHf/fAi8y/XouebW1FqT3UiI+kKV3vaOOylq5JtYGh5Xr8pGTZfGDPh7JDqNlgmYUYQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cF+3nMbr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cF+3nMbr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C093C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755826793;
	bh=0JBjtv8ozMn1ucd9zAgGNfW1YS2pYWT1r0CJHwFPDGE=;
	h=To:Subject:From:Date:From;
	b=cF+3nMbrvPrsa86IxZdY+xNSPq/Cg5DaFuYLrNNdW+dZgNE90jpUJEMqGU1A9EHIq
	 SR8Wxz9vXyHxw93Vt1sMdGl+dQCH1hLBtOxpMEx6W6fFDPjXB860n6PHc7x7/ty/N6
	 JrHRbHg+FRrd0veSmyec2evR7MI7KEjyVPGhPEynbTvBvY8zhY9Vs4jEtoGeqOCqQ1
	 SuUfEb4gvtLK6IY6hzkF3SAn+HjDUqVf/7lZvMXDZx1BWxxGHfq4x6LWVgOTKJeqGs
	 owkuFkjjaczt2YNrNIwByOc53OHXqQRxZET4nZOkY9KL+vqKLtn9pdpR77P1jRVuRW
	 odmZCO5rblU5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E184CA0EFA
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175582679357.4380.15927510979064649293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 400ec982b52bf12f24f9b7a40c20747308cf750ece97352baac3f6097efdd3c2
Date: Fri, 22 Aug 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755826793
