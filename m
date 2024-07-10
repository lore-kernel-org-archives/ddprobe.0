Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FC42189F54
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 16:46:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720629983; cv=none; b=MZbU11CTxTel1kCWJepbfdvhDI02bzO14mPBDxaGCCcDRmWf7BEFwtGTB7AsRNYhvlUitqpb4WusRIj8U+c0iZWxpaz2c+3/sTz2zfABSsYAX8roXTuKOuBaCr5F9nVW7ZZ+pWTTAPdJiPciM7rTP5neLbfoJazQt1Nx43h9tag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720629983; c=relaxed/simple;
	bh=LoI1OSge95XSh3gZgBenf8YmlscV6oNuZxso3Qa+S+k=;
	h=To:Subject:From:Message-Id:Date; b=BeXaz/exsTUCW7PJlSNaQ3Na3CZJ6NS3e7Y+1i8LyD2cDqwwwfgJEyWCiQIzgAe1yS4btFbw8zII37HR9Plcmv+5vProaVlUp05XE1q+mj+PL8AlcFBTVFBj4CVoeyt0BMilU1j6XU2Vq8Klg1VivABGdhGh3mMGZ1XYOkvKKEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TXdT1OYs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TXdT1OYs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8141C32781
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 16:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720629982;
	bh=LoI1OSge95XSh3gZgBenf8YmlscV6oNuZxso3Qa+S+k=;
	h=To:Subject:From:Date:From;
	b=TXdT1OYsiesrmfTe2ZV4ilvrC0kJkuCz+rlhIUN6Ef/tgQ0viC7+YvF7IFOYQ8uui
	 62Fc07hb7y8mfpzl4N9w5lVra5b86yCvelo4YJkb0CTYdB6CTXgA91mNmmqr04WjAm
	 hjvHy2SeFjP4fvCEStXzctFBBQ3f/2NIR0b/5HhzqI5CfTby1QKJMrju1bu9A7PI2k
	 MOT8ziZVQoRW/KAo2u9Xvbvr2ThPJ4AS2M2HGSpoFs72tvFI7Qx4kAW40xZDCa1ewd
	 lDh7cg+R5LbqmpoxQYYN0P0XSo56qowXvQvblMTdp7U1hE0hCW2a75m2AmPlzG+i41
	 1GLQ7HQytsJ5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C373BC3DA42
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 16:46:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172062998278.9058.16309885250254835466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f20c1d5b638826eab6bacecf750560705c96d1fc279daf65210297a77fceab04
Date: Wed, 10 Jul 2024 16:46:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720629982
