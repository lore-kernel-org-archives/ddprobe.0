Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57220210E4
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 15:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717947443; cv=none; b=OJ4pf36aSHU0RuJKEhljk33v4AJOfwAoha3Kls3rZmuV4yx0C0odDQ3uY/KsMg1z5gsS1kpSafgNx0KoT/GESNlhU+QD5rlgj5OovnM+jFjFYaZAdVypNgW9mxwO/CXGNxiHiHrsxlXN6+lS6I7+fV8YuHWnNz+VCWbZM1C0QAo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717947443; c=relaxed/simple;
	bh=nsU6pmH5uLH3DBDUGV2DR1+H10lr3h56gQmuyH6/6SY=;
	h=To:Subject:From:Message-Id:Date; b=WE2S4rCto6vCzf4rMMOVAEyetiZRTnJbcRjhzBhBm8Kdr4SraF5dbe/Zi7F6JFKnQBnaR9+sojyEAIisFHo/R8v3EEH58/Qz97lRNiu6Mmm0BZhu2CpDjxQ9JmtngjHwcAI4Mp31MbQFAeOyG8RV/V2anVMVXrqtoF28v7h7xTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sTz2tz0+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sTz2tz0+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC8C9C2BD10
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 15:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717947442;
	bh=nsU6pmH5uLH3DBDUGV2DR1+H10lr3h56gQmuyH6/6SY=;
	h=To:Subject:From:Date:From;
	b=sTz2tz0+cL654OISQ4IGYqkvzqKQkcw3e9NjQqU/n2ewCXKwezxqbSmQDEfBP+ZDt
	 NTJhncCYAQp+Q5YcQMT2jX8Y0JZhpHRdKoSWxQJiwMzHMZC+froYh3jw8sx2AkVEMD
	 Rj1/OA4r7a+l6yX/B67FPHamXYK9mXZSJ7NNa+Kluw1x4fIm2leN1crK8oyEcLdNss
	 6/Y85qkq9YD+RjgeG2AHLpJePpzMZcft+s9G4w0oTNVC12YiqhlFdBNzGWtvpE1wAS
	 cfZdiO4KDR0VmeQgter/7USW2+M+aRmEZwyF/AlExRU9SU7ghh3REYvyWVSfr1Zgor
	 TaevNy7QNYOjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C14EBC27C53
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 15:37:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171794744277.5213.18040506019200408438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e308ad79adedb63cecb93e30b452d8bc95534c3fa90707e20af9b57abcd2df3
Date: Sun, 09 Jun 2024 15:37:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717947442
