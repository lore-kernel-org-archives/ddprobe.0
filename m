Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6155E70836
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 04:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783397914; cv=none; b=be7s+rw3B/EcoWSir0ZLiTXMau3ooW+Se1mtgg9eOwwBP64GQo3sF4U1yjdo1O0HOJPSn9OyS21+duvTWVDnfOY614iDx0YfCNgtZOyEZSQ4OZxhcvccXwp66JoKVInkM9Q+mzxCFdtdXTC0ApOlbxe3BSpTu277DNKPYigjU9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783397914; c=relaxed/simple;
	bh=rw3b+Zx31gB1Qyn3rDzVyhuR4tJJ1fDwVe3y8tdNolo=;
	h=To:Subject:From:Message-Id:Date; b=mq5NIcW0ajIU7vxGhsIFSRy1cvhKohliMn9gINkyKqOvDeRj7/12/hjfe/hs8iUP7sWPN0RnM/6NWIcxgk/OR4q1G2eLwcoCgxoEpuo47V3a1sfGgpmoETHuu+mBCkANq5/6ckCLCXFJv7A7QmbgizG0Bjjx2c9AhKTpclcd7JE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mgp4y486; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mgp4y486"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D693EC2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 04:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783397913;
	bh=rw3b+Zx31gB1Qyn3rDzVyhuR4tJJ1fDwVe3y8tdNolo=;
	h=To:Subject:From:Date:From;
	b=Mgp4y486lqQd+G/NqzXrLCpI9eMyJUSNDPutf+eKB9JCMyUmI//bQVrX53MZzPw/K
	 UcEXOYjoERNQxx3QlsPOyV/ZUY/Fmi+VI+GNhpBuEmcoA5T7Mq+WG61L8/vN99Rd41
	 TJ+gAeYLSnK2wPkh1HevAx6651ayKNbuvyFJ4OJr8AgCEvKUY1hkFX3RIk/CYm3WWS
	 ps/fz5l1MoXBwltMaqRyUZTKch1i2KnLx2GDb2oPyRUNHrT3R3jSSomKZTZGamcGuY
	 ZGtsVjhRJmcOb5FWMsCs5eLwz7xB0QlqSijvEgXNjJdBwuW+3m1cp658gkRayGtARo
	 haBvfZDZC77rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB8AAC43458
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 04:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178339791369.25348.13829973992974773693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca6ed435accfe97d2f899841f985ad7af6bbb58a6c9fdb2448eb2eb3d0d34d32
Date: Tue, 07 Jul 2026 04:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783397913
