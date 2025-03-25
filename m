Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3654D64D
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742861394; cv=none; b=Z1gndNh0jKzZvRSpV+IcUr8jQi4cbwno8tTcEQW74daYbuecWRXsIJiFKwLUzWwCwQBuH0ZTIRG0YWtMXQzp0XuT2i0OgptXlo67f2G494Qc1EFxxn3Mhzdar9HDyD/zSeQWJvgUiN8B8GbbGgPxP+9GUUunvTF5Sj2CDB/Pxkk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742861394; c=relaxed/simple;
	bh=Wz9f99ydxHZPqaQLpEfTAt4rl/LEEolE2VEfLMOXo+o=;
	h=To:Subject:From:Message-Id:Date; b=gcR9zhyY+gecGbrWz5aa6odndrhAWnrRNMAZE7/DQNbQzI/yzg2UI98uggMvcT9znETt06Ro0+ttWxcvwJHtfwEct+TxBppkDB+NUurY2pPRwDIzxTK67D50k1/JYXtzjtF/iccRq0+5Ws+SgoBNeF1+E0aj3Eow3FlhssoBzH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oYlFgry8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oYlFgry8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3D3CC4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742861393;
	bh=Wz9f99ydxHZPqaQLpEfTAt4rl/LEEolE2VEfLMOXo+o=;
	h=To:Subject:From:Date:From;
	b=oYlFgry81pRT5lRx0bGsQMesJC0Ei7SopgSGHUEn/QQcBR1ckoIYtmX0QchbaPid2
	 W0A1Ot//NsoLgTWSxXvDXKWjxxBVOyTc0TPZG3/6ysc1aoyBrfanA0JCuN6Yvz/R1r
	 rm8aQGOUlmP7OXFKSxlK1InvfPVDv+alS4kmnpEx7caSZGq+J/mr882FBqTYAQyyF9
	 Vwk8Mjl1nypB0/M9asvPfsDdaBnazcrOfiYFjpcxJyVUxh3bZQcscaTA232o+XaDv0
	 hFudDBAuwK/9fPgdzARDjZUK5pUizBzF2QROcmrvAwIpi4qXoYg0gYVWUm/cFBUCZa
	 ccTqAQCs+Q67Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 984B1C36002
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174286139361.26544.2682944253522414456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6298242e0ed5c66f556443b08709e83b532e88d3d311dbf85ab2184c6da993a6
Date: Tue, 25 Mar 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742861393
