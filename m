Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EC901FF610
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 19:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739389134; cv=none; b=Cz0iEV9b5XaTe5O8017skPsOKM1t8elqA2Ow+3hmH08dwRdKG/A663zi/Q6HAAf8bQjVqxPLniMNyR4g82ScC1UOneBa/99eO8aNPUmCL1tw6AlaaM0ELNoTtWjjl2MXUiK47Wy8Z2OraMwuRiAwFby0G307QtLPM8F2N6oTkYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739389134; c=relaxed/simple;
	bh=Y+lqbRi2kuQSwGA0Y2O/AuYbw2y5Y/PyDN1ONKx2Hqk=;
	h=To:Subject:From:Message-Id:Date; b=rA8nCfKH/dtfeCh3WSsHLIeqBsBXX6Px2lw94/ukUyjoglDuVEH6272GdpFE9pEhI8xniz3Lz9SbKrWb1S0k9i5+k45C1ReQb8YogJ6uGqS+9i2OU9EPWh3dg/sYc6iCyxYjq9l4BkciSDtnpbGuEO9/P2QErYk3MBDw3JdbdkI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FphI+qFx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FphI+qFx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8E3FC4CEDF
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 19:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739389133;
	bh=Y+lqbRi2kuQSwGA0Y2O/AuYbw2y5Y/PyDN1ONKx2Hqk=;
	h=To:Subject:From:Date:From;
	b=FphI+qFx23/efSr3JCC9pV44pICzA5aNPaxhlwX20FeSutwOdei5Jll5VPxfUPowz
	 xLxAzFaqzH4G4CPj+UPKaLyQKZKxX6zeBTVs6nyoNOggDCmVPV2hyrzZ+n2LznyDEx
	 kyZw4ZYeykNghK0xYFXJMj5YwJ7QCBR1Yawov7EVgmtAifgmzMF4XazLS59e8fki2T
	 Fisjqhx6EgP5Lizl5SGFoGSyKCKCniBel2YvxRqwL6zv0D0/YbluZfYeuvWTWA+6xx
	 8t2PnnSlYHlH5t2M5d6QsewxLoJ1yBh4dtbD09fud5oMhP+Mk8HdAEK8WBtCs9K4gj
	 EAp9mFmmswrTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99351C02198
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 19:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173938913360.10442.8010398360943255583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45c5077e2d270a17af9aa5dd1c83de83e7dd73d0b7a96370c23ba04d31c8d9b6
Date: Wed, 12 Feb 2025 19:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739389133
