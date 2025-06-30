Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22A5A22FE0F
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751327994; cv=none; b=SGPhljnvo4NDnIF9EqC4CQHn8yMFGPm00fgKGgcFWB6eFmvo90XyAx9PfDQMfY0NrfkdENg9noAsw/gB4VrJFBvf1uIdfZQhfo92nIRkZR4+aBhgAqAkBfl4DyHdDCvNl/xjt2xGgPaxmvoE/+wcuZesDgvTJevlWZlnqoMY6Uc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751327994; c=relaxed/simple;
	bh=CFXDSaxWQAahBWFfefa16ILKCuEwyDD7NJxkeIhTPT4=;
	h=To:Subject:From:Message-Id:Date; b=IRqy69w5iFxd7UB4a6N+yo2pSeUyWN7ndDKo30jyM8wrJmc77eC8RtgzjT0q+pKXIj1U0AAGxXgA0s26MlrlrcG4Qu5gZuRVsDA+5vx3fwnaqFZO/3o1SQXU5L7iwmA26xuuh/3quI8nLxv4AJ+Ua9/aDBi43cMkzAxAdx2fitw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TDipCuAa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TDipCuAa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A03E8C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751327993;
	bh=CFXDSaxWQAahBWFfefa16ILKCuEwyDD7NJxkeIhTPT4=;
	h=To:Subject:From:Date:From;
	b=TDipCuAa6Uly4O4/Ln6SOFXObcBaeuRi6hvKtQWrklK4EKofv9yTifo3TTurL4m/E
	 OWsIshtllMfNb+Cni3kYcQY/DoXRVAyCl7Oqk/eX8VLvIxtWOmk2l8pw5KdvlwdChn
	 2gKmrNen36oNKyvwVRowC26aEP+vFe7XAekEpbJu9LWZPTzORwp6LMGVn65fxsJmmo
	 AvMl9AwIN1yfEtiqaBj5KVdpmplkqhPTyoyeuos/1D1FemzER2l5J39W8uoAzqWYUj
	 2+9y942HfG65z7hXISzLSlPVWqHocGOVJBbuVn4MB0jbv/GcJU0DA6nx74wCSeSiCj
	 TwKBb5JCmgtGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E890C83030
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175132799357.1583.6015661746821615527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d28cfc13d67162cdadd616629cf0a844219f5818e31e2c09913e444e4e2bcb7
Date: Mon, 30 Jun 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751327993
