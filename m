Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2901431E113
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756912194; cv=none; b=t8SOLKhYH5CZzDYOLiYUlaoZhB6qDK9xJ3rw6vsx2p+PMTJo4zlLuX5TnUYG9EyjS7Xoa36Sh2SSyysngtvoAn6+Ceg7pPpRskno3Wbbfg5LClwtzbBh68n56LZiRN3aMkD2HJAAFjBJd3tTnuRseliFJ0dl1JcsRKAWO/79bDA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756912194; c=relaxed/simple;
	bh=DcCUs9MXUj7RZ5J64kF7YmKVedP3L3Qz5KFahFIRkNY=;
	h=To:Subject:From:Message-Id:Date; b=rgFJdoS0qaYtf+/iyUkIVy7LFpxV04Xbg9fT7ze0onDUz6XoznsRnZKJpYaIqbPnd5rExbyOtiX/IvLm8ZFX0eT1AdLjVqvwcltR1jlgPjKYHXKOxfvb2X3AinFh6/emPKtfv7MZdmoL9Eu6G6OelCZhIlKqbka/cMSZck7nEnQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b0MNNsTn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b0MNNsTn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4848C4CEF0
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756912193;
	bh=DcCUs9MXUj7RZ5J64kF7YmKVedP3L3Qz5KFahFIRkNY=;
	h=To:Subject:From:Date:From;
	b=b0MNNsTnj6Us6VFNxn/FBaOWiDy65ols2j4CCfWPm5efHeCZ+I2HD7HctMf0xdOq2
	 XreGpmNiWPv40jXDVFb3++jPcuEb9UkW3rMOlJ1MNJ4hEvVHTdFUhNfjoK4WI9QA5Q
	 rbQSC5cbx5GgQOlk6RLQLLF6ansUleKFacaN1VflJr1d2binWhXHu6CmscAMrbHoR6
	 zwHtbqmPaAeBc7WSnR1gITANG8fz4am/irTjl0wL/R3gLuUx2KhojJdZF+06ZHkmML
	 ut1DTKAbR8L+c16VGKNBvPxgnoTYUkKVhdZonStNAmzKP1pUyCPY5Jfi1A23MeBo0E
	 KdyvPAPeVaQLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91679CA1009
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175691219358.28638.6602137044158311271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18bb574c637bb22152098e7f54abc3618309f98009ccfda2c13306b42e36cc4b
Date: Wed, 03 Sep 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756912193
