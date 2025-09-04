Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A314272816
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757019594; cv=none; b=YdfbSNa9qkbLdvs+cjzIGjXGxCBIJ5Ta5hym4NEICQV4PmYWUpfnylaK8gqiAKG7q+/+K9HbcVwaaR3Xrp5ieeK06IZFSJUPZ1Qwbq6x6cCFQ1X641qQ+hrL6KbVZ6gpyUsUuUxgjD0dz3PaZSXVlt6isZMSFr6LGSdFrfvVJCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757019594; c=relaxed/simple;
	bh=dIInxJbFGvmFyy07i0GX7yB9i6Aki5LDjf2lOtvhEwc=;
	h=To:Subject:From:Message-Id:Date; b=IGyGBC+adpB/cL8SJZuw2La5Qvdvs+HuauicTrqMGnSPjpJMwz8wCcgSAiUf3DxjkA8D7XhWUZgFw7TDXwrPNVlw/IgkigMU036pvUNNDxPMb/f6BBAlfs4tg6X9Wu/vkxAYYMmyWVX0KZaO4pVzUSojIvt7FnSY9Azgy1swWAc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d38H/ALf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d38H/ALf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3084C4CEF0
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757019593;
	bh=dIInxJbFGvmFyy07i0GX7yB9i6Aki5LDjf2lOtvhEwc=;
	h=To:Subject:From:Date:From;
	b=d38H/ALfBoLuuM39BoEYF6fMwQ1SQnsEgGYQ5iAyIbW+3LrkAIrljVyLQgBVYY1UW
	 ea7oSuRPVWa8B7ebUBywAXngvPmXV3C3HwHbLOGmRVzkoIXfFBQAuYYNS/YPO5Ye3k
	 bPBcvTICmmJUmTNjJZsI12pBMn5wei7kgpjdi/6DXVKZ8ePTh+SAQOkYNjL1hPWwSa
	 o8NEUwLRJoRZSfrK7R63OUIag3tBYa6NHf7v1G3GxewmYBbgrf5EGtuQXdI9i/jD6J
	 q4yZ1ZoVale7k+2MRYgB9MFD0wXlcHWtnIP8HQqtKKmfECcEdF/vD8EDL1S7pM0Chk
	 HYEiHl2Q1BQsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6A8CA1013
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175701959357.7849.10233412523326622614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c162bdd0a943cb28b35b94bc630accccf62f7f6b79531ed604b4a103cfd56bc6
Date: Thu, 04 Sep 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757019593
