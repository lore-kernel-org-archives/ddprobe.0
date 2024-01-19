Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11B5555772
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 18:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705688297; cv=none; b=lSbp16qp0aTpuMV6nfmjuDb8fc3+sDwtApLhf8iM6Da5Yfm9AEXppEbYQs4qaDUopU91aF5O1peRyJXY7VON2qpSNpUtx/c5Vv8F7JpKRTKt5AB44dzxuWTSxHG4yv1Nk5yzuf9zaAp/Uiv8khK7cgE5R8di99o6FsUBGeNdB3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705688297; c=relaxed/simple;
	bh=1//XvYVW5P8yiXpCzmHruxB9N98mkqp9tcAS40eKAdA=;
	h=To:Subject:From:Message-Id:Date; b=AUZ9n+TuhQhxVgpfoDr8auJqqhdIfCVkiKmVmdHLVQ48Nwp9o6ipcmRvkyuAmX2cHQO5J/Z0VLotEfWTFmCTunHxKxLICHrKijVaokImeS7ZuW1B49A+Cp2Zt0A/yXvhgRb6DiLJ7LnVQuKqfn93jQThUj/r3sd35xQigsLheYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jX2rtcPj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jX2rtcPj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 781C6C433F1
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 18:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705688296;
	bh=1//XvYVW5P8yiXpCzmHruxB9N98mkqp9tcAS40eKAdA=;
	h=To:Subject:From:Date:From;
	b=jX2rtcPjX7ZQPTzGp5j5EyDarhj49PLa12oszr4HGcPmpUErzghCw5Sdvr6vFYeQD
	 FSo92czR06XgmoLtK6rsVqA7uT/XgvSgdjMW2hdNO/VGPQCgWFB5RH7BgatGnhnVc+
	 qtflkyJka1Her6qHGS+ZQFDHEn5bUtYMmvGlUfq9hxgAe9w/OMZABnPfk5FkWmpj9V
	 IR33j6QJ91Y/YCOLUdsZH1QxG+oGGh10r+1CsaAzeIcI8erjfQWh+ncqymuQJL6UnK
	 IJC9RscJvHhu9aZRHrJYzuD7ma58CmerQYj+PQ2bO7PevJaU6G3BAAZG1PMg/tHI41
	 S+nyf4VAMnKiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E174C47DD3
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 18:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170568829637.491.6916437361956621856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6e8f79a1945174b72d10e11224f2f7198470e2d32cc377157be576a2346a334
Date: Fri, 19 Jan 2024 18:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705688296
