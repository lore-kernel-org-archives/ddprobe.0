Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6446515574C
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 15:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715786543; cv=none; b=PBn0yN1A5E/cKDvHWLlp8PubHbaWYGYqreQ3Kv/gL6wWYjOXgsWoU7PA7ccWkTmUDXYIu+gUDgVbZjmqG5sAFrspxXDZ7YhbD9kzfMde1ifW6EvXgbNKgMsZBu3YCX3vEVsSJcjlxN7tnULiVk6nx2gCIOGKAjd2OOdZ5A9TUtg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715786543; c=relaxed/simple;
	bh=O0UDiiScxhGESE6smHic1EF023hnjBFkp9IRoM/TwKQ=;
	h=To:Subject:From:Message-Id:Date; b=X6tsUfyToYuhenT16EWzuhDjyHn6YW/boCfhUhtQMsTurwvso9m5QDgmG9C3dMxjYWbGN1zBPsMMBrq0riG6Z9DvRnSk3zzqVP3Ex0QS5aGaFuXaBAWq2b6y+b1A1VbDSOpxazzEDeSfl5B8Bqd8Q93jP3sDnqNt/9gUMRmOkIc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P/Iwq5li; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P/Iwq5li"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0A110C32786
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 15:22:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715786543;
	bh=O0UDiiScxhGESE6smHic1EF023hnjBFkp9IRoM/TwKQ=;
	h=To:Subject:From:Date:From;
	b=P/Iwq5li1ywWP41R4cT5AXj3cAFRNn/r25NMdvWQCycjjJMCPht49rjOeRWJkCp2m
	 eHuur5h3GXeAIH0PKHnCbEd1mGur+DW4KaeO/qoc8CgZVibkvHzKJhegpe1UVytybs
	 eCC3QPhudamY6zW/BXsQz1jPFrhdcelm8PHm76Tv1nS5PogRERq7+PR0oGBbEq/NCL
	 tPfbgwLgyKbe5GK6KKO+1XYdqymIVeFbhGqU6l9jGst2f5Mq9cD0tb94kv+zmuC0dT
	 UBEDQosxNmrPi1g1V5ruTvJYuGllvG598cTWEEtJWO8w52z/XQPnuK3jsb6RRd12i3
	 XH04t7oFay5hA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E4270C25B75
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 15:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171578654284.32167.6476881487354572059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e96e7d54db7b97ff3cc31a5b30d7bebb59c3c7f4afdd5c6d86f12b54da9f11ae
Date: Wed, 15 May 2024 15:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715786542
