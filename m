Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31CB041C63
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753603796; cv=none; b=haGMh2x9Y0S2ymUcLyZ/RKhGhgVDjNTS9BzzHHO+/Z8qFOhSJH+fHU09qYN84+w+b9oDFP8sKnxU+a+hXeRJc81TqPVzMgmIhpG2GmZCGhfLQOuMOInOqz11/SagFoDD4/9sgfCiTI6Y8ASXocjjjLOMJuXU0bUbdMOS6Ahe15I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753603796; c=relaxed/simple;
	bh=EAWqKZtcDM+qvQ+4yj7q9lR8kWR0ZRdLwTBVrE9CDqM=;
	h=To:Subject:From:Message-Id:Date; b=reylCeaXrIOBmoJOWxF3hnVeGez9ySPfOCq2oRcpUyheiREznPL32Qq0TDZMD3ygdZdvlmRBeyHomrutmopzko2IpQvSpwUPVEZ6IzZcgl6/R0xTO7rS18mAS2L0wwHqWLCvefgWDVIkjiU9wXDj14JPSovVsswiVDlx2Eic7qY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FEqzf+Wu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FEqzf+Wu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ED21C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753603793;
	bh=EAWqKZtcDM+qvQ+4yj7q9lR8kWR0ZRdLwTBVrE9CDqM=;
	h=To:Subject:From:Date:From;
	b=FEqzf+WucKFand7NbLmQDZrBFn0WtxedHfFrpRzieaLt7ccLx/bDkOFVa5DzasWEU
	 spdLjZ5qItEuH/9JhJg2YKcZJLcmZ2zWVUIdDc43LFOztN7+ls2ctUKptj1JCPyjSR
	 qJsQ83x9ZOKC0XYLczc3vcwLd9dwTm6VGm++30NYiYcRSLTuYb4asZIPl7ptfStKMB
	 Euvu5PjdGm4Gmq2ertwwkYFDLiPPPXije9gKjBt8qyr4EI9G34krfS/OdCgYnx3byS
	 +RjKyAr5b/nPO6/fdUiKFWoRGhSKa8Wqx7n/xWuPwP6SK9QtLBIkcbsqJmnUmtZJ6w
	 eGrs+Styh3QOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9048FC87FCE
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175360379358.12022.16268216147246999584.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e609267c784f4654f0b3c14298479e5ec87310133ae4e1d46209d78a4fdcb34
Date: Sun, 27 Jul 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753603793
