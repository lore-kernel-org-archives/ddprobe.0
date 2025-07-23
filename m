Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 199C92E36FA
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753229994; cv=none; b=ogKcmoWyy/HJ0ANbontdP+GaA+9GIHmPY83TuPl6hBfG1+S7/MTFqyC/UZYY3QSRKP1pVV2Iju0ammk7YjcgzzP11cQaISwyO15ZMqf1UP2EVaZFgHsLiLTZsPDmPzlFNpvzKjLExPij9mEEDfqdkO4sHvvCPr4jkjE5nJ2zOVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753229994; c=relaxed/simple;
	bh=Cf0t4GQhZQey2qbSoYQ5eWu1Q46bWBY1JxKpOYcN1M0=;
	h=To:Subject:From:Message-Id:Date; b=pUU3+K44ZmSY6dplk+IQwcdhJbe5K67SXStJGX3Iiue9xcNHmilrBLfxOXIumcuZ2dv1FUceZRDHDaoKX+9T2BMmQTo4zvkl4aXFxVbCs6aF52uyxXCPvGWvClJ8Xh5tP+ATQC2r8TRvWWMzXo2997Dg91xO3qqdrJQdLSgW1XU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DXaCmszC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DXaCmszC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F423C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753229993;
	bh=Cf0t4GQhZQey2qbSoYQ5eWu1Q46bWBY1JxKpOYcN1M0=;
	h=To:Subject:From:Date:From;
	b=DXaCmszCE2JUr3mfSxhwu7DNk2q4QNES9E5s9YIeW4cb3kns5gyeAj/s50WORRPBG
	 Ndye5+BU/5DZGKdtYIBey8o7Qd7vp4xYeTtOx4AbiYlZf4liZV/Ed3LaC1lrfU42VA
	 hhg34KA3yXRooqr/Amh42r9joQD9jVmFNuKRlJKLdnjbeik3AGDJlTmb8GIKmktuuN
	 conXLJE3f06d5i2ec0QDEbSSdyYg4Eh79N9su1Za7mLAfdI2vYphzC4xHAiv/uXehC
	 tlKUNf3oOsw63OFUlIvFPkLV6goQRy4T9RRWWsev7H64LWY1wg7KB5QVb/fKyEqjZt
	 7uG+WN0eg+/Rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F727C83F1A
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175322999357.17127.14935420232640095820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb4b32807b2c2a937bdfcd6a6051899e982789c3df4e39f5ce379f75964625b4
Date: Wed, 23 Jul 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753229993
