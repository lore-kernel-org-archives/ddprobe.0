Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 389E32BD03
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762060194; cv=none; b=uWRCRWGjZ1Q+42nHxfymQ2F3Wmh1NBl/hmVaBhgqd9bhriizzlXx95V1pOGy+Av/oGmHsMQMnFVsYgTlc65XhiW8oYv38m7foziysh7eaoP43KKWzZwqfzNoYZUAVmeJLH+/kqGkAXQhSwalNBtVRNSZDl6KfFFA3QKckZl5J3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762060194; c=relaxed/simple;
	bh=3whUoeu9rU/GtpqlZkml4moWr98NUd7MhbffIlhgMPc=;
	h=To:Subject:From:Message-Id:Date; b=YJvgBotQzNaHP76iOcPAaSq3DPQoKlMHTdfSeXtNXDyO4LAL+JuCD6jbScDorGx4ItzcXuyeIrTfprr58lQbImqTOdgeTpA1zjVKGHntm8BCPPGiOjUwagZVh0STUY34h1/KGIPzmqlSMXQFUl/ozFa9m5YPEYBm2s/tQB+nt7c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i3kjNC0D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i3kjNC0D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD363C4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762060193;
	bh=3whUoeu9rU/GtpqlZkml4moWr98NUd7MhbffIlhgMPc=;
	h=To:Subject:From:Date:From;
	b=i3kjNC0Durayyx48PUzGRP4ZBGolYdtAa36XERvlNLCPoycpaeBRoGy4CS0C/+ODD
	 L9AkrRo4V92dCqwCErSU8MVvpOEkLmUCTEoOfaaPpgU7F/g1CbZONsVGXGbgFmUTMj
	 FDHwyO7zeHKyLxw3P3J6oJjf9DDPfSt1UEca7OV8fuzOW4Fqxsw+Q4C++iJljyZl7z
	 LWMONDenssjWn/eEAPf+ZxUgv3jUcJuvbeyarP8N7F/6A83qcYxdn5gZrTALT6QAeu
	 Fg0ujOE0TgMXS9X5JJ0TtDcG70Hwyqf3dtF78jrRccbq17ffjLtGkR/PksY6hIrnjV
	 dI3gtJI0d+z7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FA31CCFA02
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176206019360.14916.556038542345292487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab1040a533c8d2865b848a91b84c4e68062c7721071d118393f3d84bc45405ee
Date: Sun, 02 Nov 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762060193
