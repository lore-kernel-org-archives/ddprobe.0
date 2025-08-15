Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34D3CBA3F
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755218994; cv=none; b=JrWFCAj+46Kzp/JUl4qEdQ6iBeZFRH4kL0FHFGQbD2vi/bB5SsMibSIgFjkxgEG/hQMbth5xSycN9zS/Fm2ZaxIgvHRa7qJxiibbvn0TuvMeHQ1XLVTaVBObMDhe4gnpgqJ/oBqnmY5ckt/gYHYzRpMbP8wrZ00Dk4qFDvXwoMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755218994; c=relaxed/simple;
	bh=jfgTyfVnMVTIIkSzRkzSTQXL6s1b2+CahN9jqcve2AI=;
	h=To:Subject:From:Message-Id:Date; b=GaqobW+srNjE5Aw0UGMl+D+57OoqOKSi3sq5tVJmqdbCHyrg+/T94dQEisM3JjwsLqKvLJBMVCZTzBT0MNL5/CT5aKZmDvP/y8fmdCnxs2Z8H8DgiowH+j/uffbytUtQxDmBrj3JYmdukDVHbu6NBN7it6xLPQyfSNqIwgLCG+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n5z8+/jp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n5z8+/jp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E5ADC4CEED
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755218993;
	bh=jfgTyfVnMVTIIkSzRkzSTQXL6s1b2+CahN9jqcve2AI=;
	h=To:Subject:From:Date:From;
	b=n5z8+/jpl4D1olTyIWGosMOCnw5PLT3D+nfINm6RkjrhoSsMuxsH9BKMGufDf7Yqh
	 qY4RbjnmH5c3/3TBV1pjsSemvbr+1BLcoLYCcM8Z0EXeSb4uSDcEHKtDng/3Bw0Gpn
	 d6jfgm8s0cS3EMX3gZl9ncxfdiyw4jG/G1pjpYycz+xgmk/OupO1apIovBQPZfIXin
	 5z19Vai/FmXF2gvFs5nx4WbYUr0wKO84vpeuzUNDM0ej5XFzwBn53wDm4PLPgXuUWf
	 s7ZLdDgTeaxK3XMe22yXXn7Lshtk3pF2hTGzHktvDqnbMX5IOJSpz5+D3nO7FzvNnt
	 HaoxftgmNxjsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E52ECA0EE4
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175521899357.19934.10695136142338218713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58d035530dbedf1ca14c36ddd0c545d2f3481662da5c236313a7a1308fa4a82f
Date: Fri, 15 Aug 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755218993
