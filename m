Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 494101D86FF
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 01:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783473514; cv=none; b=kG+NlOCMmqPYx5hqZxaC9DTJy3CY35yQkhnsgSJ16AJECgmEch6wxL8Rui0YnCiVV+uo0AB1Nizh21z6dm8TyQg2soXRbL+cWUBIK7ZK+YJ2sVkifSuT3P3g7BBOlXjkkfTqfFLzgmMXPaFhXUm/DLmvhZovtq4a9D7VjjvVdXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783473514; c=relaxed/simple;
	bh=pSIW/Va0s/bi81KFVM7oMXeTDzsUuwf/058XH6n5oeU=;
	h=To:Subject:From:Message-Id:Date; b=oOXOPnlFbfMDqk4qBAuVUl1eClvIoiq6bheUO5/5kLUv1v3DXxgFNcLVGR2EOA87eunI0i7wYWFQIyG8Y+N2Isv1hAJFegoZDP4c5zons8FsYEKni4fiHmYmMaHEWqiDVwV8SGY1m1ySbvZzsDaUhfnN4+FZNfyTXidLQsT4Q1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SloaVwzt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SloaVwzt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF98AC2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 01:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783473513;
	bh=pSIW/Va0s/bi81KFVM7oMXeTDzsUuwf/058XH6n5oeU=;
	h=To:Subject:From:Date:From;
	b=SloaVwztU40gRL/gJBRS9THBfALf4HpOa5iAtCcfEqTG+FeMvgzkyBzPJ2zLhGoum
	 +BLX4J/0eUKe9rAPuyx3vka7txfdMcbjUVwfBIQISizuaxCmrIQjn7b5j97m3gwfnS
	 3eDJ6XgvgIEcaRuOLuf85nmh/iinllojjtTMXleAYO1ASvloqbOSJpKCZl9oaxP5Ds
	 Eg9Ypfq2khGJ3DX5HzvCFAR1nJFbEtsNy6XMKOC/U7x07U4fsJ3P8+dsbQJ7+GCCO3
	 D57V3KXCt/Ati4ktZdw+NPZNwyh7XGwNK/VBkk8APmfDTn7KkoFiWPK5xY/HqaOVfJ
	 UJFV90vxPSpXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB5D4C43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 01:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178347351368.17335.4922942363081715165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46cffbfab4f364f762902e0bd2368cd4c9b0e684122726efa585914745e8460d
Date: Wed, 08 Jul 2026 01:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783473513
