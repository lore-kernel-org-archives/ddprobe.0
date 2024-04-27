Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4177264C
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 08:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714207343; cv=none; b=PYfB9d8XJNh8aV2CV/alAyYoYDhB/KDu4HP7J1GdmQSDt0TghQ+ujA3uaSUGhaQCovkgI1Iha3Ptdthl5AIYbJpsNptG0H5knKA+uTR5Vk0rNPInwre22ZrZKktR4xVoIqS56ugvPA3v8ZDCAEZCZFlT273kUDOITLT1rh2oYKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714207343; c=relaxed/simple;
	bh=pP1KmTuxrfuZAygI5RLa8n/RxUc+8F6X0mpLZEfnifc=;
	h=To:Subject:From:Message-Id:Date; b=E848ApuKLYOdjIACmgQ2dMrPvYf7LOzTOsh4+C5rp0ITieozzZAvkYZaTYrtBGqMxakC0s0jItsoAwxzE84A13iztwcxbNnGF6DdYRCRl4L6Vf0Oc87eqEwo+JxzEMnOSV7sM4fql7kr82+/Bs4oKLpBsb9RVDOr6M7zq7SUw9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ReHdO+23; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ReHdO+23"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDE94C113CE
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 08:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714207342;
	bh=pP1KmTuxrfuZAygI5RLa8n/RxUc+8F6X0mpLZEfnifc=;
	h=To:Subject:From:Date:From;
	b=ReHdO+23l4qYEtFB1fIeEn64blkhdQDWtZaSJBW5vUoZJH17advAlO3Fzv2nCT8UC
	 psymG8Ul/9g8X+XqlLhLA3uJE7/cbeNBG4dpGSNInCOA6JG02ai8Q4a0NLSO9aHy42
	 BwesF/tYFiYvIqi6OA/lMvrTIKQwZCRNekBXfcxda+xSdMy8Nun/bxe72ykk7b1ek6
	 HoK+fbmpgghS+ERGWEuBQa9L3Fqc3aMjLeHFF2LT086/n8h71V/saYIl4nzyPhGt3q
	 LljMuSeiHwhaJ6kikX0OdYtSkyG47M150CojAJj/lLiwNREvGYmE7kVLCPAPq3ruAR
	 pbZHJOLU+Ia9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEF78C4345F
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 08:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171420734277.5000.5389478792027365416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c27fcd7efc5091a6fe981b250eeab90b7beee45084119f0c0ee12c5a20e2dc8
Date: Sat, 27 Apr 2024 08:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714207342
