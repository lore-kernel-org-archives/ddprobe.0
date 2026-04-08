Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 290C63290C7
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 17:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775670334; cv=none; b=REWGSTh4+tzo/Wpg4wWC9bQecZk1N/STIcTjfXELuNuuKILRNc31UTm+ESFSY/NX5uUaQs0FnMzEG1jjFP5rzNx75gvT5byKiSTneS34NiJVLdveqXlaiScyZur7GKYeJS+rMM3beLUh1ERBU+MVJ6hHaEwZ1OIwBNRGYNBOUoY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775670334; c=relaxed/simple;
	bh=UQtG/LG8tSN7afCcxALcvi5d2dA1FbvWislDw5lRoL4=;
	h=To:Subject:From:Message-Id:Date; b=S00jkRMPZUHKnfeHBxQboHHbrt1zp9NcTkASe/JNEh3RFwCC5X9ycmhRtFfHkrgLrdcWV30lG6l3aZSg6poEQXkSp8QRW0XUFkENXXCsoyk8Nm0OO/wtkf3UTiKxvwaFucfwvaTVaaZrDvWMW8OsbKub+PuFcFPNcZuTLWnJFTE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G/ImMx3L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G/ImMx3L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B94FCC19421
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 17:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775670333;
	bh=UQtG/LG8tSN7afCcxALcvi5d2dA1FbvWislDw5lRoL4=;
	h=To:Subject:From:Date:From;
	b=G/ImMx3L0Cyxk8d6vE5oSxvoKAl9T8bnyG+wcpdTWeD/ZcevyH3+uOH2pRDIi6V3o
	 FxXEjoZ0B7qe8uh0hrNj17a6aBt6SZKooZmgIf/jWfAZqrYFLngDnWVxQ6E8sCd2zD
	 pKAro2L8FHXg3oj7tEIfQuTla8hl6SNNxg2iCCSNTfblr4m2KOlz8Lr0Jf+vlO0N/n
	 OFk7NslV2vMQFgfuUvTfcyait05IoDzbdA1N6TYuteYx7M/qFwbMjuMvVcC+ALrSFJ
	 wDUfHpYgFIhdPJTFlyOFlTTu6JQRoA5oJBmmYYSm+yiXUrJewYqmrET5r+zwXpi33d
	 3zsXuAUIFXcYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF3810F9961
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 17:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177567033368.11702.10284916354991707774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c863e9b5427b0d4a286969473ac3884fe667941b79f8a4f8451b96cda90362e
Date: Wed, 08 Apr 2026 17:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775670333
