Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24EA91DE8BB
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 13:01:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763557314; cv=none; b=Q6y51xTWh0qGYM6LFU1v30CziSbgBKwqbjZrS8TfGM3yM174tGZUZztDOZPJSj907aYHcVqlOnNsTS8dXAG3aLKWvM+5dXZR8bmnq47arZDk8MwzHd4U8fI9eBpN/SML97Yo8qA8dRUZGMrXTEFNEK3eCm8Ki4CZcPLAew+tpdE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763557314; c=relaxed/simple;
	bh=gS8cj/fC0+Uv3FGp2B34NaEsfbk9bhlVhLGs1L9ZNX8=;
	h=To:Subject:From:Message-Id:Date; b=FKFotKZAQgpNSjOwnfn6D9UHkx8jzQlOl7YgRnE2PkkTeA6aeaF/tXiPLNMOvtxtqxsPWJ5HNxIkQQcZ0Fz7s3PfDfUu5zVbaG/PZnYB71jZeN/8b4voNitvlfde919YT6GGcyhq4IWliozGBBYvzpPKAtwFiUWO81hLRmst3w4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p2OacLwU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p2OacLwU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6E63C16AAE
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 13:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763557313;
	bh=gS8cj/fC0+Uv3FGp2B34NaEsfbk9bhlVhLGs1L9ZNX8=;
	h=To:Subject:From:Date:From;
	b=p2OacLwU5peHH+MNloPIeYAfPX3CtQ5j+7NV9Q1FOElb6NjEKmhACqhvJmyzpY66k
	 /gAZm/xZWOS8rtnRCSy9z1Z2T4Vl57LGoQv5oV6dUenUHJ/66NquSgdFgW+E/sTLif
	 uePgfRgZ8dEJcb21JzaKgCOPr3y+DSKTUiYN4tzGWzX83lom7fWMXSyPGwap2d1JE1
	 BPgEHQeJbdATVqgHbjc4WHd7p6mj7HYWq8+UyFhxctiZ4lu7wBm/rxvUERSQLyEU7f
	 LdFcZQYzUmjG656IFmVmIUiSm0cpImNhl4Z5/OmPxLNrTHsAxpO7SGilIYMKirFtKk
	 PWof5XhZD3YDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A84CF34AB
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 13:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176355731358.8956.97338731596190089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf584528f4fa0d4d8848a8ae4b4aeabdfd8661564d8b2e9297cccda9eac5fdfe
Date: Wed, 19 Nov 2025 13:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763557313
