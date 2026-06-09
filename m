Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A64C3CCFD8
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 22:45:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781045134; cv=none; b=qXjNSW/8wGUMeT4KJ5J792mVqgnWc4JjCnuaC/vaSXVh+sVRj7atz8L/RJvXbF1XoMlhoq/Dqv8PaIZWcMI5GBqbC7RTaT1ymdsh8F65cnc3IzVpgWdx5oDWT+3EOcUKaMth2RNx1+yb4xYXFQE4wWzbq7Da0gAPDPcNLwseW4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781045134; c=relaxed/simple;
	bh=Crb72AS+2c56B2XaYTGV3kO5VbiD3rfhk7dXy/iw9rk=;
	h=To:Subject:From:Message-Id:Date; b=I6fko4OD5BTiCSaSiAMix1V7xC1abHIJBEhmsgPse2C9TJ57voL528YhgNidsRIHd/FznVz7SplyxdqgqV1qQnR+iMm+8mHdv3n919fcfireoB3FXwDwSdVhSvTJKJ0B5PZ37sRi6Eqt7Y1Oq5DcOQ19qyVQXvtJuh9Y67EO5VE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GkzssE1X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GkzssE1X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC0DBC2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 22:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781045133;
	bh=Crb72AS+2c56B2XaYTGV3kO5VbiD3rfhk7dXy/iw9rk=;
	h=To:Subject:From:Date:From;
	b=GkzssE1XwpQ6yDVKTEYpW/ZBGkuYmqZdR+4Yb20BE76Cdglk4xQ1xhjZxJhXtq4Br
	 rHYPSD59Az7s5iXyadPMraQwytViPkt0Goa3Hivxyb1e7oNRS/EGbn7slviNiRZztj
	 bpj8nk/DlOZ5H+4qFYLItBmNBrJRD036iJ+dDsyMtYN0xVTlomqa/3Aoo6onrqgCwR
	 +Be4ocsJ3g4tTIMByaEpSZ/1KZuxWk+cN442Cuo1KeZ/rkOY0AVk+/pmMJ+k/jcCpO
	 FO9vwectL+Oopcbi9nU3LC6cTUHMJRSJesn6PinFYRSW8aY0C1AJEL75L12Px/PSPd
	 o+w1h5330JRRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB130CD8CAD
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 22:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178104513368.1182.1731003107400889823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23be9dc7c5707adc4dbe1f27767779422f4cecda0347e5b063f687d984482b95
Date: Tue, 09 Jun 2026 22:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781045133
