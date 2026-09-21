Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6351E547060
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 00:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789948834; cv=none; b=ETQiasF+RJQQFn45NacZ9MYKrLOsY5cTD+Z3OqbdoVILBhy1E4+pK7+MSroZMaJTshQ35x8p+XwhghsojII6vjFn8i7hzNCNNrQyzPVPlziohLDWwKYPbOi3YxazzovbpvCala3AkNBgs58m41+8pGKbgM4VCWHILv0/dVrdfr0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789948834; c=relaxed/simple;
	bh=UmcdSs2LtY841tX/ni7FRYO1ClktcnMZPNSuDYhFU4E=;
	h=To:Subject:From:Message-Id:Date; b=Mec28nZ8c+9kPfa9to9iEuybqXNXV7/hUg6g9EvdN9j3YSgf4JcbSu5b6LKUeokw1CmtjT+7JCIhyZZwCmbMcLFan6x28dzbEioLNOYBB85qcN2YahBHfQK72qOwn/acK3TDPiWXdvGy0sHSG0VRteLs1ZsCdigiG8GyvWB2HeY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z/iC80Bv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z/iC80Bv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA08FC2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 00:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789948833;
	bh=UmcdSs2LtY841tX/ni7FRYO1ClktcnMZPNSuDYhFU4E=;
	h=To:Subject:From:Date:From;
	b=Z/iC80BvlWl9PjsMs4RCy96FYFob+HE3b4abmX6lNqFbuIiW7jxdn+osR9wNmNBAX
	 P8ektJVjer6vdBc7Pc5DKNJE1XDRMyy+EMLj80myVCCTjl+60r2XiiMVLyZ2GES8Sh
	 A/o3KZt3oVhYdelvK7NZnBLkXrHOTE7crinUgxpcYNHV+9Zu2LQt/ZzbWEIzmwKkDA
	 tgJfICqO/QafMEkR9ujd+xh72ulYBCPUtXkWyrSITwvqM8hnO8bMv+gtslbXOlscNk
	 saczy883X+lHg8PFEiAAD19F52ET+zY2wot+GYSsoOwUPFqOUdxAdPX424KNhedDvy
	 R+/fidZuJcqmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADC6DC982DA
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 00:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178994883369.15346.12985008627137943445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3a507ea0e9e52c48d976f3391c2292581ea383780557a49f91705186e382afd
Date: Mon, 21 Sep 2026 00:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789948833
