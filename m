Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E9822030B
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 07:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721461554; cv=none; b=ZdM/CL6YBsm184IPgc1GDO/LV4QPsQ0JBuTcrMrtqEvDZQOGV2dU+r/aUfEn8vnD8HVMRYsEPAcXhJ5r/zlxMPv7Ic9TRgxo+VlFWbVjAdYjZh08R6t+6hO0M/uPWUKmdnCdjDgY/23BumoWDjowXdxiZtTJX42WGXUCbu6EQms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721461554; c=relaxed/simple;
	bh=dMAsQWaLpXftKjcvqnRUuHlskfDfK92I4Xgn4JMXzLk=;
	h=To:Subject:From:Message-Id:Date; b=nushEGzLJ6FHN2+zcAxou8zWEVn3UfuTY0pI7sZj4ciW0fBR2s1+iIN4wk3w2Q93oo+HssqxHjRoABJi2A8a2IaRqyRTjaN+28tZqXafVTXcjVzvHriLfJaK+lnYFEtRzy1cHgWHoHBIm+rThlqdUB1vETbceqNeYRcfFiu3D18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BZfqxFRo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BZfqxFRo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4E89C2BD10
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 07:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721461553;
	bh=dMAsQWaLpXftKjcvqnRUuHlskfDfK92I4Xgn4JMXzLk=;
	h=To:Subject:From:Date:From;
	b=BZfqxFRo5fCDAgWhKr/b5Ebbuh6/EY2wiDm1Td2CDJ2TfyTzkOPv3QkQknj/Gt2Re
	 BnSe5SUbFpSzWHjDDcRNMzRoZadv/OIw8ArfYC8ta9+5eGxGrnQVIrM5HmB+3581SK
	 G41/XX41Wq7e81jBd0az7pOrJosYvdxNd8ii72r39+R+zSEW/4yeKXAaw4YIej0UtM
	 s5xyaYrfFJYgeXl7w9naFuMvmZC8tZpVkkeiWmpCLcFnHbO3htckrTE6/Qv8AoNUfx
	 039ewOHC74gPez0tjM4PH9i7OeiOTwVfcN5bjGgkRet0y1YCudGXQMm3yk/N7w5A5w
	 f2nyWLKbzsJ7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4AC7C3DA59
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 07:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172146155362.10389.965265666890245869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c61318f3728a4b3cda76b92d81bafafadf76752f9015fe6b06a539850be4ff0a
Date: Sat, 20 Jul 2024 07:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721461553
