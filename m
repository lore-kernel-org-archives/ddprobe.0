Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C4C456766
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 15:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715441543; cv=none; b=dVALmhNdbXpIoS1vJoWl85FrYkhQVNphBfvJn3hkmEp1zDzD4cchd9mlAf8i1KEYf7fBwWZzQaRVLhTggC0PZENkZHo2mnQPRwIQcTZXh0uKYSYIcctf463fgwv+gOx5srqd5FnpcPIW4t2GyVXgSGDM6zcP0ZsYo7VKKYwWTjE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715441543; c=relaxed/simple;
	bh=PCe7dqavDoXGHb+v3jtV/SSirBBT/gRNiIivr6lqItw=;
	h=To:Subject:From:Message-Id:Date; b=YMaH39pJCl83tZghaTSriGmWrHAx7Db02wIruxJPKGxQ79oZLiQD+6yiCyLo5IEp4c8S15aXYarFBR3jbg+5hl9RUMPhi9vCZQOlZcDxXraPv2tjmtODuLYh4vc6LnSv1t/xEB00dnCpkV5XxmzLSkSPgoQ2qK2cmQNxhaLyfj0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XLxFhlUV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XLxFhlUV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5A6EC2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 15:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715441542;
	bh=PCe7dqavDoXGHb+v3jtV/SSirBBT/gRNiIivr6lqItw=;
	h=To:Subject:From:Date:From;
	b=XLxFhlUVJNvqP0vsEO7DOMqrHs8xFQ08FSlMhvUsWkQq/o6SzpFkGv8OYB2YSb0+H
	 z4HwrUkuUG3C1NDUroY0nI+6g7IwNIuYe9+DBBcT0fNwxIbkv98BQlMGE/bxeYdbXr
	 AEi72jP2LptSulsSoLxLosaRrFGMuLXlcyZXRi24eSBFA2B5NYNn/knIz1y/XZXLv5
	 UAQ44/zWNiGaIS2vU4BCrWufdRdNq8oSzxWVcGn9fodh0gXckhgJdNJ+8mc+FeEWao
	 rDpdwDEz/0b3PN+Z2STUGW5MKS4d8Fhe2rzlPjkgu2K3CNzB2QxOtoCWNqsUEBfc/W
	 DwejmybQSsdJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4322C25B4F
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 15:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171544154278.9223.2286491059403219877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4b9f1121efab9065dd61a278a4808d49eb70d2f798e75d625127d3cb1ad9766
Date: Sat, 11 May 2024 15:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715441542
