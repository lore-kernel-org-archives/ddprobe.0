Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FB1639852
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 20:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716063143; cv=none; b=bgD1nX1t+kM79BtwkJi1xf5GeqRqYn9NLxZdycAjhylnW4SEPmu+Yjzbu218KFo7O59mjLoEwfpAFX6blspLRjmy+yDCUlYIatIuh9j8DGeE5kDQfGrCbDe3WGR22AyvTfNzKv+QO22VYJCYt7HEPJP5XFqH5Scu6jELIYW6+r4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716063143; c=relaxed/simple;
	bh=iox3QkAL+UGjYk2ALzGHx1clWondUU/fsdWOA46dHZY=;
	h=To:Subject:From:Message-Id:Date; b=Iy3ZzrRgjBlX0iLX1gdPb5aBInBSXjyzRgu2KkPzlNRu86SC2HhJHuU9UelGJ68KWarzXk6uZhMFXrmNxbw/nhhn3WutLEyUcMsSvU+kfHcD0wYcSNFuheZWpnrD3whwAa5aDh5B5qaxTJXO89rBWUubap54avwjVzAhtOEjQGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rEzQMQPn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rEzQMQPn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4370C113CC
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 20:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716063142;
	bh=iox3QkAL+UGjYk2ALzGHx1clWondUU/fsdWOA46dHZY=;
	h=To:Subject:From:Date:From;
	b=rEzQMQPn99OCPR1oO1tmVkQ8J8/7MGaga/zrxHkDTQ6crezFPXzWYyx3rlvLTFCE0
	 XfEaJpC99CSZTrGKsmt1EIni/5pSPoO5VvWF1Z4Vt6liHFs1w60ntEE6LBGzZc6uXz
	 daby9NLlSrP9c0//JU1a1ANtlIeRhq3O3x8/jAGnyxRiKnCqsC07p+kdLETuK/DCRl
	 3n8q5eISsbTLTMl74rPjUWmymCVxMcasKHBT/OoT8sBk9jofv/TQ1t9HtfV76LWk52
	 TQiZJqnQsAsgQ8eZZrnQIDir5ZngGgGoWOs6Nog6N1H6ffWXxkckt/HRdFoRsrhB3l
	 GAx6jdSmNFa5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD69AC25B74
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 20:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171606314275.1690.11576989108196428238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52a329e13c0ec1df535c3f9c47f6a9de6d28ce9623915d651d9bb4361890af83
Date: Sat, 18 May 2024 20:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716063142
