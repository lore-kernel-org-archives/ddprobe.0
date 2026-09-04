Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E37094CA797
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 14:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788533434; cv=none; b=QUdVTrKBpWgFxZYOA3cN9okDX18AnxuuGRDtphkUlMo8CyB/5qUIY/iIIchZqoJkw08DSxHP0KYlqHYhAfjpchFoRywpmjnaszd4Pv4CQJBLnBLsot+32+vPppTAyXS7NLjjiFl7OOezIb7oLwfh/xVAfTmuPaEymdvsSGRSUMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788533434; c=relaxed/simple;
	bh=wpdkek6ir9t5umusHRtj4a9cURoX5o4uGL93wD2cqOA=;
	h=To:Subject:From:Message-Id:Date; b=Va+xyCSKgoIlWxMHlyc4LqAoQ4jcNF35wkd2lpPSTIzaT2gN1Rq/5WYlRn+/5g9XZQNdTqlsL9Rt2UoeEBx8cfOG8QwGtc98UbC27jZCPlKJMq7NZmfhx64DTME9jVxwEcXj4q5oQQUiRTcITkv/1JsjG4hUDk+X6o4aAvLnTH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WOAdQYZv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WOAdQYZv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF344C2BCC7
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 14:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788533433;
	bh=wpdkek6ir9t5umusHRtj4a9cURoX5o4uGL93wD2cqOA=;
	h=To:Subject:From:Date:From;
	b=WOAdQYZv9ZroXGMddhqGvOzFFtqVK0ejyKPeXARZ8nHz360t1bnODQiLn4D2vf0y7
	 n9zZ5XKGvYDztoxHH1FGGOhHWc6asb1lrhffdr/+bBulN8n3iy1hzWUpNDO/smSkIH
	 79dXi6rYMh4Iu+vMdTAKiydTOmbW7VDC/Tw1EvzH6byxc3UeR3UZRIh7FFZj2qUhnH
	 gPq6uuhJUP6W98K2bX/RLWIgtHKAzCWTFF42m5ASw0ZExK6alU93Ywg6jkSIjyq0og
	 kJ8cZQ4vXW2is2Kejf8R8pWO835WZFOFlevwSKSFZvGulExPq1iyIFiqpaboCOZng9
	 gQjnaGnZeahHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB595C79F82
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 14:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178853343369.30495.5801446004319282941.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3014eb9aa94ad292c4075bcc69d0e5a1f5cda301ab21dbfa4f8a3deada14a491
Date: Fri, 04 Sep 2026 14:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788533433
