Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1331317B43F
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 18:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775930854; cv=none; b=IUuF4/SFKTiLbgPvmDEU62UCWxY3LsQIRLVZ5sv2CM9ZXX8qIaSWC1+0YezZ4YTCuxr7SW26RSt7FFpJM5+/ZhZ2fFMHBYtjR6/0695fF/JMQwMDQygxQK1TQKw+6aKiOX0jOOq54LXW6xLtjePs0Jzyakq9cL1eiLP89j3BwiU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775930854; c=relaxed/simple;
	bh=8QOsnGNMmPMgvRUccSJUmLTrKPYTpwkxLeCjkKmUSw4=;
	h=To:Subject:From:Message-Id:Date; b=XAxfwiVwSopf/3+YGFRWQyT7tm3tCAAIqwq8kWr21/Uxd5ScRSa4rNYQul5DnU4EHXvTBZ9zPm/QJVH5WC2kzwYow6GVY+R9dzl3RjqZU5vBm553tYjZ6+L8eXOrkV/htRiBjj/10vS6LIKBEmoCAnrQQrxFevNzTTg68vYA+e0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mhV6IMpR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mhV6IMpR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B914AC2BCAF
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 18:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775930853;
	bh=8QOsnGNMmPMgvRUccSJUmLTrKPYTpwkxLeCjkKmUSw4=;
	h=To:Subject:From:Date:From;
	b=mhV6IMpRV4LJKa/4ZiXAaFLQlr1ala5piUMhsxf8wQwa0jWWAtvI3wwM7gCTp6YiY
	 XD/3TPGBolTGKWB23nw8Tz11WIWR8VW1QT98qm2GLwmezNUWM6e2tefxB6tuQDVM8t
	 NjoNW/+O9i4RKjmpjE6aU4vrRMbKkW/qMd+6SMlF9kPg1mmM2LZNSvKf/HF0r7kyGl
	 FAvOiNqZ+q0syDkS70jpbWMJuK4v0mIaI5UujSS0N6zUwrB/hugmjgE/IkoVNrSgK+
	 2sqW6jkTIZg0tdRF1+0XefRP0odRxudyV2S6d6Jov0vpriFthJq6RktToM03W/Uy7V
	 cIaWcRTb8JQyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A99B4F3ED5D
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 18:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177593085368.32673.10103287519437354916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3b34eda5aefcd9bd46eb4be427676080679f5d9ba4c2545052c1f37ee017c2c
Date: Sat, 11 Apr 2026 18:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775930853
