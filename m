Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE4398F40
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 05:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705556897; cv=none; b=EaNxn3vLx3PRAq6D8m4MxoT8QrED87DxtYPRaaDGua1BNvWMTZo+/1NafXfIJErk7AHHH4UNHWSkt3L0WBf4IivWohUYbi708yH/fBRG2zhFG0E5McJWAVY7gzpF2AhCP+CJsDCwXH5UVwkh+RKF9P/T5j/DY7rbq3GkzNnI4YU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705556897; c=relaxed/simple;
	bh=XphL/GNnC+NARNen8szs6fYCC/7FRRmD1TYXZVx5Wqw=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=RufM8Wrc5PNM1NOMVrgxvKRrYkUZIcAW3Z7fNt4DDHBPKvgzjWc4nxeYHCboRo0zfxpucmMOVbuewbxD2ubQzHTvs4AejrgXgx0SdhTl7c3PAIdXCUiulIJOhvvPHWeCnI5O9X6LQ1CWttZa9wIuVZ9eaVEr/zgAKGV1AhkGPMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Df3dryTh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Df3dryTh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EC15C433C7
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 05:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705556896;
	bh=XphL/GNnC+NARNen8szs6fYCC/7FRRmD1TYXZVx5Wqw=;
	h=To:Subject:From:Date:From;
	b=Df3dryThX0Zo9vQZorUv2FbzO5STesG5eO0Hw25p7x3bYXS/QfCiS4JXogtg/0Qdq
	 2weX0CIKcxcWajTB9VgnQxKbik3YWxCijGKJRdyfSfctHnH2aVurnjN0+FnRZN3klk
	 nVltgpks6856IL+BZyKFWP/J+7HXfHhQTI2cJl5hEvhZkaq63sHyYktWPqKxmOfXrC
	 iaRhW//pQrAEG+jWQJJn+kf+6aebJipPJZm/GMIoKXgYXD6LCk/z+BKpO9oyADjAB4
	 PyNdySmDzTL/rheDNKT2644FXpCKXZLtELhJrxJBTDt0MVhSqqEiZbZa1alkmiAXoI
	 csZX7HHdIcDog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63A7BC4707B
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 05:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170555689639.10461.9416737498441476996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35cf15ebe44e1c884a6f19f6fb18ab3bde25c1776506e2399816a72e59cffd75
Date: Thu, 18 Jan 2024 05:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705556896
