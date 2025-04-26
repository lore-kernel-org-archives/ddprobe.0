Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 362411F3FC8
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745669394; cv=none; b=dDDyRqFV7G50eYaLpRzxihAAoYVLhBnrvBTKdW8HDFTPHqo/4ScSF86EYNJoerYRwUWKPUHxVCJgEybLMnL4WRclIL+qEpqnkr6VvS8I1lKid8FjzSYKkD3iXJ5ifg9uAygw3uRTpxqw+sE8jLg8QZX4vZluZvKuUhDVqkdF/+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745669394; c=relaxed/simple;
	bh=+Uome1hPvd5eDMnysowkxsU16cZj23KU/udz32DqE+c=;
	h=To:Subject:From:Message-Id:Date; b=N0FQm+Suzt2/w10aGoKoTfb7ZxAEz1TR5GEklqc9jjNOLAF9XAPaACBAT/Oh0cMCoaiqsNRacn+/XUpzhNaH/l/OqV/1n05HDuLxhLb+9VrgrVLDQM9V//c/ZblwBXUB/wo1d7ikWpm2rWaJOm+jwKPT+yjFeq9rnUXIHddN03E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cipWT9L/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cipWT9L/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B0FC4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745669393;
	bh=+Uome1hPvd5eDMnysowkxsU16cZj23KU/udz32DqE+c=;
	h=To:Subject:From:Date:From;
	b=cipWT9L/WWTKysBgSrH/MlnCWPT9NBcFF2jWW1x7dd74CaVqz8gucUNf9Rk8AkONg
	 Y6KwXf3ZTNjGc11C8Zw0Yo8QlGOLehCbmwK9leZX9UHe1wuOYuOKwLLkPzG5ewNhvR
	 d1Oezrx18p4ugMIcyk39XRk2Jfe/sRjiHDgG/8E18jQSZSzZTuYR2U5x4HcNrWF4kI
	 9Pm+b+S4E+jjAtSZYa4UQ3LJKRZNUJIQ0T9p2dLUffDZ5FjI8ULIij9ur6xbqRS+sd
	 guUmwjFjfOEwDnKlU8ZMTrt4H9/pC4tCfmY7FidWaQPsVpg17jJDASAuWP3E1me+eW
	 E28WU/Frfk7Ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94244C369CB
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174566939357.9287.17549075804964329352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e225430c39f3c8147fe34ab1984b23cde023b8117cd1c475bf61bd5aea86e202
Date: Sat, 26 Apr 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745669393
