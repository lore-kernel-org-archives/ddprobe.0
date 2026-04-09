Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C7F7F9D9
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 04:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775709334; cv=none; b=a0O9E8FeN7ebGs92HOj6nhVu3YsHLRm5uLuJWs0ITYAmFqToextJXf2HlFq/rWO1+NVSTkr4eyufMCZfO4jlxAoRgQEXGxseOiiFPE8hzABfdT6oBDiMMA90NHe0BuYyu7Iyo/D8GYd0Afch43mpC8W4dP6ZsdsWMS6tTZBqyE8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775709334; c=relaxed/simple;
	bh=EMkzNF2sEtsy4W5WwnxO/7twK4K2+bEwIUZvN4n+nSo=;
	h=To:Subject:From:Message-Id:Date; b=E7K9JcUtN6rzUyNit//T3ejO/4e830VG18tvwK5oEOTXwopRjvqzxnbH+o0yZN1v9up+aSmaI+8SI69OJaoIymSBBK4ENB3tEDfKMwNl2rgrIW1IRb6lwA8kRg7QJH+v8XivQPHj4xixZ/Cdn90zm1jvK3BuAq2xUDxeKxjyBUA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TPCIHABv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TPCIHABv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5D80C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 04:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775709333;
	bh=EMkzNF2sEtsy4W5WwnxO/7twK4K2+bEwIUZvN4n+nSo=;
	h=To:Subject:From:Date:From;
	b=TPCIHABvzHsJqIi1YyDaONZK6+Q/+oJPnd6pDbAyI63bJbYJkFkE3TQRjMk5bbYVE
	 ZY0mp2SVdRMbsKIX5snEFs+oLHySjKX50yfofBLVzjKegWVGRS6F8k/RApCrgrFEE+
	 UBF8U64xFO4FMP6WW0KG1c0X+dj2ZmjrlU3ok6Ob0Wya9Bsv6HmBBNPJfHfSS+iEUV
	 2tsFjH51JD0NO5DMPucacjEFYqPpbJmCTGTsS/qHwIu8atT2K3fPVvLnbs7whURvgI
	 6ku2sqmC9A/mAwswB46YRKntfEYc6wVP/nO0xif4O4aaj13swr4DB586+gui6G7WxQ
	 RtdTubKlgYakw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0BD5E98FA8
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 04:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177570933369.29917.7698617379183799642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d879c8140669f7b63f8a184a2837b45137180e17da38470124cf189588caf900
Date: Thu, 09 Apr 2026 04:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775709333
