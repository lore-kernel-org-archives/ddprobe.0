Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D6C834041C
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 18:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791397234; cv=none; b=oObWeg/SmjnH2iq4wVKu7Cvi9IsoxLHFDK6niRoTJq3SZj8wqpot+94ssbJfCmL0gSlV/++SpdJ+1JOp5Z//DXo0SfW1nsW7Dmz8mMN+ZAIQ6cyn7qtK46wvzF1d/DD7VVrpB6Km8+s2low7XKFEwAJEEYRRZAPSGqpTNccBaaM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791397234; c=relaxed/simple;
	bh=81xSOXIsoQdc8O7JDkZlm2gPwoUzdmMIU/92YbaMC8E=;
	h=To:Subject:From:Message-Id:Date; b=dGNnSlAHjwgIChtp35NJWfbklpJb511Lvr8lwRvTFcJUjmelivbXlBn5hvPHOPmbxhD70onYulVWL1AqJjuqcLIjDs24gcYheJc7VG7IHcpcrN9uCiiA7hspyQr9uPzJJzrwv9CGfZcd6IWoorJT5BaAJ/QMQsQfIK+ZkPhFp00=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D7Szrg/X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D7Szrg/X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C99F5C2BCF5
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 18:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791397233;
	bh=81xSOXIsoQdc8O7JDkZlm2gPwoUzdmMIU/92YbaMC8E=;
	h=To:Subject:From:Date:From;
	b=D7Szrg/XoZmkLLcHS0XRbKLv3URsTXpUNRlWnDyzDfK1gPrnFZxlSwwOtaq/aiK1L
	 MtbnsLbWQrO6yPJH55xJms71dGzSsD94hE5Ur5gudr8zBEmpLozUg7BkeNF9ml3TBu
	 Khd8SxZ3/P/4YTTMSibX8On6XGWz+jQTajLeb1Ogc6oJMEVjF36Ipy00rF8Y8dep6P
	 mCfOgRQ95ig3If9ORJitrmxFZ6oOei5aVKqmH+KhLQ0XLf+r2PUN65szMtOGPAf8hN
	 eVcNrePkkA6DELyl1aX/K2h5SRmMssMta3G4fQCFWS3afrmMxZ4bun4BaH85mhLXA+
	 wNJSkGk9FYE0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0D13CA6007
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 18:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179139723370.32145.10160228859506348712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93e72edea2962a25a1c724e262e52869b6623c599a0c9c4701db303ae7eef9ae
Date: Wed, 07 Oct 2026 18:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791397233
