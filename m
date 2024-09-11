Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A3DF8F6C
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 04:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726029954; cv=none; b=NJuXCJNqd8hoWEsb8XTJixcpjdeKlCbicXT3P28KdrxFn81GXUpVXsVX1dy8OPiV0qdjzvASYceaI2N+jh2+24Nd8uFpAmch3ZFvMbMY7N6yflUkg3e0fEDi4kXLi4Ren4CWxUeoDDfPKt2cZKvHvqZDtx/Kv4QcCVVnN38Isho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726029954; c=relaxed/simple;
	bh=8aEPMK5h3R+frp4LA4BWUvrRHZKotgFsjUJvpMk7kZU=;
	h=To:Subject:From:Message-Id:Date; b=Uil3dc0QG1Zbx9JMlJTwhIPJNzxZf6QdmMUZ19nybRBvmJpllo51kAff9DxQHoq/vM2T1jV2mEdKbM56Jf6ho7qqECu9KQP9OjtNY5Nj3/uLOCDJi5HNCziiVbW3GVFL78s0jZA3LEFjKwlbWol0kqcP3COfm3skKG+18iPUeDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jMiODaJV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jMiODaJV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1CBBC4CEC5
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 04:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726029953;
	bh=8aEPMK5h3R+frp4LA4BWUvrRHZKotgFsjUJvpMk7kZU=;
	h=To:Subject:From:Date:From;
	b=jMiODaJV3ssaobQcNR2nvmTaz7hpPA73qfxrbxMDjdZ0cUkFvItXDHxCoKYhxjQ06
	 rMytzUY2fmqqLoAP27QHrPyZG9rmKzX9APkqhkSSSyLjfhLQfR1w9C7PCJPACIZ8FJ
	 TU42ESWA2rY0dG1nBBj9/m62bMPD3RVK3WzELxH0k7zbsXHyAxxSy9Ya/tp4Mo4ah7
	 V1pUh6TgWRx1N/4wDbUT9gabbnlEp4ibacDZ6IqzNNhBv5okX7Z7e0Wz86rJGodCC4
	 WW8JcaN2/c4NDW6Wy8ufocQ2/wCuaSA3g1cRPIZQcTzqIyIghNAbxLPPsPXWT2uDbo
	 2v2g1F/OmdCzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA7E7EE0209
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 04:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172602995366.24337.12520804851758007728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 361047d5398be88753dd6888a3adaa862c84b7ae80bfbe28beda9464c16816cc
Date: Wed, 11 Sep 2024 04:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726029953
