Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21C1B1CF7B8
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 09:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725441954; cv=none; b=Acf0SA5bbFTkPZL18fjE+l00s8WSgjFWLJ+Lod4/ukzm0AErVzL0N/LVcc6DV2KI9fOPOxEPFdXeIvFU/KYds3O6JXk5enYkP346Re3IOcghT8dvlT1IdNTB5OCNth87OcXHREhk6BsbSvTi1O85u7VfRcaPYC1vkrKyzQWnsXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725441954; c=relaxed/simple;
	bh=L9xdPFh8NeHxKtA5wJNFkzBSGBKvYZAxZT+he57ysfE=;
	h=To:Subject:From:Message-Id:Date; b=RjYJCuXII5fDWT9CZYzjlz0QXgXMZ03TUANZ+g+jbuwf8//TVDZupQsKKfcLM4MODjpE3BxfZ4ymHz6a5axei8zsiBZVXGf6q8IdwC/qFKWdLP8ot0xAMyctF6Ejou8gMwz1vj6YGJGuJ0AzBHHYO7ThbAMtT3kYJo7v9P/6zkk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lrbcDZS7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lrbcDZS7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E8DC4CEC2
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 09:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725441953;
	bh=L9xdPFh8NeHxKtA5wJNFkzBSGBKvYZAxZT+he57ysfE=;
	h=To:Subject:From:Date:From;
	b=lrbcDZS7igk1W9SrXcFHzvJYiYgG8kRbwj4Rxsl1nSwLJjmaqATKh3ZOnxM2BK9/x
	 tsMl33FLFYKvniIT0TFnKFOXQNlGzN/IY9oltgfc5dY1Eng3uQWRsllvvSI86ArObZ
	 W4elHAPAdYY4+rPm1utkcjOBszsbFVlvLNa2YBfW/ZQmapZSh/G+lB5QbkOQ6xbgMF
	 9rpVGeokFhRihahITYGduPcFgA+/TljvwYqT5luwzhp8NEzNxjqyHCZckPR0788/xB
	 rJbT2ZrPyyza1ubqFgmX80DuxGuTpm8xYId839fc7XPFPvTZ+OE14XPWarKxasy3dE
	 7UFf0QJm42DsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 960E4CD3431
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 09:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172544195360.23279.5466279012532032511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 563a844239981896fcb1ff7013336c28f03ec9a938f2a21b738873d217246301
Date: Wed, 04 Sep 2024 09:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725441953
