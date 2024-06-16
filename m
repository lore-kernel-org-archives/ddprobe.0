Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91BE0610D
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 14:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718548703; cv=none; b=i0NYUXHIYws8h6jrqhI/aXZULWAnSckVEIv6Z4EHhDzN8K70wgiFU6S8FajqfPCredtrAjZadpicK9V7WjX/86MqwshcSbSFWm/tPpU0fFpJX8c9+ECFohOU3IIDL7SdagfmC3QdqV7NWn46F5OBrXltqJSoOokGh1h8znZlyqA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718548703; c=relaxed/simple;
	bh=Ocoop39wnUKkid/SPfkSqERKM3bOSDXtwpXeMRo3ngQ=;
	h=To:Subject:From:Message-Id:Date; b=NPIz7wJyu06K/38y9Rvxc24GqYUTW+SneDSsDmx24EJtCqL81NdKLVnC5vRdHRSg0rNqcOSxeL9JfZzzRoOuECwEjYf79QzjRRANRyiSXH0Mrwg5hSm0sbbxBGF1qICfK+FkWmrF0Hhij5SduuiSF3riYFmPNjzeHOFZ8qBRTwQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H2moW+ut; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H2moW+ut"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F35DAC2BBFC
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 14:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718548703;
	bh=Ocoop39wnUKkid/SPfkSqERKM3bOSDXtwpXeMRo3ngQ=;
	h=To:Subject:From:Date:From;
	b=H2moW+ut7yhWSup7/Gp2GYLT2Yquz64jtJCiiUjjuvr/6VPSYjfa6s3RayKT7O1vU
	 yT+Kzz/53Roo7caeQ3So5Fro0WnE5OZkkykmDmK7LKyWPkRojw2SCyZaMAhaVSPCYD
	 AXI2KU9Zj7jLe28p6m/6KwFv809rhv5lSvklVNyzsot9HoQ3kI3jir63ZYAQRPU+cy
	 cDyI+pIim7KM8GW4kW2cZZNj+SyICubjfJ0fZI9tFAsdZIb448RGrDheFIKaN3u5tV
	 uW+/EHVlwZ7wYtjGxvIr6eBUCRoDaUYOF3dHJ9QX3Ysi5KsEaqB88DjZrEaR6OhuIE
	 a0qZrLGiaDw8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1317C27C53
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 14:38:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171854870283.10749.5422406310019378798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26c83589ad26e142e424836255d1855c0d576ec00cf195bc13ec256b3483c342
Date: Sun, 16 Jun 2024 14:38:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718548702
