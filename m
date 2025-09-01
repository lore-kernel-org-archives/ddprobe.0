Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FC4332F75D
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756769994; cv=none; b=YANHXs0SUpgr/bPnvnKIyl7LsAVinEn3XwpZ9ll38i/q8WsZlJzwhAQVDyoF/OE5hOnNEFl4nDnTH0P3qKBeLfa88AdO/Af4PfSn3jySg/tGwRGUG8oA7YgtJDiC5WQqlaJYtp6N6tQ6VCLI11TMK+FUB6FyvUpQkuqDMkcWnDA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756769994; c=relaxed/simple;
	bh=d5rjaOOXXyqnMzvcpazvRhuYdQm9rI3nHfnVQV0jEo4=;
	h=To:Subject:From:Message-Id:Date; b=u5QLX2bTO8UFD95+Q6e1i5Qa4OZXFrfum+ilDDj7T5uq8jD6WXUKjt2MhYYiGyBeXpt7RIiG7ypo7HXADrqo4MSIQCqWOkG/VqejtG/Nj4I56sdvoi5rr0BGBuQaEz7HUdWmhWGt2go2gJKmzLbcGq8KEhVD0W2lYfe2HWLyszw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eDJHb7Wf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eDJHb7Wf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C55C4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756769993;
	bh=d5rjaOOXXyqnMzvcpazvRhuYdQm9rI3nHfnVQV0jEo4=;
	h=To:Subject:From:Date:From;
	b=eDJHb7WfVmU2c2r18yIJTp35JbDeMZLIDwc34U/vkS5vPhmkz8IxxhoGc8e/9b01K
	 tvVy8ulmqSbFfSwEIyer2fmLttru/8SvQtoBcGTykW3E/C9E2NgjKBBLFYWWCT8B+7
	 HV3/6o3kiYlSqYSD4MH5cBnFKUj1FaQW4mrkU6ApBl3jdcsq6IY1mSVAhsjA+tWp+c
	 6++N2HrPI03ZsjKnCTogGPGKe5ESLc6NSjs9k/RR7GVzkOm4Jsx4mio/eYF/NNQdjv
	 LEd+VEG0YgtciZ6A7SZZPwiUilIACXfRQ2de8pe16UOm7pjBGb5ZFc3EBljuoVBYVw
	 DiY219v9mryjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E30CA1002
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175676999357.7335.7312154818660117195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b44908b854c3bbea7db43a0d162c02c894d67877e2bbb0024e00524f39cbd52b
Date: Mon, 01 Sep 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756769993
