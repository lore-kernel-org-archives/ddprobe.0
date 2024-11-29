Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 238E21386DA
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732866954; cv=none; b=Zm9EShO2xo/ldzwmFGNqw6GTJzxkG+A/zA9X7LcfF97KZpY2ZxEx9w36pNoq7HxeVZn64Rw0Kzp0QmKTcDh4epbbHbHI9Odhk8V118DgiJblnkuyQ0jxgT7prBA9znHB3ifS6j+BjZusiIKOPj7+p2curPpYDZ4vv9jocX+ISkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732866954; c=relaxed/simple;
	bh=kTyGh8okXu3bb5GaxhWvKSTDoTUsU2iVhYc64lDJKXE=;
	h=To:Subject:From:Message-Id:Date; b=MGni4Ilpzgb1c7L6OVKMYqDiqA52u31/8iH0ULBHU00mfpq41oWS3Tjh7JwVAwZ90ExNux/0na9/U20bXoL3ywrdU1PA3p0JSe5uLZlaHzkglDOJYgbtwSKsNziglEhTF3DMui8aCO8RJNXhMTfBEDX4bk83i0t8N1C+LHaJYkg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TxIudUJa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TxIudUJa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAB0FC4CED4
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732866953;
	bh=kTyGh8okXu3bb5GaxhWvKSTDoTUsU2iVhYc64lDJKXE=;
	h=To:Subject:From:Date:From;
	b=TxIudUJaCFZip6mM6R8VpxoD+8cK8MktNsnaxP+Hm+VhnfZ722M10LOkPJ93iT8KR
	 NIb9tf1GX9bjPCX69hNFcjJlOHm369WM71M+JkRM3AnBWrxAEZwicCzT2OfYit5DU0
	 PT7adY8a3HnV+QtO3LRWLFfdG4y8UceyKq0w65ncK/ERCRGJHfuyfAyKFkrgxfXjSp
	 lY6i2o42c9FQi058+B9l/9lcRsVTOsUopSO3U6NXW2CKJhVab9up5b+0+qD0gY/0ld
	 0WW0O+eL62QR18qEPn5n0eYajyST/w8nofSVgPhniF73hDlVKf5FbOUoxhu9xz8WgJ
	 u7vEQhw4rBe1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAABBD6EBE2
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173286695368.14770.4252428310872510188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74ddc66988c57cf13e9a0629a48d9c537aac35003898fe915ec5455901d98180
Date: Fri, 29 Nov 2024 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732866953
