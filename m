Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C20F339FCE
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755445793; cv=none; b=RS2IZFbSEUMEJdCaaNUnddWBNfDIq1gQ8P2PqNDrGUFsJGnA6mQNB+4WoL6gdrVCdng+Mi2zvgz409TaUb+ylr5h78UJWDtv26hXQYt56UJjcI6Vd7mjLUvcB8W6oaa5LerfqpiyFBFimrzw+mcm4Pg/lGcjIaxijV3lXK2OYGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755445793; c=relaxed/simple;
	bh=w2xP8ecr3UzMxhlXb30y+Db6zIt8IpuS5HyHTROZmlU=;
	h=To:Subject:From:Message-Id:Date; b=iB4qTbiRFbMJQusmOyJMbRgW2/qpXKcRjXm8Ktg61ZiRAcpGoGGOkzEtE1221GCtAMvWWe+Wpp/G6iykTb7UkFjdzUM6OM1jm3+rD+Hi6M7i5Deb1nH+Sq4cuNfwRt4Mf/62puOtKFQYb6G0aYPSgO+6UBZFTSPR3uVLnJRln7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i2PYlW9Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i2PYlW9Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F6DC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755445793;
	bh=w2xP8ecr3UzMxhlXb30y+Db6zIt8IpuS5HyHTROZmlU=;
	h=To:Subject:From:Date:From;
	b=i2PYlW9YSFlao+kF+8KupfGS9D19iG2NzrlA2fTZMjCOVmAHqB59fD93UJzx19isP
	 Fy85kg3N086LUkUCQ07rp0YO2KM894u7eF9uubR1fVYBS/Q3KY2oZwkJe7dDphNf9u
	 GhmA3oDj094iNPEEX88HO6m5WRB0kZqoSI920Ou8CvEflVW4EXAPtpp+j0iwlGSwuH
	 kNFn843Gwg4E5ZHi5Q6zDeGBoi6i6FJlU2/JIqopEXOv9aiUswl8bArL2o+kAMIL13
	 d5SSPZuePEhnGvD6n4QRv2ukTw8R9Yq49H0VKvgPNGbRcaivBAs/VsRZU6la2fWnuU
	 SH7FfBhPJo+ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FF7CA0EE4
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175544579357.16884.16769450340364623123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5be5b1ebfae71dd0f29d9051d4b7689fe3d5ff77a564fdd1ed785e278b64a782
Date: Sun, 17 Aug 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755445793
