Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16A25B660
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754803194; cv=none; b=ABR8UwHHM7XLlKqbcFh7LAGN38bNDm+ZfH3En6vmrqxcYta2HbOEHgDBonMWv0MniN8qjbwxV531ri5pfYKaDTRKemhxKTzhzEYlMwFkwB1ZpX5AysMQFINiA57kyZ2XoiXMNRS7qMv6+5w63xRW7vW3OD2coYoi/U6stIxDNHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754803194; c=relaxed/simple;
	bh=wnja2VjQpSiOo/IjqyjvExWPPFgAiUpOdape+Wxa9jI=;
	h=To:Subject:From:Message-Id:Date; b=GSMsipEd/bYrNoQZZpF2oWxf4OEeGCRbsGeCfFDmvcFA59srDJ6/jcAsKv4PZoND4tllx1sENKEAoPfHNFqXsUdNxmvIRSSdDhVO/UcuYIEhZy8U5wYyrN3JZ9ZO0+7aoMZ3nUhcKKDS9IYIJK/qNZmqFd4vmzGMFM0/0ryuRFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N2FXI7we; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N2FXI7we"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E754C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754803193;
	bh=wnja2VjQpSiOo/IjqyjvExWPPFgAiUpOdape+Wxa9jI=;
	h=To:Subject:From:Date:From;
	b=N2FXI7weTdyHQShoETv/c5QJZkZczOdVfcurHuanwBtSuJ9JNo9Px+1Ep7gMd3bE4
	 UPj7wMmN+JoKZDkjIhh7602VkKoP2i6JnGVk4Q60/QXjJ+vhKYe3feaAF2z/nXK4f2
	 sw6SJLsYpUcYZ7nM3WJENMxJPp8jr78B97j5Zy7djg1OFiLKEZhw4RYqlshvDw13mW
	 +3DzuBBW/FCTSxA2PTV+n6WoJdFxRmCbMTBlyZIU8+KZAII1w8TyZ3a98JMYzBEc0k
	 9urtT2Fs+UwOHwZs0zDckkBMfOssKNz1Dd6LknXxzv9bgExgEPanb5HdcqyWeAz7fD
	 g9+kLgETwSl+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9093BC87FCF
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175480319357.24025.2748680820945505972.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6032d4f9ba95d95077614523bd7936845dabf40feeaab4e5780f2b797832c65
Date: Sun, 10 Aug 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754803193
