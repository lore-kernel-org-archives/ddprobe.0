Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C03C3955FD
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 04:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787630434; cv=none; b=PrUfXIYQVhe2czuUwP47yedGblzNR6WjzIkoBXqWSgNCpG2uiHSESV/D2vyoCwtxCyu2qvfmzNfESwnWp1R3Gg72p4TDSM1R7PW0fXxqcq5fO55BKKi+Cr82rw6jpfsCUqflAGsz5QkCMjAaMVhCHMZrf6OQN+CFPEAYL+/m/vk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787630434; c=relaxed/simple;
	bh=6h4u0i1oqHHuxwT3faiwcmi8LEBaeIEBdb78ij8t+DU=;
	h=To:Subject:From:Message-Id:Date; b=nT+VvgTRsndNScS/03ZGK7BS2Qf2sRYaIghfnWmA9CqlGwtI6d2vVf+r/Sl9jjJ+URh5B0ofdVEkq96ztvsLrvTogtos9X/6F5b7wH3zhNdSyl30OuV6slfb3kvIisdFmp/Bn+/iUtTBN7y3lAvluatFhG8it5sCSm6ID3nW/HA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XZ85Ti9k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XZ85Ti9k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D466DC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 04:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787630433;
	bh=6h4u0i1oqHHuxwT3faiwcmi8LEBaeIEBdb78ij8t+DU=;
	h=To:Subject:From:Date:From;
	b=XZ85Ti9kos6vRNfPX2pIA9tH8Dajf8Vk3SyHhmOlXF+avryzw5XdttwlZRGFVrPL4
	 f9e+4GH3clUBF4ux/woAzRujISJXbyhgbxHgEOkCs4bOwg+fqgMYxn/dFFW0AO9K1D
	 z6no2+p+mMmIh4yfPR7zH+YG3Pl4vq4iGq2PNAgipZQACewH+rCV8i8e5o027MPKhS
	 zJDyH6D+2B2qpF+eSVIfVLIvTPV3+TSQSLiIOx3r8kGqf/m4ZTwxMP1BhNyzGg+zVz
	 URcL2YCCfLjpdCfbJLcQ0FBCngTWTpg6CT3FVGYYH8UnflcVPB9t0yGhDK3ik9mP7l
	 qW7mUUtZp+MWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD60AC5B572
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 04:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178763043369.21147.12195472371703925970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6563eb18dcd081084d829d16945518381f7bb6145a9ecad1c7ebf23bf54e662
Date: Tue, 25 Aug 2026 04:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787630433
