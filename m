Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35FBF17BA9
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 05:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734846954; cv=none; b=UVoPPJdPTXTSMd/B4uZVoGWiGAz/l6CjBcVArRlCT55KK/3eh33SsMog6B4is/Lp1SaHyuM6LA2G8ybuN0KlaesYqgdT7gpDfmK09KM1SqZUpPFLLGeKdHhlYMLaL1ehAdjGMzvLpB43g2JLpd6s7o7D/xmM1NTuIZAaZCl4oHY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734846954; c=relaxed/simple;
	bh=X/Cvd/pJUM+PgzCFGF7vOGz32BpOSJLqjoVYa9XWw2Y=;
	h=To:Subject:From:Message-Id:Date; b=nSTB5rnkEs5hW4DNRpLXni/pSvcRyXkIuqdzvmbPKUKPbsJxT37Wx400Njb8NbdQgaMoTtjw0vhfQTHerHQQH3l0XmnWgtVElKvmcGI1uFb+UkewerTWIkChBBvtw1qqF3etJUgmVfctduYCnD8dk4FtJihchcA95Vw3VU2ONZ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cjd8BqZ0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cjd8BqZ0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3FDEC4CECD
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 05:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734846953;
	bh=X/Cvd/pJUM+PgzCFGF7vOGz32BpOSJLqjoVYa9XWw2Y=;
	h=To:Subject:From:Date:From;
	b=cjd8BqZ0hTXZgU8WWuQn4cDrFKsS+FtrSVwa3Y0Z2R3QQAywiKw4glxs/vY+G6uOE
	 RGawHzpSGuEtr7YBp8PiX60aqOcDZCmUKHfYPRQakfKOVxVrKenC2reGW5KhNMS+Ds
	 YbBIP3opWl2mk/R14sISVmL7D4mi6iIoIf9yKrCo50hdKeYW3g85SfZqkg33vmbhgQ
	 0EmipUaoNqMRrwwYCYf6lCqKkvcpUPekTI8lSeCqkspAgCJEpbOLyVOUjzykpyg3Wi
	 Ft5y/V3Ow872ZL5uZepD9Dqv3+qwknXJ9FBsb2whl28d8Vp3VocxsUgoQO0Ehzy5mb
	 cBq5VdApGsmHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBB7E77188
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 05:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173484695357.5992.17427672059233892049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06dacedce7c92eb32483e8db03eabfe2ce99a7dbf171c0aadf52c2d72bfdce88
Date: Sun, 22 Dec 2024 05:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734846953
