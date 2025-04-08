Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29279264FB0
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744106994; cv=none; b=Qwm22bw3tJ2NP6eU2plYBBEYR7wMd9W2EKQ4hZ+1y/aVjY4wNIrB3sD6UwkZeZkEhLi/PImxBQ4cg+IWxLmWVJkeqD2CikQ7CstIcjNUHx9yN6nptBa0HsNyrFwMyxvT5GpuffGX/G41qVqABc7MnKDh9clHGIn8OycfFhTNE2c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744106994; c=relaxed/simple;
	bh=nPaavTe0vfLg4Iz3g+OWFRLyQ9CA0eib0qRk9kRTcuY=;
	h=To:Subject:From:Message-Id:Date; b=AfH6NpIITzf4z4lCq1J8ivvwmyoMHKy07j8ronor+Bdb7YAtdu0oJWsufnWnf0Bdue+a6cmS0L42xmnLdPvugcU5Iq8yG65ppmfywKr5QoNVpKgUt3LBDOOEMpplK6B3V7mmwOAUxmiwjgsXKF/hGsj920EMonpn5HM9GqXZzEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R5ACeY2x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R5ACeY2x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC39DC4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744106993;
	bh=nPaavTe0vfLg4Iz3g+OWFRLyQ9CA0eib0qRk9kRTcuY=;
	h=To:Subject:From:Date:From;
	b=R5ACeY2xDbnzsMOVXgmHJNsBxD1pxhH1C3nUSgUnnd4+ldJdrY7aY6uUQljEnPG0u
	 A/SgI1rX35hQw7kWEKsCNYWcxXzMxQOgDSIcne53wUHyt8ytPCMUm7vWGkG274w2xE
	 QBLWZT75/TBLqEuCuiJjgir4daf7RYT6f1Wz8xqb+61BuOM6wZE0AwCNMShnGfkf86
	 v5yP3sY85lhrR2Cv/TgVW6MYsjPQ/rlHNTwF1eeDxLAFNwullbuf22JEc49965XVu8
	 J3lSClyQ2GbkSzvoNb0TLC8v0Mfp+VXsQKVOZNXY75TeC7OVx3VXBstLdGaMdwD2tb
	 hsTFKzhJNnMww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96990C3600C
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174410699360.25814.4849531652925424201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2509d900306310e3eb17ee770142b43d30999682b5f9d04caaf0a42afbef47f5
Date: Tue, 08 Apr 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744106993
