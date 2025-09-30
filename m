Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 090E035940
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759255194; cv=none; b=rkuUPfyhJzkwds2U5GX8jSAAi9rrmCqsHLGZJork9T16MfvQvxRXXjivpSD+6lg9b1MHsrwGkkrkD9lUnrpIOqcqJTT2k1SkoQ1YugAY+ef0oU5WNVmLr3IR6rnuVed98q+3PsUBQ7KC0a1m5YfRQuFeVaffu+E7GTWbsuZPDiw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759255194; c=relaxed/simple;
	bh=ZIptItfYGwM76eeNwDC7U4IGIhVtcPSPT1pbYZ6BTJQ=;
	h=To:Subject:From:Message-Id:Date; b=tXuXhMAjs45qOEG6phC8VTLiB/NoCSv5ORQcnms+4F0JJ30lKP8hWnKUijX0q05Soi9qxIs4bcpDdtHeSgDapG2067ko1wN1zDvyTxcmg1yUdVicwc42O8iMhTdRj0r/RkK7AlNpfdzVgkDoZDfUpdg+qBMDhRZ99Mnz5OJbF5Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ai/RUebo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ai/RUebo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A134CC4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759255193;
	bh=ZIptItfYGwM76eeNwDC7U4IGIhVtcPSPT1pbYZ6BTJQ=;
	h=To:Subject:From:Date:From;
	b=Ai/RUeboQL1G5bQ1FtN3QXxR/qbPkhWEAX64e6IC/y8h9FBki+G1+k12MyWAkBUVO
	 g4QTS1o0sRqv7DrCCzQYV6zOeHfEtnCn+lxHZMHGA8jK5r7/AqeXZJC2e1CndxJKoo
	 ZHlCbbQ51QyIO+E4TiKEAa56BXgXpaVEyXjyuKV0HMmL/Y9X4lKUzP85sCcP5xQbfU
	 K6FyvrV9TfdMm9ZxP3THg6IBw/pJN2BY2ilCRzzX/J9n7fyu3tuENBuCSULa5nHmHu
	 SGMDk10e6CP2dn2Wz+jKW6JWQYEnVwENiZiVkxQVgBbDklbH2+I+XQ/Vy/BdjqzN66
	 8u3tal+9X0+Og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8F5CCA470
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175925519357.24317.2011303523203415748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7079f9b8f1352d3da8552bdb15b5f25cad4930574c60f1539c3a725bf3e35edd
Date: Tue, 30 Sep 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759255193
