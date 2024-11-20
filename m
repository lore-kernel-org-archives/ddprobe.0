Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E6481AE014
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 19:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732132554; cv=none; b=Ir2qwqrRtGM8rkKXFCieV0TxZj1ODIky/MbTGqZI9+SNcXBKUVqDpe2Pp4D4TeSJ2zLkw7u5l/ta2SajSg/TJvczdOwg233EBlYKur01pGfWOiO6yoOJ5gJ7PKAOnv87cNNHpkDCQ8n7h1DuQfDDQaKXgRH+RCPcywCJvtDNjNs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732132554; c=relaxed/simple;
	bh=YJ1HEfdnBSRwmX2E4VaMeVtEnr+NiceyFfyzA7WWULc=;
	h=To:Subject:From:Message-Id:Date; b=TU+AsOkU9r2qK9qSihwojMWY2qCKKlfL+4NRFsexz6dIkU9VcDAOYLhIdOLyEGk4III1GQWG8GfrwHSGHjR+CN7AIFO+meOVT7vV0iT/of0DXr7sG5D560VsItSIg6q24VGC5IYaoIodX8B8eT329hgsbzArHJOP+BMMFNDrNPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ey00gi50; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ey00gi50"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1F4DC4CECD
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 19:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732132553;
	bh=YJ1HEfdnBSRwmX2E4VaMeVtEnr+NiceyFfyzA7WWULc=;
	h=To:Subject:From:Date:From;
	b=ey00gi50zR5XjxX9gTGOvyPzIcinPzteRbtYJRg0Ha7sWoeBVxt7C8I6KRt0S5iAC
	 S7SAYfn97sH4uAc8TmZbikKa+06yNCKh4u7NWRsxRaEy08hifI3lLnLM53PfwI6UrY
	 nHF4N9hJN0t/hORizG5Re3/Q9LPWkJIcmJLAhr3k5e2YKi5satNNjDu09liwqhu7R+
	 OVHv1w8ira/ZxEXuT+26pbuHcudSbXJKR/3RUrrFyxlSA4M/XfMqm4dWGhhKbniO/6
	 rYMcvarBrKGr/X5oUbyuRu5+2WdA4A2BC7byW1UgRo6Ci1uCI65JgQo6rpRzt9x1lE
	 lHT9QVaHstJUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A30F6D743D1
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 19:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173213255362.23294.3916067421658959699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e592223368b50bab59ebb688835372d76b547306b188b02f3702cec7cb61f2e8
Date: Wed, 20 Nov 2024 19:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732132553
