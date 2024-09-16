Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F4D036B
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 01:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726449354; cv=none; b=ro5CabQ+VjfpQ4QRlnKdbWGX8pOeWBap4EJ/TMgWGAXqX/YGJv/GlOo96gqgq6CH9CmEeeffggo0VPOXfk16LpYhkB6Moa3Apz2LbG91ArGffy3n6Jer0t6TQe/M2J7uQHDgIYXMwl9+au3bKkcLWutNWNDTYRJm2QgINypIF1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726449354; c=relaxed/simple;
	bh=WtiNizkVluSsl2/Q+Kkw8X8Uo09ZcP/cfzXNatp0bOY=;
	h=To:Subject:From:Message-Id:Date; b=TAujueptVtg431i77LH5sjKmDc1SKLL+nSbFio6V0GHDrzinkHFUTpVv7sEipiWSTZwJZYe+jdy/9JyXZqQludif9LAo6jmv1WPCXdfhQEPyy5iYj52u5YYXmUlmC8IE9TWLtEsjGI/Y/VHhKXwPh+fj6XZ3lWKrl7tOk92oirY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LHqUwDMl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LHqUwDMl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2F74C4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 01:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726449353;
	bh=WtiNizkVluSsl2/Q+Kkw8X8Uo09ZcP/cfzXNatp0bOY=;
	h=To:Subject:From:Date:From;
	b=LHqUwDMlv2N4zrgxKejqUWd8NO9wDJPN1KbwXpjZ2DaVd6Bq/TIFHwvCMBIsnmuBM
	 UfH0m0VLsrJQ9eXXsyit0ONLx5TijFNkCmc5LGt7bvyqN6OMxvwd67QYH0UJATgbR2
	 0fGEm52CiHIJEnxtQdBvwftIzzjjYZHvstWGZcza1pQVRcbSa29A9ngXb1cJfOb7B/
	 atryyyLOeKSNoP1CqFFW3RWXNh6AUt22ABa104gvJgpzVLGRQYzxg8mp+t/xhPOQqx
	 owSlzrPk5PWeaBSIzmagwXZ/bzPiQzWYZzvyXZ/aKUZ5ajYc+7VJOG1tHPUOV7E9tr
	 72gYuVX1AbAJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99255C3ABBC
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 01:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172644935359.18778.5173206580437441504.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab6f7b0a428430f9dfe5f500087bb980e796e0bf7a5bce92d7269a6a9aee0574
Date: Mon, 16 Sep 2024 01:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726449353
