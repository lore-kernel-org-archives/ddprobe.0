Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6449B4B7A2B
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 21:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790025034; cv=none; b=ngL8YnTNi4Y8UFSkCrYnuqD+vaPY2GWql649SnJr1a8Q3TbT0YZoKh/2oFzXTuPz/ZKAY70Hr/iou6zKfTKSlZzyE8EVclX10mrvCedEsEjNNCFwk4FBb1f13T1vihhueFOHFj/scwla0PCtGvU3NUZIkCRI08Onn9paYuMGh98=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790025034; c=relaxed/simple;
	bh=anr8HUaquwsVoAbz5sqhN0KmXvJyWG3kgc4M6IKOiWw=;
	h=To:Subject:From:Message-Id:Date; b=ZQ5fV5H2UEcAfUxqtJv3x5/KZpWsbcMSfDu4yjBJu/l+a6UDWDi++7VlP+cITkFyeMNi8qJCsmHUb9KNgpYqJ0x1lFXGtufZZbm4V3F6aav5zFau1Wm4XGRB2NXT/Ud0wECwMJ36W5n/EF4xS0GPT5S5qIk1LOpmLFBNsz5G18E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b1UqNLcU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b1UqNLcU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB676C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 21:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790025034;
	bh=anr8HUaquwsVoAbz5sqhN0KmXvJyWG3kgc4M6IKOiWw=;
	h=To:Subject:From:Date:From;
	b=b1UqNLcUBXb9W9lKYoKz3VF/vHayKOus+OEU2Euoq6LhhTuXPAl4y/RTBE7fQ14l9
	 ZnmXUAszxwe19LRfiCgCJGiaXAj3qi68usHwaOvIG981XN/HjPwRC9BIORKVPfcojX
	 xFbqLvXhq3zaexRoaGjvsic6sV5x5YzMT3JPcOgi5UycEa6fVRTX9KlKmp2+KpYL7O
	 6lmamd8I69dC66vwlR5lTWAXXwQGbpVAZtoDmekXuzrq58fg/ZNyrNlDfvqigx3WFj
	 zUTbxEdQV1ganPqkq0VdSkWOCaoQEUqa5WA/Co40W8+6RyEmX9itlWAB1YksDzHVuw
	 4ZD1k9hwntFiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C292EC982E6
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 21:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179002503373.16406.3488307937094306481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f64dd15261a324c804f532340fc3d42b689cdcab39c2ae848fd461aebbd0aa1
Date: Mon, 21 Sep 2026 21:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790025033
