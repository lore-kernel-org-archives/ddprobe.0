Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CC30321457
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 13:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791640234; cv=none; b=iFW2XgKAyiXid4FQ9JXI2+ku0IcuXvEabfPLqXIvYf4BcIaeQBptiV4DrR9knMhYAwYvIcGZ3vXcFHYSa6xrvbdYx+btSUqmTp5v94QL6Xxzx0/Vzh2Wrl2MlvHJlvE+qFWULPHuQ0k14/QM/SJiQGgAwnes6P1L7ECdI4TfELU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791640234; c=relaxed/simple;
	bh=6OznRPZMs0hqX/xhyeuNRoo73qZoOebHxb9EzwENxNI=;
	h=To:Subject:From:Message-Id:Date; b=Mrf9OV39AvvZNVLXbSKhmvuc0jMrs+rasoHOpPP8vJu5O/siRT/pf2pf3cJGVrsDMnQZyge2Qv82pXJf5vkQ64/jujWOM6rv3B+lR/i89bBBCbQHEc0ZwPb+FD1GrY6yFnKz9oRtkiObl+npoHCKyinpYzSTotV7uPSWJDBvB5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sts2iEq0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sts2iEq0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9A6BC2BCF7
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 13:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791640233;
	bh=6OznRPZMs0hqX/xhyeuNRoo73qZoOebHxb9EzwENxNI=;
	h=To:Subject:From:Date:From;
	b=sts2iEq0ZniR+Zn4Ttznz63iy+9+d6zLgngu7AL22hoKvvt/LY1IYea4/rAWte8xK
	 95yfdo+Pi0YEIdG3uoX7SjwlPWr+EtTBPM0STV/BalpXLP5/ouujx/vRHE6vlJupxl
	 HLm4H5wmoEuD3a9zeq1SmADv23istCQ6wYhRlqWeR2le6SyyhXNs82NtnM5hmjmahR
	 YEM3MK4C3K6YqWv2gW6n1Arr0q6nk20dpQeolKGoiLwcboHmrU9PB6acWm3VSrRoFf
	 soQVDHxN00oayzc6zGfRtMNxEkdSVB1Jvcz3Fs1nwVoJQfom303EKiKcWtR7+VTaca
	 kI4fivx9FJ0Yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A917FCA9EBE
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 13:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179164023368.15325.13149427252539355742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c8b9b438ccd32ea802ad6936d223d19f83cd30f4ff8ff62254d4b455908e2e3
Date: Sat, 10 Oct 2026 13:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791640233
