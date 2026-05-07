Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AB1240DFA9
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 12:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778156254; cv=none; b=IT+ouzxe0fbQznoQ59jIUcSNZh+8W3fdFUuIMP1kOzzxnyaIMx2vH5Eg9Luc8PcOmAARVkVaNxsAdZ8jvMq/3FGC4QebvV0m2BEtjSMMqXlYqvugG+OinDTMoDCPnvoE/06TQy763uw1P+6TvLkaXQmdqUxp9NHLt1LZ4yQxWaM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778156254; c=relaxed/simple;
	bh=CSoOccdqv5oVui8qD8hR5d0mJWruuMvKF+HkvevQv7c=;
	h=To:Subject:From:Message-Id:Date; b=mT/IOWgvxyb9BFNIMpNAG8DZEUY9I+B8uY/BY7XN5Fne9GwtGxOV1XWXZOuPtbaIMBbIDcqzrMDkLTjzRash9K8VLTO5TmmTcbsj/4g6xHVjdvUJ7ncAnqoWLg4UC6DfNJWDNO547I6hd4ILXVNDkjn6TVhLq8EHhG0YhjwTZ/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ua9RTpyW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ua9RTpyW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBBCFC2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 12:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778156253;
	bh=CSoOccdqv5oVui8qD8hR5d0mJWruuMvKF+HkvevQv7c=;
	h=To:Subject:From:Date:From;
	b=ua9RTpyWmQdQg8gyyS5hAzID1QrqC3OIKepxzG8TITGmbNuRp2K5xCDV7AaueK1aR
	 N3kImNkdJBM+3/rmdFf1K428N9/KdmAggEmqrdr51xFAuINk8BQeBONOlwVZIxp4Y1
	 4657hnjjLhLW8lDSnPJ02r7R2zzeLXvOTxvZ+r+TbAbTy0T0nsFnv+/J1rn+uPHpF3
	 0GCuK+13K/FZB4kXiyv0yBewc/PeVRxzGWHfS6rkdSxxdZ2GNJBIlkHYi/ScgR3EUC
	 JQHXd3oxmgbOPhHgli0ih9/3c4N7+yNkl57EqBA76pSY34Wdva/o110S7FFJPL5/Ku
	 ZEgyHHHqdfTCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB2E9CD3427
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 12:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177815625369.31094.10018236051340230949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4174a27c39b39e7212d4f95f68597a5dc411e82f1659a8c55c43ebd471b0cbcc
Date: Thu, 07 May 2026 12:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778156253
