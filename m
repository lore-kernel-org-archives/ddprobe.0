Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 609AB1DC745
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 11:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737803154; cv=none; b=rrzTCzN7Nkq0uFBXxRHKFbPP8pZHF/beLXCZvdVfEEUcENtWgjSucxgjqFnqRXjf+wiFrRTr1KsP/RXV9jGeTY2pJHrKFbJE+32DJzyz2+o/PLqcalTGWGFumHq16WofeC07j6zwC/tGZ2wPvmLiplMxd7LTYHUzKsRv/Cuxh7Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737803154; c=relaxed/simple;
	bh=rhAACBy+XKnvJKfbpvEyBM1JeZGcrUzZv1UodSqgdA0=;
	h=To:Subject:From:Message-Id:Date; b=izbCmlXti0nuy4l8w94MQo0pf7o8xcjYjRCVdsjXZV+k9EJMl1qgrMHmykuOoKzXyiLPT6xoBpNv25umI/m6YGz7v5gO16iAxyK0rdXnErxqQwxYwMtCBqnTP36ZiDS8CSadWLwLbIvbhGnPChbLN9mlj2IaCrUNlIR1uRNLibk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SZM9HqMM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SZM9HqMM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B93B0C4CED6
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 11:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737803153;
	bh=rhAACBy+XKnvJKfbpvEyBM1JeZGcrUzZv1UodSqgdA0=;
	h=To:Subject:From:Date:From;
	b=SZM9HqMMv9QuIulqdPGtS2uNsJO4ZI9qAHDpLjozw5GvYIvEDm7XWjsINHTLdYKoV
	 5yhi7OK8S9zhG07PbL5J+68L8V77Pg+//kA7w10tqWvsktKQdWDiGKc1KETqpCvQGX
	 JX24Evlu2PhXHLv8PBc9A5k77FfXKCxbzR5kaV+MyMmHrN+1tQuXLELakEK4TGIWF7
	 k0F7JMK83NjpnrJEuD5+o0trKpSM/r1RGInF556Tpu3uziKvVLSzbi875V5yRoVrcw
	 Dl9Oayn9ZWlIsIxUiCuB5z2hJCjZumCK76g6m5MS6mGdOAJhp7Xlqo3nFRM9xiJ/tR
	 wGjFuDsMIZ65A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F332C0218C
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 11:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173780315362.8000.7675773438398102173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a1cbf3929ac982430867494177c9abec9108d4b9f12cffa05fd45275a657638
Date: Sat, 25 Jan 2025 11:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737803153
