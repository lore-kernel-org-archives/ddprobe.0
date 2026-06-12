Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49584219FC
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 02:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781231794; cv=none; b=jLWMJayL8ouij8iE5PxPvpyIApF58oi/9lvef3AXDF1qbIS5yC+Ba2nbr1kb9bbov2XVTwq4a+7K7T4vDQQ2hDAc+SvvvpSUOdt/Nc6azmef9jTLyv2GF5RnZoDapwvjHV3GUv+chS4U/VtgT/W3jK7BAL14bd1HZ7HfkQJAFOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781231794; c=relaxed/simple;
	bh=gQ5jQ/6g9ZPFFgaadUz4j3aCHz2B9q/7vkTWyIdpGYg=;
	h=To:Subject:From:Message-Id:Date; b=MkIRAWAEmWvTIirsEVEvq5UNeI74DyvZ81p3PWDaq6UkxccVHEpBzRaoPYuS7wCuFBrUxhF02hrF9TDd5kSnftIUiyRZf90OyU8FnfxlR/5cx+ICP4ThZS4adtQPQd/ceTz2WpDoVDDntGbfE7lMl7Au/2nyJ2lIQag8I7a/Fis=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rwJ4FhlP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rwJ4FhlP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4FECC2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 02:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781231793;
	bh=gQ5jQ/6g9ZPFFgaadUz4j3aCHz2B9q/7vkTWyIdpGYg=;
	h=To:Subject:From:Date:From;
	b=rwJ4FhlPOH7xjwLoHY6K9dEEUHItkLRPjT3KGTdwAXi8RPaPQRqci7uXa0hJK1085
	 lBiz2psZOnGC7qMM9uLeMitexRoMzihcNTMFPQD0lAcRSdZegkgfcU/9c9TvjcvaE9
	 bqCoJOEl1x3BA0k+o+xtvUQSlV71TTu49plgHV13egYjuxMXymOkEu1qwytdjTR4Y2
	 /l2VloD4dLZwll8AU7Wis6Yrj5xqdWoQnBU4x/7WqNZViW3KyWBPiBSkm/UeCrCszj
	 dL3gyXdL5Chcgw66ZrG5PD+M5Ox8KUfYKFbKErTTKDhEkwGfDvc7qVcT90qS0EZyGE
	 EgdRgKySbNnHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBEC5CD98C7
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 02:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178123179372.27678.12763604359740581606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 291616d8a9fa02c421ce20c6d248cfdc84ae9af1ff07c8646c1da65f3743b8be
Date: Fri, 12 Jun 2026 02:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781231793
