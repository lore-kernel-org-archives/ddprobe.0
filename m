Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31DC42500DE
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 04:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732507554; cv=none; b=qUr0h6drhsRQRWeNcocY/rp1V66iu77Wsj+vKd/qErvSvzQPrYcSJ6U20lBJeGtVRmqRcAGUfMrucs2HRZNUtagdpoftIJs9hTONOOM08+qDW06eoyhUnOt7PGef21W17rt8KC20BvQ2ofeEL2CGZryT+jmeTlG89NGUUa+wyNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732507554; c=relaxed/simple;
	bh=IeXxG7Ne06c05siZIF+jquBoxLUCbc5LJgSBdLXbw40=;
	h=To:Subject:From:Message-Id:Date; b=qckDEFQwL371ok5Vre+OyEIcMFXLvHX2OjyCh0A4yLFRsIs5FJ4OPVDN1phmSGxoYCHlTbMY+8tnGB71y7gQODJRIWsa4xeD08iFoYY/HNKh9z4zLi5HPPU98SbYKlEDtLY0vU+zdVxzHNB/vxbx4Jl7HUvEh5ZLknP5r+0ln3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=umvPfshu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="umvPfshu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2188C4CECE
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 04:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732507553;
	bh=IeXxG7Ne06c05siZIF+jquBoxLUCbc5LJgSBdLXbw40=;
	h=To:Subject:From:Date:From;
	b=umvPfshu1vWoFPjHbMATwrMIq63odQuXJ3WDq9X51/nVTF6ARHoCkyQmP5PguFO1f
	 NRZaZ64F9SkU7gYx6pLa0p+ci57AHiZzL0rwj5SaqIfwe5BlkOp/jjFjU5+klOuTw6
	 hR1kvl6sPSpdonef0ThQyZjkTHYt51LB2eF5oSu36DkhjbeLQoPWfIIh9I4/F9Muqb
	 PvdQNDo3/iEDNKfNxknTHjGazJ6DsbpcNMNLIDyddePTnkYvlIEwRlwQtbhIJCkKqP
	 V6gx3Si4z6lx+dglb34T6ollz5R1EGWWhw6HEruGtnlplFbuBEArSw9oVLTc4vTLC4
	 hfS8izRAbQ3Eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99866D3B7D1
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 04:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173250755360.30018.7045159005972803328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b76d9925bf7ceabc10203fcbbca03d7382a8a876b622c4b64afdc7685a3d472a
Date: Mon, 25 Nov 2024 04:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732507553
