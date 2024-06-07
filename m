Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47B1CD2EE
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 20:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717793243; cv=none; b=ZkfDJYRf9PNO+IiaWVTNebgEy+DNhQZvJ8rqjUCWpmpTJWbvY7hIysID6dbb1N4RDRSbSjzLqPDCqxEgA3Y9+0NXYg7kDj/uYNNxYCIlyFpy7wprzItK4+eSG6TAB800GYmZqyjuV0OovDZI4KQQV016Mpqmyxxv+F+8+sa/IQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717793243; c=relaxed/simple;
	bh=1ZvzGWt9HiZtnx9Pf4fzmQH2K+r9VkXUs8kFekH8Qfw=;
	h=To:Subject:From:Message-Id:Date; b=Aig2PuxEBPRn/8uxn72z4qn4woTDnqoq7BZ7E4UiDOudGEMtLljJJPhMKn6J05jkrRL2BX4jYyC8R7Npx0mR3pePC35+VGZxI14z5fyy0ZRgXRJZkGM9Ai7kMzfNxE+t02fkOXSr+5BjN67c+C1hhP6kvugLDKc1wk9rUOgMkZ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YAaTdJfp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YAaTdJfp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8366C2BBFC
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 20:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717793242;
	bh=1ZvzGWt9HiZtnx9Pf4fzmQH2K+r9VkXUs8kFekH8Qfw=;
	h=To:Subject:From:Date:From;
	b=YAaTdJfpsdefTJBIi9bmONzrtdDWdl3ZceXXFNr1T34u8vB+VsLv39K920eCWS2g7
	 GqBK7+b615pIC7qFtN5xEgfK5vx3gvRqiJyrtMh21G29J20DvUL1xCspVfVtRsGcg4
	 VFA+uAfmBviwomrUf35hKCQ9bbV4/pXbX9j7cwSonnMYibdhh4snq80//oX7c+jWUt
	 +SpOAFv7CAxSFXnQWG4HVQXH+u7ZeWtCsDkMhY3flxT+R22EdCIcgyXM8Bd/MZ4+hw
	 bC8OS41WXus9DVb+POZtfsHd3oUHataQstV1NvFpRrinMLioRm3pUudntKcq4+xd9d
	 Eha9Q+rZXi8YA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C42E7C27C53
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 20:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171779324279.26949.5011470625553783990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4b5ae5a4b8189ef15f26e577505b165e06f56a59e7db17d394f75f457e78a39
Date: Fri, 07 Jun 2024 20:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717793242
