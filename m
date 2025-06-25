Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDAE7299AAA
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750843793; cv=none; b=NIBaNI5PPKryi6au50P7AnzSS9sv3uAeNFTRc59+qEFsXdBF9+UXUm0UTRgy/dZMiEduKpX4e1s+bKRv4GTbqcAj7HM76N9cVhxBfkDl56U3TaSMPfw4p9KgzJx31yHJjsH2Y/tX584FRVpMdyoMqxazJK9kA3ZdgGENGLa72JE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750843793; c=relaxed/simple;
	bh=AToe0PK1/3aMXw8/u+E2sPR8eJILtRPaMlAxPBSoZi4=;
	h=To:Subject:From:Message-Id:Date; b=VF7hyyJ43vwQFljtbROz5yCzIPy+SgHvTsU2NsnQeBP2Y0t/eieL0fR9Ugm8WV7elRZTD1HOk0c3MAY2pjV/xuV3LfnV79OmCIU1AkE6NCFW+9TJRHC26TAWj7edOlF85ud3zP8UJMQ5tlJZ8RfyvBLWJ4xDd2omv6W0NxT/GBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hR43wju9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hR43wju9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D942C4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750843793;
	bh=AToe0PK1/3aMXw8/u+E2sPR8eJILtRPaMlAxPBSoZi4=;
	h=To:Subject:From:Date:From;
	b=hR43wju9Q++1/TZLQvh/YexUaM9LdGbURMlPsk2DWWFfh+PU6z755khMuXTpkdNMY
	 Ovitwinv0h8aW5HIdx8G4Uewkycud85K0wQvND14EGou/vEh81mUQfnFNT/5ETEkwq
	 IQ5Rpnm2N+gBF2yLtYYoQ0HlksxETBGBNWI5rlS3R8+xEVTM3uzdD0KxnRcg+zEMXz
	 IeoPXm1Hs/4KxsyN+o5Lh2JwrKwCLBm1AEN3uhpyKyqifxiOsHaQdJO2R7r6RMBnCz
	 L1GDDPrzbBuZrUGa5vmrB1XPeF7ZP1ywyfEq4jaDj83aZu9xh0I2BpNGn60qJzrqMr
	 H8IclhClf3gUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E85CC7EE30
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175084379357.16897.13491444615351481353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83886ddc17f5e39ecde5f4cd48e2f8300f40c0018688254d5036838aed3aa599
Date: Wed, 25 Jun 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750843793
