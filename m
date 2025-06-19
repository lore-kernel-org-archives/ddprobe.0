Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24F111624FE
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750318794; cv=none; b=ORF7x8yK3GE/MULpsc9yWG5SIiYMYvPpFDIkU7tlANZT8XvDdxMHhFxC0Re8yfNrqJ75KbzCMTn1ZhNMLqtPtsp5v6AFS3Ymfhs7o8oEebkKQzWd9pBkTiPz+4UJWHCa9lDJcHA92spRkEaj9TIDBEUj2XMH8zbawcj8pmdDxJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750318794; c=relaxed/simple;
	bh=1MOUirokIVZufslzq2dtQKR9gyKzIJ7I2UO7jLTv+74=;
	h=To:Subject:From:Message-Id:Date; b=LSxIRjS+m+NMLSR7vCHW6lc+3SkW39WSG9qkR2TBlHOdnYpfaG/e0ke2EDw95cDBkCzc+LOJzoBJua6ILO6isVmRsle2rGUj7c+etjdglwBpa876kSLzLZRgZ6pL080uiI1ilWc5SkmF5Q1auut1SkHJQRYSmPtTPMGneGROwd8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lrV2c7yg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lrV2c7yg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4CC4C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750318793;
	bh=1MOUirokIVZufslzq2dtQKR9gyKzIJ7I2UO7jLTv+74=;
	h=To:Subject:From:Date:From;
	b=lrV2c7ygmLL2GStOE7TUaVQhgHHMY+uxfyJUsJKyQzDNqKZbn8LK51Vzqoz8uIrC+
	 hSN/sgJQWUtPnCc1HawfwA6OlsJCsFI3ZS3HBhPGSfpVV24WtzAXdPMo/xRLymkPkz
	 Vj/7C3JgkxBI3TnkrYqgenvs6sWxy5bemRCbW7zuhXIycRvg4BV3saUUc3vsuzXAfT
	 Sy9y2RLeOWET6vnlQ0iuufncSf4g+LvQE5crBZfYalyqgzN4i7JXgVVlDgAW2S2rUG
	 v39c15UqwVLk0TF8Y6dSSr/hP5Wp9IacGKQKGZzf8UXGZ7pSOvQ/dfTw0KUUMxN4gN
	 djDFr5WilwUqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB0AC71159
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175031879358.2383.18132085618029012025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3496acb63fcf8c9a21dccd9406cb599ffcd834cbb22eb1e0b07449dad688dad2
Date: Thu, 19 Jun 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750318793
