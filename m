Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 206FA173
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 00:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770768234; cv=none; b=Imy8g7+MV84BDwlaLW4D6E32bmOcLKyxXbEpa+7fb16GyqX6vj1b4RlxzR3UwZytsXVCWB6s2VBe4BtT06yn7Lm8/sxzjN4okUDgP9iMf5Tj9EOpl3bWb3YYUVQ9IcSjtwDoG/sXxfwshEVASEleXzjaZ3P+DYaqV5T5BuTTmfQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770768234; c=relaxed/simple;
	bh=/Mk9bideYRT4ZwohR2av6D5mi8LVn/nxIuuQAAjmzQg=;
	h=To:Subject:From:Message-Id:Date; b=FtgOGo+KmXb3nk49t7uJXRDbzUMwX/BJTYML54tYqAespnSysdNWEMXpzazwJxkCz94R82RPBlvfbKzoIFTLJbiURfmkDLCzjUT9HR5R/1rYjpN8eQ4ND6y6sWkIv9gQPhFGr9Bh3HHJSf7CXL7wFbeYT2Eldv0g7V9t7ewhNGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Og2tzMOr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Og2tzMOr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C083BC116C6
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 00:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770768233;
	bh=/Mk9bideYRT4ZwohR2av6D5mi8LVn/nxIuuQAAjmzQg=;
	h=To:Subject:From:Date:From;
	b=Og2tzMOr/0L9JpLvNA1Zy84w8Cub+qnLpVwa2M8SQEJ41LIrvlwUyvY9QZO/EYhao
	 LeLoOW2WhTNtK7Hoju3SIV9+t1/a7hwF8aZZszgw4EbRW9L3uNcMdU8AgBVjKdwyA1
	 V6f4BWBSlNS/IJZE2Ti5w+tLUOTnERz5DU3hnXTNrnKJO5BtGYVTal2AhLulhMAv2/
	 liZmO3YCAsp6S4NM8gdcUMxqHp+z1JJkqmk/Qq31LMAvw60P2Ts0eKDcDMiW62IsEf
	 /3yUapibbWW6PRkCFFAN3Hh5q/s+OQz7zfds0l04Xgtn9Lyc88OCfcte/ezkT8SW61
	 XxuGFYyClKaXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7319EB5944
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 00:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177076823365.5449.12833890051689025308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 356ef7a91e4dacc6041575295fc61d1c1d4b6ca6ef412b67048f92343260d1c9
Date: Wed, 11 Feb 2026 00:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770768233
