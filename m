Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 774701E876
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 16:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713458963; cv=none; b=rDXaD719KGMSKqMgeqf03E6IlTskgapk3eeT2g+XFOjrUIFLBrG1oEctv4RFpKaJqyON4vs3zkHmGtt+p7nFrofRZRtDncKATQ3hEB4Q0zBQLkTMXhG0AwUOR8w2pPGg2tVT+MTZ733ah8Q1tjoi9RCUm6ZyIO7lSfdgMaL9/3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713458963; c=relaxed/simple;
	bh=CX6o7on87Tlh4PKSL8DiqI8jSdizE7NxamBVbhcxs14=;
	h=To:Subject:From:Message-Id:Date; b=pNQKLuayx7RbMbtFn8o0Ehpyf0MBdzvaNe66EVKw7ihmaFlwZ4ld/INhyll0rIFv4uzdnyVyJb0OSR4fsPHvoPL0EEt7hGneXHF+UHMKQhYcFgPw5JQPQ9vEkxESAsNvQ+Fzx+8+Z1aooiqhYS8jHvTjcjo3zDWs1tTUfgrm17s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PhmM3pii; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PhmM3pii"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC28EC113CC
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 16:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713458962;
	bh=CX6o7on87Tlh4PKSL8DiqI8jSdizE7NxamBVbhcxs14=;
	h=To:Subject:From:Date:From;
	b=PhmM3piiT0tflg9oM1gscqREPIEJ34FVBd57LKwfolMlZLvMPtUc5fj0AFQkpDGO4
	 iX9bwqHxpWkziMII6TwNBpADQy9pQXGr+S/Z3zMLrPuUS0gnIw5Fp14wGY0jBlRTS3
	 Nmyet6ZHdGJbboHf/oLeCoQDTsdbfWIQe6uZ1G1yrO0WzXaRu9y/x5GgsRrBf+7UBr
	 D6cKlwy+XEOW/CV1hMFpKyLc1Y6NOGKNHuA3njO62G+zOPbNw/HXuCDkoie5znvkpD
	 NwVG/9Y6Q40t3hfyrkn6sFby/YJ7x9YNTITORXs6/6OLEw1AQ8XX54SF1g5NjuJzze
	 hEdf64i590z0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C61D7C4345F
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 16:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171345896280.3483.6624158585214407779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 039aebde1d1aa0868c66195d4f5825d945a6dab2a0373ca0ca8b46b99cee97e1
Date: Thu, 18 Apr 2024 16:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713458962
