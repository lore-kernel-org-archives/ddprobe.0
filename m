Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C4B27E578
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 11:30:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713871823; cv=none; b=iozti2n83WDAs4GrAf/ZhRudICCkOsEf3TZvoiO3iWBo0kZ6vhpucflfb5AybONLtuzTWGfXErrzJR6cN6eZ/7AvQIZxXnG8+MqM5fSnf77DNumP7SY4Vu+pOz6/ShSlnFT+thkSwab2UUI2cboqZ20ulqPR/GWZ08GgLnSKosA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713871823; c=relaxed/simple;
	bh=Mgp+MToguKpBfSU8CtlW0f2N1e50GDJEHtPFvdbLZC4=;
	h=To:Subject:From:Message-Id:Date; b=iVSf2WmZXRa2H/1+8TiVJOiGdqwWSZlIGnwlQTVY6cFSkcv/OXzrQEpInmwYav5Lgd8djt36Viyc0iNZG65RmU2Ydt7wOz2p+zEro7ksCC4neL4yT/AAUaS8KO0dl2taeT2gm+KRQ56iHyd69fZzUblBRpsKNJGvtGuqZAQhEvM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tz/ixy8r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tz/ixy8r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8449C116B1
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 11:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713871822;
	bh=Mgp+MToguKpBfSU8CtlW0f2N1e50GDJEHtPFvdbLZC4=;
	h=To:Subject:From:Date:From;
	b=tz/ixy8rVCgYrDcXQQxJrM+8V4WtB12XJ/B45vnW8eHunvvgjiYNdoCDj5Vjr1dgk
	 PB0vqo8DcZZfMk929BH1XKUDlf0JTPuQeAWWWvTPdcgoeYdeAFXJBhx/d3sb++tbMd
	 LgZfk4Bq9r3r0vrNv53qFYo7pyJNGcx5DpCO23znFtbs/ayur+36ZFfhpTt9HZT2FP
	 dZ5G35l8PYOBIupNvfKILAOpjeoTaJ/InJNqMc9ymTGTjS5V5KHTj7eToDrSm/NbgV
	 P8JKqyCfALODLGWmPe6jk7O4EFRPQ+lx6uSXLXCDE9+vALJhuR4bdobWh0EFbC8WPq
	 C/stb7+RYxzOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE9A3C4345F
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 11:30:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171387182277.28716.13272419026700238047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce17ad190148d1f2cab382c0499951beaa019f0fc2d21d2120b339a413c3796f
Date: Tue, 23 Apr 2024 11:30:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713871822
