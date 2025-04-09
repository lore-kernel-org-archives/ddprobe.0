Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FB4D82899
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 01:39:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744162795; cv=none; b=uDSX4OZ4VZ78wK0tySzTo9jH6uCrgro0c7in+j/uPlUii6H9RIK1CTH9TWwdxnYEKrE134UfyXr4VOpLWgnXJnCKDTh2505kOn/UKrc5ofD9vWm1l5VqyVRsl8ov9M1EtK2wXc/v0LkxL+ps+h45A0EqjGgk772zy82/z+ZAZew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744162795; c=relaxed/simple;
	bh=lLOHtitSGoj8m1YHb8vqNyGKGXQRjVpmLvikdwGGpE4=;
	h=To:Subject:From:Message-Id:Date; b=J4308cl74frkffEpzlAcRGYpUD7pXNhS26XMklr7FgP/nE7KpB2PzIQ/fssIn7deLdivS2BekT/6AnJcTcR2vES3PY5MqvhW8f3PPrNMHJYz5Wobwh+v5ITzemNrRdUcA4u4QD/0/JXAiY3BDWPduu4ofQMSWJncK+hVxMbz4Yg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p/mNEwWs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p/mNEwWs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3742C4CEE5
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744162794;
	bh=lLOHtitSGoj8m1YHb8vqNyGKGXQRjVpmLvikdwGGpE4=;
	h=To:Subject:From:Date:From;
	b=p/mNEwWszCRIS2TLufd3ylC6tR89WTPbjWvsB9HZbc5UAKfKfdNaftbdvRUYYWvE0
	 UVKDvjsR9Ydh/DHwpZSMawKZLxL8HV92NU0LHj0co0947ddVS9Vfy+kcxmGOtKD+GY
	 W1+WoE8mz0D0/26PPASELArLbPq71mqcTbIUVoaD3Fv9s6CcEw/oyXTxbZgBoAnSj7
	 xsx1FEOdtD920CunQ54VJrS/41hwLqVaVAcPyMcU/2FsE7P0PBUmb2zjo/y+gwvQ1q
	 1JUQdbeMv8dLKxmaVz+b9RkCwWhUYaS4KGmSkbWnDK5EloL8EYD6gbpULdHUDXwq0X
	 5ObszPOAs3qFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B56E7C36010
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174416279369.27654.8089712905308423623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66e06c18948fd7368ae6bc9f983bb2fd27be6a0391f14f2db11967817ed3cfba
Date: Wed, 09 Apr 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744162793
