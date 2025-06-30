Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C6D7199FB2
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751252994; cv=none; b=MwYFtmgWi7mPkJCELTQAIsIY/hLu37H2YkTfbnak59YU6mza9U+gboUjyAiypxeRjONe7B0iDTkyE1qaLC8fbAodGcYLbXHD3NlGz62KmT2n8pcSC9K93DZqJp5PXsG8g+HYbBmjlX9MNr26gNYSVAGYPThpU1b40akoqkrmzjk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751252994; c=relaxed/simple;
	bh=kOdmbYztBJ7MPPanGW5L06YhMMT+80mC5KxfNl4lxfQ=;
	h=To:Subject:From:Message-Id:Date; b=oINqTk+cfbuDkG1Ud2P11AKMF9kFN5Aa++0sTL58yxXzIhpIleEodFe84rf+5XD4s1oeulcvQTFauBP96YCjj8hHEcHcNBFvesqZQaMTSd4ZCQgAfwLF/UJKRdmdWpWmSIfjZWhl8em/7fXAmBw9us66WL8NruB99fmvoUlAZjI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gf00Ha0I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gf00Ha0I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F9DEC4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751252993;
	bh=kOdmbYztBJ7MPPanGW5L06YhMMT+80mC5KxfNl4lxfQ=;
	h=To:Subject:From:Date:From;
	b=gf00Ha0IqG+84kqjH1ronTyYVGpIQN+/KSQDT8a/QHJ7KroUfF6n4NmzIsYX1uHqn
	 q8tnsTXDXVrCcXvCwINBy45ijp2/43EmZ7mBCWIb6H9prRTMGnId0idAtsseM0jxi+
	 MAgNc6ndIM7NYnLXWvBnVl08yNSSfoL+1QNDfZwGwFmls2OojfByDrXAapLGBNJ3r2
	 ADYOsZz8sLP9ooyN5hhi6RP7C+VLTiGTA7iJPCJPGrZaPvCBCitX0MJZCpoM2b5PKc
	 SXP86Figp29xd5KPzjjCcdnRYuoReyqh9Yii5bsz4p8Ogn4VxWvWFw2sXLGOcEM41a
	 dpYj4W3P8XwvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F037C83000
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175125299357.31121.10377132979128434951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e289f4f49834ac974c272943fe121a97690657dfc94d00d5e1c66eb9577a6eb9
Date: Mon, 30 Jun 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751252993
