Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3200019F135
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755926994; cv=none; b=qgX3hFxO2XqUsUgav8KkRlNiw0FvjiFFu3OI476T4TXwTaQG0szUrFNo3b8ItCGdcv4lZPINI/u9fznM2xiSWD6Gz6gYMBHxrfbYEiQyiJN0CtMaRsZojVOPnKelCPwd2BC797N4PbWezTsxn3k7TfuYA5mk4fbbH/h7Knrf4mg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755926994; c=relaxed/simple;
	bh=vnhfbwWBjQptHf14gnoKJnZyu7o00LxgNqY5uBcfHuY=;
	h=To:Subject:From:Message-Id:Date; b=RCzaxQfHrrbkqo9kulpSBCkSvCTYjyhnAJfpBdZ/61y789bdaMrTIZRwsf6/QpKtRKZ2gnP7pDR3y5L09+57zp8oXwf33knC+cclbKVE7p/J0dAfmL5DJInLlagU3VBml8BqIb7b9vG2ESALsc6ObMotqQSDP8K1zr8pogriy98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rnwp9jyA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rnwp9jyA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A544BC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755926993;
	bh=vnhfbwWBjQptHf14gnoKJnZyu7o00LxgNqY5uBcfHuY=;
	h=To:Subject:From:Date:From;
	b=Rnwp9jyA3Wh0cVWvnGCt60tzDSlT6vWeKyKmXx/0SX+7wVZWCdL9c16VRbGGt/uLL
	 UrFAqPSWuqay/mSUlPXLxL6RKWBWIeoaXZgcIVio/idEzR6R052TbSY68pM1XiOpmH
	 NzDidxQPAsqNfCx0bCVBlGrHJZk09J7ey02drVpR27Evc3q6IAg8lrBd12mSDCDMrG
	 ApQ/HGonyRCe54q28bhu+GsqgpAWoy8RmXsplQOJJ0waydbvkuKQt+vikYpAdElWZT
	 HP4kuO5RaLpZYCjt1XGzJ4yhExeFyCdk8KkhimV+Vq8ZeQlECt+rlkh6gYS7lpbkzh
	 ASDHC+UWqhhiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BD6CA0EE4
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175592699357.9647.5982950071792662675.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3baa5b4970c4a5291284598fa54d32d14a928cb34a06b6d9162331bfdab411fd
Date: Sat, 23 Aug 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755926993
