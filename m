Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F8511F75B1
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 19:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733255754; cv=none; b=Z0aYrTcnVd0MYNN6QqM74DKRHwWGiU1XndjNjal01QfmKloKg/5D+L3dheUXotaRu7O4uWLb/NIjdytZfQCG3/0hwESaQH9bBKTvq+wFMH/5J8Moyu2jivOxlw6xjn5B/+cc4AU+fYG4iWGV4uhz5bmNWtSC6U3pFniCcSYAXfI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733255754; c=relaxed/simple;
	bh=3RZ8tYMiKaA6dvmovNYijt3BW4cR9WqeomFaQeygDBM=;
	h=To:Subject:From:Message-Id:Date; b=u8PBGf2je/IruLwPPRCX6gStb15IFzzSDW9okrSrCuhYqU+060YKVDzodx+7cqFzCv0eQRUFcQXBw5la3mC6ppiZziJPpdCByx3ErOsECaEYr/WiYPQmCVDGucbNIpAvZKceqSgi6tz2T+tr8sGXQjL8twgvWe0g33DSSKbudzk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vKNagf3B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vKNagf3B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC7C6C4CECF
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 19:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733255753;
	bh=3RZ8tYMiKaA6dvmovNYijt3BW4cR9WqeomFaQeygDBM=;
	h=To:Subject:From:Date:From;
	b=vKNagf3Bd3CM3wuGCaXuDXnIu2i3b2YDUjz+mxci9TG86x15P8RZuml4ordkqNIVB
	 1HT4P2pSa/1Xn5QEHOaVCTVqS9rJtIF0BcaXJJYja0p6NNiEyPMzHKr9ba0mvYPCrA
	 F0jO0IDt3emDdVVwnvWQRv7hYFj+d6JWAqXlGDgZI0On1u+cE6jbOdR2eWMW2GcEpA
	 ksWj/+hvjLhFveSCjZpsPkISE7LKbImt1jnrLBzD2ueRyVQ1NtfHuYyHzaWF3aQXlb
	 H2YhDeLsd+mUTXNhrGpfjodCT04NH9WsUQzxCxr4+6ZsnZm917MDdDElVXWaz0RqhN
	 K9gts09ipGrbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E72CE74ACA
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 19:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173325575363.18072.17350652721904303177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 578c9417d1dbc2819e6d9800674bebe738e3b1ab0f4d61158733328634673ebd
Date: Tue, 03 Dec 2024 19:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733255753
