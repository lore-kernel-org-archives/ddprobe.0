Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20EB11FCFFC
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 23:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770681234; cv=none; b=Brrf+FHmJlBFXfaUfO6GCrbca/kINJz1IPMo5O7iyUQUjmytVa3cwxCOkisBGmqK5Cg5MzVRziW3RAeBuA/G2sROZL2gCvULhZaa+iLVqLz5Mhaob1pk2gLY3qBIVb4xa+M3+udgaojolHQLvCrlHZeE1oVMA1VzdHa9GsoL2No=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770681234; c=relaxed/simple;
	bh=5NYJEEU+8EIR8/AQWDTr3bImUM1KefqYXc4gF5pBDJE=;
	h=To:Subject:From:Message-Id:Date; b=dqI7u82M9Cb3a1cUIdmpxjf+Rp/Ib7MtHhys5WzICbGjy+/uLejkG8x/k9qIiP1//63Me64P6sPNaJS1OoNczjlUR5qjhGI4k621WSEya9BWonmhZlk8Sg4m8pQYCYQNqz5IRx6WWWWC97We9VwwYtl1EozWPuXPA4ugKo/42wM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fmeIS2sJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fmeIS2sJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6FA9C116C6
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 23:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770681233;
	bh=5NYJEEU+8EIR8/AQWDTr3bImUM1KefqYXc4gF5pBDJE=;
	h=To:Subject:From:Date:From;
	b=fmeIS2sJ3nZ0CdagSEBmV07run1DYQiKO9hk1t4PDrkY0GNzpNQpCFHtoBnabE6rx
	 th/hoAj/WQkIsEo76Mf+Gb0ogeJn1TewlMtqBLZG8XJYwMZJJ+2MCsZmMkSpU/jQzU
	 nsTajX0T7iZrO6+dN8cMu3+brg1m+fMQiwANKFCGbf8RZbThWUUj4G2/Ugqnc7Vd/y
	 xH2/zXU+13CO7/JKTAFFbzy9vcGRvLZejdSlqBg4AZ4tP4R8F0uWwd5ccV0+11lyJb
	 WNKw5xjb2P42cyFy89PWUFLds35sEzeHLuGWDwdhB3ldi72Vtk8hmkjh4wMS+4PiJ/
	 mEHKX/6wXI9kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1166E94622
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 23:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177068123365.10506.9582589137065357782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a89758ebb9ac923f0ff204eefa353f8e828bc39b6aa4517d24d05faa11bea6b
Date: Mon, 09 Feb 2026 23:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770681233
