Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 669D91C5D59
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 04:29:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743568194; cv=none; b=YuTMlw2MBQTNx26Qxu/Mei9HeZLkAET2zKlzvxEaYAD/yaY/XnQMn2s8UER4l49HuWTaEE0cTwmrjCDHoz5NS1Lx4DwQScyhaY/BEy9yf3savsdqx/zG0xCg1PodgPxvYX5rY+DH3btskRrbucODsyIX/e/joodWZJEqDi0qI74=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743568194; c=relaxed/simple;
	bh=ETnhiCHB8JT7Aip2iWPmyeg7LZfDJ32tfRs6CAqRjrQ=;
	h=To:Subject:From:Message-Id:Date; b=Bu9iZQVVBZ/IHBTC+nn4/CfYZSaitBvXWrkG/8W/VAxy7iFDNKE0sCKd2tPDW48dk3oKwEZDrjVMTnxBYHJqNpbzOjuYpGqKklsebs01zzm/okLidwO++b2h8yTHCT9FK80ZlGB6YLyxOqSaXMgUoafvdPGtLs8XWHJd/ClClqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VE7qgckx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VE7qgckx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1622C4CEDD
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743568193;
	bh=ETnhiCHB8JT7Aip2iWPmyeg7LZfDJ32tfRs6CAqRjrQ=;
	h=To:Subject:From:Date:From;
	b=VE7qgckx6qL/2PU+boHet+G6Bg0Z5kxqnDQIR0cdsp+MyjDTQ12MNYn1xc5f+nCQr
	 NpnXpp9LdZX0kzkO7qCGMGH4/NTt8BVoAsK0Z8fb1mc4yAoQIB2Q9cD0XiZxpVng6X
	 QjDwp3EWpsA21MV4dpwsetAD+cAWF+8TVg0qZ0+e7sAQTDZo8ZBierM/IlLHXPQAE5
	 LiGGSz3/x/KURXCXhdbvqoYev7ETrgApV9abjjrgfEACAtwmM6tOeu3ign6JKJzJ+a
	 EmSeV9NAjPPHGi2ZITRh23fhVVC2ypGrDeoo3aqanuyfOb56MWuLBl92oJq3fIb45I
	 eOuYrJmh87SRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7B42C28B20
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174356819374.4081.15554848466299970343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a09cd7f8c97aba0c973a7c8eaf495014af91408e3f4f1ebe14a2d4cd20465a3
Date: Wed, 02 Apr 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743568193
