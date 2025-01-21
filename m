Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E1822F5B
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 04:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737432354; cv=none; b=RGjfQeMZcwhpIMUEWz9eYzlQrmKMGoAWqjOCbG506LIVaRSdKQRwkWImI0Gzd/SqjTuigNg2+39KP4bWjKcoCtVyc0VT39tPVx6S95cpMO9yxjw6BMyPH1fKXHTVvZ+u8dCZzZYMbw3VRWSFrXWehg2ed3vKn/GMXkA2ByZI2oo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737432354; c=relaxed/simple;
	bh=Wz3z2pbtOIq6j7wKabLRBmfwsRU4RemRFszqm6MfvwE=;
	h=To:Subject:From:Message-Id:Date; b=j9DC8MbkZfdUzp+flcoP9MXSzapoJY40kUmjHACW8VQIAqAVNmZqe2gMd6kis4R1j8/v0fFIy2MYysou2CNPBLprfuKa6kK/7x6UdkWfkCjkMmGf82+FgA+bKNzIgKyobxV9uwFYrpeYwRmBPCXzfmouOssYaj9C7DQnN/sxVEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YwpW4pah; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YwpW4pah"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E48C4CEDF
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 04:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737432353;
	bh=Wz3z2pbtOIq6j7wKabLRBmfwsRU4RemRFszqm6MfvwE=;
	h=To:Subject:From:Date:From;
	b=YwpW4pahF9B4UrD90RwVawO9cjypM5P+5Qe1RCgeGJ9q8Pwuqen1UlvLuEgWb3NoR
	 fq7p/V6AhP7g2UUX/6HHDRuURuWSZ1LKzwqUiSIj/GIpy0fjJoYpV8Xrs8cOMc+j8g
	 KPyJ+4hx/Wc57wKYyfH+u3aVCL0q/yWWJs4ToWAbrdMDyKKmPeUseliw5gEQq1afDe
	 bHC/HntKviQ+0+XKjteTifkRyCL1BQKIZxZzu3jmncKJpWUKFBAiaMAuPlKZW70YCT
	 MU80I/DuvJ1UvJE3TGk6C4msD+fJu/qoOLffcvJJi45r3qFHCaBySiOL31VS2sWq00
	 nN1XFiQ7Zfmbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9B8C02182
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 04:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173743235358.22624.10366823022394582688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f0543a64fbbffc7e0bcbd4b025864d9e3b9d145366ccb15381991f7a28ff510
Date: Tue, 21 Jan 2025 04:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737432353
