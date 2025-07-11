Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B8F21F4C8C
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752235794; cv=none; b=ZNPUZdTxjAbeNXTEi1j4dNOj8WVTRXecV8EEr1cW7j7XFZG5WKGi8oggIphjGFRd+dtw3DpaxwHGunnh9k+dGbYCyXM6vRJ6KNIMrAyMjyA+yyZsUSut4Mg4inBpKxcoDIGMTxxLPnEhKyseFdgKmPHW80+8VP4DPS+WwEgXkbA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752235794; c=relaxed/simple;
	bh=oM9z5YRhpAzovdJcADRmHk/moPvWO6NdvqRhUhtH/uE=;
	h=To:Subject:From:Message-Id:Date; b=gcnbycRekeRd3yjSd9aNzsIRq3nDc4ZoNH8a+JyThYpwYClu0MX9pw/m8Mf6LtEpqoZRCL6CfHDmPKebh3BYLjs6hKOtviHOEEXR9cBIK3pO1QPiwei9k2/cm0Cdx/343Z5bJxSZAbRYaDr+NAfszgP1xUs+OtU+q9TxldooWhc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VLbZV1Cx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VLbZV1Cx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D16C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752235793;
	bh=oM9z5YRhpAzovdJcADRmHk/moPvWO6NdvqRhUhtH/uE=;
	h=To:Subject:From:Date:From;
	b=VLbZV1CxcB42H+rVEuKSW0/9xZvgf+11xzWNjPo1zLf7qYb89zyaHQZmN3LRzJH4H
	 GZeYLzPKcQxYAxeP/2nXc8huOOlgl/Vcdjz43Z2gkJFuyo2bgHPCnKq5rswF20fd3l
	 erHZf3xeB5pFi1+Gib6GLv8uqmRoX2VzCaXo/TdYUMbjSGbLBSDYqvRcNym2wztFEe
	 mft0d4Mpi4MsAjejm55AWCOTNgc3Wk0a1RT5lxkVKkWq9iIOeovpYV4BqU/POWpkqW
	 A99RoTVsSOeTX28waXIyalgi8XV47K1R4Q2cY/eDeMFmDGMWQmpjoLkL68mALTn2hV
	 IZqvFjgwfcj+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFD7C83F1A
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175223579358.16862.13403355815170790174.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e1efdb77030fa2a22ad326eaa507f9e105411a4971c161047a9f35384ee53fc
Date: Fri, 11 Jul 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752235793
