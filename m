Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F26CB3EE1EA
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 19:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773949494; cv=none; b=b5M/kTUx5Xh6RHdWHzoTGAC7D1Q7luz3Devc+RoBtO6zevqVk5S5cTjTfiopeOnqilDVxTrZbJLnr0qSQ5TM+aeocalZ3RxlAWIn5EoxVDbvQ7lZ1nfcfYyy04A2DxJZN5YnFFlGwAHSxMqnFaynV9lZnHAPRzI9Rm+/VamtPNk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773949494; c=relaxed/simple;
	bh=Q/slSkOIo3U5thoA41M/1gveVC5O9dfcswYgD2QVmkk=;
	h=To:Subject:From:Message-Id:Date; b=dybSwtv4oBGgAaNnKvMZ94n+zf69SGYv37eKV8pHdaNzaal2FkzK3pjE9N2El9FeFQMK6l+adNljcnycYu0k/s6y6u9Q2nd/izPqlhLM3vtrhAJf+x3ln2cDJmwCUceQiztRXXfbD5Ilu2cyTz+o/tt2VidR4EQbIt/ZKpc9vWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QAuQC8gt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QAuQC8gt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4725C19424
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 19:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773949493;
	bh=Q/slSkOIo3U5thoA41M/1gveVC5O9dfcswYgD2QVmkk=;
	h=To:Subject:From:Date:From;
	b=QAuQC8gth2/FWE5Bap97/W7HR6obSIw74BOdPYanIiMPIEcNSA7y/As3NpaHUOQ/6
	 wTKfFbONb8dnz6C1OVAnjayyHz1XSIg4yIvPYCoIrIyvVKPGsbE91UVaD12n7XLkBe
	 XvL6TK8+80BFs+Wdem6z1EXLjBUcz9qKG8pi3TZTVDWNC4aziHW5DbpbMXIeEdvcxU
	 HmUF3Xz81w/g4GFp3tBMEirTTDnn/arHhHdxk4P8OwU07SA70tZtD0GbCk6vubq8pe
	 H0nT9IkdNGYAaHtUtEGE2sqXThqrFPrY9Vez1Xohychu2+5Wpek5+LpB2s2f2XVErO
	 RIrI3DfEGVqhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 933711091904
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 19:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177394949359.31234.4153330471399413537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d20b789e2523bdbe5412b4d718dd2d6cea79fe1fccd01f0356d12a7e966204c8
Date: Thu, 19 Mar 2026 19:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773949493
