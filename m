Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17F18BE4A
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752202194; cv=none; b=EEx2p3ce5VKvKly/mvxiGog/e1H/+zwupObWGJjOoYQSDbGOjkvI4iWJ8IAUuCo7ylQgT3TeGxVR7l+SFSYkg3nZtupRwDo0nfktsuhJ+32nLiUqDc69/kdffV2pi+f1h08cJ2ULf5wPBm4JQPqWVFqGmHj1Zfiuka4xIU3olRA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752202194; c=relaxed/simple;
	bh=enA4naYjNHDLUBR+zk0IJK/yJoUqDlts4hC0alhR/OY=;
	h=To:Subject:From:Message-Id:Date; b=EOGMbeBmYFD1WHjEjivL+Zz5aNhsJxlUVn1q6yq2ItXPzOAcu/j4dwwn1sTa0BKHaaKjzr6+KJ8kVhIKuKf4fZaGwvQezC9vmlvLSoXCVHn+dSCiGgaTyku9IM/Wn2B9x9X2Q6pgyMmHiz67KMyyNbetkDNxSoGZHwM5+CcSzjE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EmlsNhpV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EmlsNhpV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3123C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752202193;
	bh=enA4naYjNHDLUBR+zk0IJK/yJoUqDlts4hC0alhR/OY=;
	h=To:Subject:From:Date:From;
	b=EmlsNhpVF3mm/kyDBb32XtordSqUqi5UYmNvWpL4mpb9Bo75ZfITdTJA1SYOAqqzg
	 gwUy19KEmdkYQ0cFu4R4wW6w3vMPGKgSXmBTRUcLRV537nQkBuixxyw+td0uHv2BDw
	 EkKDaHh5EwSrk7qAp/Pf/W9BVuqbS/X7xpUiRip2PD1kSeJxkf5vMG1N1oNomfJono
	 U8Wk1/lXEaiS0mcviJW9Uy1Fno8bT/jqkd1AwqRG+5iWtL3R+LnOEIhW0GEIGK2qo3
	 oG1hrXxaORZ3YmxuI3u72nIk6mKOxhXbPVywiPHH0XEivMTaV9WuJIvxNyH69r6kKW
	 ZL9ghcP6AmIwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91AC5C83F17
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175220219357.15967.15747077402674302246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75fe02688bcb7cad27679c9031e1a82b03be0d6762304f288d7fa30e98564f62
Date: Fri, 11 Jul 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752202193
