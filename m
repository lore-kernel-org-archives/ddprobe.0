Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 059E113FE4
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 18:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707242897; cv=none; b=X89/X0v3W/dya/SOS857NX4naLk6Sk5yRJb4XsdZWluczVUR/WgZdAHECusHhoLs/LTtIV8piM9KcP5lC19YzmKW93LHvxxVAZdcjr8899jood348iQNNAyKHoXIZFTcXoUdMCJ1ft3lax5NINclcXQA7b3m/z8SiQUZKXYNHAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707242897; c=relaxed/simple;
	bh=vYOvyN5i4accZBPjoj7f2YmnVDpgOY8TIKkM0rLV/xA=;
	h=To:Subject:From:Message-Id:Date; b=RA2tfsVTSX8vGIBgE47VV7u8EemNkr4WotVZkFnt5NDreX6JNX33/3UDUr/cTlnTmKubKRyZqf2uAaLQIpfINl4Aan1enRZi+7zWasJwOvFgLOzsB5Qqc785eE1rhK+JTBUkKDPbt2q+TgIedaK8KYtsnJrAr6xP9Ov3hNaahQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XppMXUfA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XppMXUfA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7874AC433C7
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 18:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707242896;
	bh=vYOvyN5i4accZBPjoj7f2YmnVDpgOY8TIKkM0rLV/xA=;
	h=To:Subject:From:Date:From;
	b=XppMXUfARrr//ncPMjhsw2J/zVarF63vhsI3TDcdWeIlkUn/WSRzZQwMRC0ACy7jH
	 aAHdnYZb0bZ7RlMkzluDvws/BPgdHSfr9pnJcEINShU/7FhhUblIjQlbFlf3PNn/d+
	 M17k0DVuOUG25jh2OD6cleN3mIb5OIwXAGq/jQPbo5eH1/xpANqIEYULjRU5VEwPnW
	 WLv0F8Q0LYbc/gEBF1s7U2F1NO2wp4abF3hL4PeL6NFhbPCG7CR06tnR2BKVMvyWn9
	 YKo83vAjYWhefjOKO9BG7Zb+obV+SiwqjSoWOoh86GCPSxebO0g9vEgzIKRKCOpzk0
	 +mOlHldTi0GfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D703C48297
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 18:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170724289637.14178.13353816391695339701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbc549bcf86cb679e3f8897e16495ca939c06c2cc147a83e3fe87d91b56efc0f
Date: Tue, 06 Feb 2024 18:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707242896
