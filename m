Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 282CE8F40
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758603594; cv=none; b=k3X5PKbjnuktCpHIuB4aIFrNlqm3t3OVTbtniA4HrKG9CK8/Bj8qSPqsfMpm6R3Z2dkquxQV02smWs8qhIDPXDP9KccazGgjUIHjvPcPsRVVwgaf+C83Pr2t29zELMMTy3l3SZ2ZFkhD8MAl1QupPqX2HYUY+DjSO/kes6tafcw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758603594; c=relaxed/simple;
	bh=rmgW1+hl0OCIzRdYmL3+EArOwEYUshHr6f7SLkPNY9E=;
	h=To:Subject:From:Message-Id:Date; b=JuB61EwQs/lTd6JgEWm6H+zGcwG+tOLJd6dJdUWN60pJB4zwGLqg5dN05edFAa8JaVOl5/aNb5K/Iy2ynpiZtKb95JmqTsGu3jEGNRcKj9FNcMrzCXrsDKJ0miK+cikBskarzliqSdk+1/u27SMbEam/OYDaJ2cxTRuA5PE41as=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=reAKrCgS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="reAKrCgS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6BD4C113CF
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758603593;
	bh=rmgW1+hl0OCIzRdYmL3+EArOwEYUshHr6f7SLkPNY9E=;
	h=To:Subject:From:Date:From;
	b=reAKrCgS8MaR9mVrPgO2DmGwPrQpfHWHGB2IXznCNd0U9GRUmN1o04UKGzPfvFlxo
	 2viQCXuDcaYREN96PKr7S21gjrTWlpu9QjKUBSUckkx/jNcdm3twVtk1Hyim1fub9G
	 vNtKuXtUDcDiZSZ48zlcoGX/GGqGUkbKqnLWfBfWM03kxvluSj5CcSSwyHhYJ70qXt
	 Q4faGHw4/zeBDNrnJmO3qFiTBtE2hUaD2d+Sc2OyN7qPcSFBcWRmktUQngl9lxpywS
	 S38dXITyFBy4/tH0C6OLzuuCH9zhircj4faDxQ8ANx/nogrZlFTK+rDm+/ajv8MrIQ
	 137lGQj5OahsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C02CAC5A5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175860359357.21296.12918927735992428728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e18b64b878d31ee0ad9f2eb9e4dddad904897a739e09107a3d9d71ab6257b81
Date: Tue, 23 Sep 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758603593
