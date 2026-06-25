Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 533FF1EA65
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 00:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782346054; cv=none; b=bWEum17qNNFfe7SScBpjRYDZpiszGT5APqX5xfNRqJ5RZEqZtjDXfihfA40dM+3m3xq1/4KAmmeZZ45IVNfntr74xqlThyXi9DGYyvYi73+dvkXsDGsDVRDG1N720o00dI1DaS1aLjyDil8wzkqyYWFRCxVk0FxwLnWoI8Ulpls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782346054; c=relaxed/simple;
	bh=Gien/FlR2qoM6HS653dege1KJi8Mpjheix0a7yX4c2E=;
	h=To:Subject:From:Message-Id:Date; b=Lo39bllMKBWphzo7uRYxcS/+oH4LSBFG8rxG6leESQzQgbJ4IZN/Mf9THTpWieee26FBruFFcSUNMePt9nFFUoonqax1u/xVU9qyujzCyIaMx9931nlN21LjfjJMA2Z/CsVghdPBBO9Kyrv69Rz6gkKgteL7S13Z0bfF5ol29qw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bRr1wuNP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bRr1wuNP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3E82C19425
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 00:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782346053;
	bh=Gien/FlR2qoM6HS653dege1KJi8Mpjheix0a7yX4c2E=;
	h=To:Subject:From:Date:From;
	b=bRr1wuNPmHC2Zt27fWjMMPh8MKTVDOYwKCC+/EHsCjeCbEu+F9PpdTcb+Xz5XOPmk
	 9vlW6tzOE6WKUmlAcD7s1H4MW7oOGEg1cA5mLTduzIQTkS81Vg3ChjZo8YBTMmY0eW
	 TYOUVZnEQMNRxqYixwm40vHU7eTQ3Ogs47eUT6Wv8XPUhtCJ6mpjfZm/Ie2GVziOyJ
	 iv3+Kuk5aMI9ca9OTPJGdfKU2Vv3v1n4wIiQNyMXkZ/FjxvlWsy2Zq0HKd9rEi459S
	 zocR4ypHSlM48gQ5lYFLjYvvKGUHMzuwPh22GfZPADSEPqpeZQGv5Ozxx0ucKvY4Bo
	 lhzU6FHaE8YKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3E88CDB47C
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 00:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178234605368.8024.2386752015992295073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c86a2cd755f32d27498273dc7a180d3a49f3396675a735e08e02262f133f920
Date: Thu, 25 Jun 2026 00:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782346053
