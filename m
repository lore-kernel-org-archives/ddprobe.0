Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE226210F6D
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 14:47:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739371676; cv=none; b=jpZUrGIUYJBZjoT9oZiIq3bcpwPGWW9OYYIeDvx42UFV7jAMyfgIvlVuQaX76Mzy5GMWuhuY9VTvy2qGKFlFe1arkGVI+dWg54WG8O89vMyRC2TpmjbbJ2E/qwQcwxXGB5qB36qolqncqtM07WUGvay0qCF8yv2E7+GJHmY6JQc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739371676; c=relaxed/simple;
	bh=RNj8IPz405y0V3eRpaJwjTNgK4OHhmMd1U4aMptOy2M=;
	h=To:Subject:From:Message-Id:Date; b=kuIKNZA8I9J1LTlSuzPT2Evu53HJS7+TVxbavnMe2Q+/3E2XIgMf91c5cd71Kc42dg9TkG0zrHrWb2enw527e9gjBCn9Z7TsX9cNcoSLV3Kgn5e0zx6RZPX1PtjQEt9Sk21+nYUmzDDirvew2cWhEnuE4nlGUjWQOnzrzH5FlzA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kz5yC+GN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kz5yC+GN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 5245DC4CEDF
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 14:47:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739371675;
	bh=RNj8IPz405y0V3eRpaJwjTNgK4OHhmMd1U4aMptOy2M=;
	h=To:Subject:From:Date:From;
	b=Kz5yC+GNNI1EI6BsryAQz2DxlhVp2BtRT9lRBP777WMRQ76i7sZsTiKIYdaVE9w3T
	 2YBVASAFf0e4kiExQrnW3eBSqoirsDfqygt1/Zi992S+bV2iHvM9SDR/m0vl+o1RAD
	 RE+y5ybVfSV2btzuHZy2YyNKvDE35pkJBpWg1deB2ewF63LGSVTnUhra2DKRtPvsw0
	 y83yraowSjaeOyoU2q+JAMsDpXnfoi/6f9EGNEkNBgJ5jMqAxlEIePfOsJXDV4TnHa
	 Td4/tGaKB5zyIxVFlmN8tPHK+kU4sLoY4083ZHUBnj77ASqA3wodT86yzmmu2mLDeI
	 HBfIDk/4ZbByw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 77869C021A0
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 14:47:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173937167446.14647.1227476184608073601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53091dbd9df8e65dd0e2ca061d446da116c89d6c86b2aae3a4994857161dfe53
Date: Wed, 12 Feb 2025 14:47:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739371674
