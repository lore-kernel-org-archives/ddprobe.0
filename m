Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33C911F1534
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 02:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778899834; cv=none; b=ZOZ7rHO205/yK6OL6xWhWOFhB+a5SO5LdQqehYsZsDQuGb54HkJz0PlEKfVJIIeEFl6oGv+1cgXCo8RJKrqQYDGAzNq/tZirccrlsvnlNTilBwkonUeFazeZzxecS8/p/EX4O5a82wJpdqDcEpPn+mg1kI3bBfL2u3MqR26SBr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778899834; c=relaxed/simple;
	bh=HeizMJ/IsKwHWH2LAJXw1Yo33xomRFFJTtvJ+t4dfx8=;
	h=To:Subject:From:Message-Id:Date; b=DRxnmjWPhsKq1LVaXnTIiIhNeJSRiVnKiBELfmWKA8k5xlkU6M5xkiIpp0+EnMeImcqH8DgoavUOxCAPao1McZAszaRONgnGFp72VUnfTGR1ByNaEb/OZMnAzIHMKmD3moy0nIpxTGP9NuQwZ42OqOBsyNCckfHPd3yezGppjYM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hehCraWI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hehCraWI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6EA6C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 02:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778899833;
	bh=HeizMJ/IsKwHWH2LAJXw1Yo33xomRFFJTtvJ+t4dfx8=;
	h=To:Subject:From:Date:From;
	b=hehCraWIW51p3VmoU0iZHb/03u9kGtGJy/sQHPZptPA90SbxgkTsDA4gnXQ934CY0
	 MDYy/p/PdIvDgsxXMe0pP4HoK6sJjUOevn8lyRiXFgra7gH4zWGUa0yM5zNO4/CnjK
	 xK9q6aQ4FDj9CAhAZrTTbnFUzdxaq8jzk4W66oaCyk5gF1g+yrMVikLs9X7j8Ljlp9
	 nFL7wlhPj70CkyhmrDbVQ6VPtsgI4NEHLUpnH8J3FT61Zie3q3qWFdLQiNZUdpN1hk
	 FPnWDWzQvezhGoURxORLe/Q/hDOETuVMriHPqT+SeU/Mq+AxOfYcEA+LHxm4LIzW91
	 QrkeESzYjz7Tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AED69CD4851
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 02:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177889983369.24455.15038987678490413367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 061e1ea89ca916540c022fc76b35469ffe3e164bb1ffaff35db2be71c06cf2c6
Date: Sat, 16 May 2026 02:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778899833
