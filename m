Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 392AC1E51EE
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755112794; cv=none; b=cxBaS1CbQtsBEs8YJbkmhl8XXUxM6mx+ZK/3seKFlj754s5WKLX8IocT+l3KFf69h5iZiQATR0LgPDbZr4Zu2ABInmFhrEp10OD2kgO6PyzUAO89Xp3ztujge+Tirv9tMJtR9vdUc9q+B3xgVBUCY9GmaZ/Wx7joP0WK61ZunB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755112794; c=relaxed/simple;
	bh=h+99XJZ7fGNnU+PDoXlLObHznGKtxSGviYnTuKoYcGI=;
	h=To:Subject:From:Message-Id:Date; b=qvEYrMZXDWDH2zfNfjWo4TPGCsQyax0nIEc4fTsgqYirLDR3zpdMq0OfEAmyEGIrnWZ/W4IZtISyIGBCNG68VlveHScG6/4y8dKpmEHEaYxFCWE7lyVrn7VO8ceg5/FlJczJ8lR+0jEYqeQ/KlMIcQlfCWakSRQhK2UqHpd1tbM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FT2W9IJD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FT2W9IJD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7F4AC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755112793;
	bh=h+99XJZ7fGNnU+PDoXlLObHznGKtxSGviYnTuKoYcGI=;
	h=To:Subject:From:Date:From;
	b=FT2W9IJD41i66/61R40duTriH9W+1MppqjnZpaL07j7/1Nl0cxxGKc0EKOfHpEB0r
	 kCl6zpSEWpJirTPLgKlq4K0SPhpA2PQr9VfMxMoOzPegsrXqGYUrYd0Yejr9UQHiJq
	 fqa7IH68+Rn9PAz0UXP1Rj7JqL3mvoxg8W9sLObyj7mC9CoEvFVJ0lM5V7b8zng3on
	 AepovVK2Rx96Rvx7gbz7CtwD59Qzjc/IbsoSenXFAHbBrRuvOd5swHK5z9/q2aIB3T
	 YGQOgukg7te8Uw/31boRxTz+dCWgkSWRURqcS1w0F2qO/NUepXiX4/Lj1hzuz3Ba+p
	 lLeZc5J1PVGUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A42C87FCF
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175511279358.27879.6907308730999254076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c18599dfd371ad99abae3f704ecb120f313c04c7916ce13960739ca8f4c00b66
Date: Wed, 13 Aug 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755112793
