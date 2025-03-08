Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 491DADDAD
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 18:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741460334; cv=none; b=reG/PxnMuQETct74aoxzQmFV2BchbbGbxb9A5HReStCz8nuwsHa2QN/VY1s3aJy2rpy7bpufIv7Wi9RBXicSySrEOKJeugKmLZL5qHJ02A0SEdBq+TLIgbw3JXXv97Ie8TkH3IPaLsMeX9iOYk0/oqihpdXp//ijrO+RH455ntM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741460334; c=relaxed/simple;
	bh=/geoFYNyhDMuuAgdiCSSlWxus3u94AVXZbFnAlbTCis=;
	h=To:Subject:From:Message-Id:Date; b=AwOFgzaFFzwwUpaOkfNYdxwYPu3D9zzxuinp/T+4ya4aavEoZDiw8IKXSEFUSUv8acKHtmRC6jtyG3euHMTMCbZlP7Y2eEdXYiBCapukWJMNVATUEpPT4QHCrGffd4ygla8UBrziWhC26xsEgJlZXWB7HVY/gIdFHh9YcU4iiAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LcUP6Mxh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LcUP6Mxh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC89DC4CEE0
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 18:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741460333;
	bh=/geoFYNyhDMuuAgdiCSSlWxus3u94AVXZbFnAlbTCis=;
	h=To:Subject:From:Date:From;
	b=LcUP6MxhSHmKAH+050tInbe3DUJtWuyFSgkPnsVH2mvHdCxAPOT3F9AqWMVSmXUo4
	 KI+cFRm6fyNRLYxLvx3xnjoOao3GjQ6j8M0uRiW+KLxhuW0fjdMnfgjmA7Q+olbBTo
	 MBW6FZZEAHOocvfwPpht03ilveIzTgES3rm1WwX7noHmUIaZJTbfBbQI0bdMg/S6hK
	 aWYl0iqyiMa5S8U6bE7g7b6XZMvvB7vgdR20eafb4Bi1CbhqxzFlhfimzOM+o7MYq9
	 YkdQr4w46KeCjla1HWLmYZ84shVh0ikLptzpHnR5CBHsimNJrhRzJ0wr4aA7uUmfbB
	 +ZI0tjjft6HwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97375C28B28
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 18:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174146033361.553.8760577656334412274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b23114f2c873b04f96ed5ebb562e696bd4fa2b51c5407ce35a65faa300897428
Date: Sat, 08 Mar 2025 18:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741460333
