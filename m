Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2185319CC0C
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 04:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775450134; cv=none; b=KFKHAB3etpq4qtoDXPs8sUibyDF2q9lrJOBbbIXio76u5PzCZaS76v7/WKnJOJj6vGSuLh2cE1Tgv1HoKy5BGY6ayx8aGh8lay8Ru1SY4roE9pMtqE2fkPVr5a7y3qy3A5JA905tcpwYJuz85g9lsy1u7oUNWYaabe7M9CeeAmI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775450134; c=relaxed/simple;
	bh=8sOvrfRHCqtHOfzvtOfdrOAHBt58sIrzl0W2n8pj/KY=;
	h=To:Subject:From:Message-Id:Date; b=Ia9sbIs+aD/FE9X1czbTWmlNh7Zp64SmhJ0qf+pczUCcZ4kbvLFQpNSPzCINAOzbLxSqiry9ScT6lGfWigk0p1Xh0ejCUTurYEJV92me1ES9QQkhtXIVI22mGn0aIxuCAMH9ZR0X2VrazcKMZ/mTuOGKr0oiFqU2B8+BNHy7w3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P+dum1nQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P+dum1nQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0374C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 04:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775450133;
	bh=8sOvrfRHCqtHOfzvtOfdrOAHBt58sIrzl0W2n8pj/KY=;
	h=To:Subject:From:Date:From;
	b=P+dum1nQ0O956rWaKPKraTu3xsssouVGIgduXlrsvJYYrHMVt2NzrTYDNUdqGpUP9
	 s0X3zQ/ucPUJ0RsrBiZ7+y6jNnNr8iBZW1YBYJUchIQoxPQxO8t9uLlPU9uahAGEbE
	 LWdkDECtcOq9ZKu2yvNayD7Y3zXBPniXpwGDQes/VspDAJn1ZolOon2csjU+iC1PGA
	 85Tg7BbwWDfzIkP9ltZSB/QIXFf4zyq7knfkpkVxwHfWVZ7xkG8gienCrnQhIrPLDr
	 B96tgbsBLsuDK+2eegMIQKLZl1lmB/mIhm8WjpP/Sun1K/9Tjv1IA9W5K5/cI4VK73
	 HKSZbg6MbOZXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD8ADE9D831
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 04:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177545013368.24862.17299766081514299283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f9279c2a4cb4d09f601b6877785dad5aed441e9f397194e702af92fc1767893
Date: Mon, 06 Apr 2026 04:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775450133
