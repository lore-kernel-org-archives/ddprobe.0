Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 364A3BA38
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749084594; cv=none; b=gWBE1+1UjEa5EkubLx/c3LXZ0qQ8/AOcII9scZWECWWyClTIosMZecK6MKWvent0vAY68BvZ9OYGi3C2xWSZKblpF6Llncwn8EOtNdDsTQYMeMRMsmbyll5pLXfgl4UKNBaJ9OQM4th0WnBA7PQtiTUn31n05SutGvRZ+OwkS3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749084594; c=relaxed/simple;
	bh=XEwm0y7eqM6mx7XYxM2tygB6rSTKq+2ltSXlg93ss5E=;
	h=To:Subject:From:Message-Id:Date; b=jO1jTHknvycLCE5kfLAyVt6ZYrOD4CA+3K9xthWDwpIis2eb7mEOOVrgEmvONS0liL0yubYvcs51+dUVyUthkM84F4BeZ1NkyT38B0XOB69zUCJt52oGbBTr6zHLBIis6bPANkBYqwBE1MXU5maisuqXftu0P+osq1c6mI2pJEM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T9qQfsFO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T9qQfsFO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A549AC4CEE4
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749084593;
	bh=XEwm0y7eqM6mx7XYxM2tygB6rSTKq+2ltSXlg93ss5E=;
	h=To:Subject:From:Date:From;
	b=T9qQfsFOSGRRTEpbHpL1tNZF4zCtMvmq/kKX1L4b3wg83IkUdW83AxQh3tJcddZaG
	 T1JK1QxNJxiDXWgRO75vBJEjiGwOFL+6sFd/LI8nhJYzRlXJHErb/dp+zj1mTokqaL
	 htAVms2tlNc+EV7DdXndENPmd5jo4kYtosDQc/P3HZZrK70NmxyZaMdrtw2CMxGFN6
	 LA2a3jL39HxApWPCT0rHKsZqYs71NK6lHv5T91eIN5/O4/dqOvcnI9AcarWQwC0I9/
	 kmtp83kAHQEkslQ7hhjG3SDf7iIralohfnDhzyh1rtoEOZK8O95XME7n99rTLrx1ks
	 v77oDKn4KEzUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F946C5B549
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174908459357.31895.7989051583741068819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ad763161ec54116c1efe540d263eb871402b334fcbae59fbbda6b0d5612cbe1
Date: Thu, 05 Jun 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749084593
