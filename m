Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 481FF3939CE
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 07:45:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775634334; cv=none; b=FX8OY7tv6emS//UWqbb3czKk/nBocJgDaY2SJYFwDVQjBuknOlWpufcFMhPH3lCoEcUB7i4CW8z9BQXwL+DFapJAl52CA8PqGc/+xCDvZxGD5c4rWn9H13etkWTEIM6JWh/A9G99yuIX1oIW/jgahZ8XbjsBHBGjCkBfYvEn4nI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775634334; c=relaxed/simple;
	bh=ANJw8chYk9Q3f4S3bThsOZSRHZx0mDX0hxN+9ZA1jxk=;
	h=To:Subject:From:Message-Id:Date; b=UGqi5rtdpMtAg/GNglFiUDxWeXSWRu65xDMxSGZ4Ezz2v76l/X7GRNVJmNLEo5a93k9r+U2quxbHgjZy8HOoHd3xGhPkF5/KzOteHD6p/sahbM5Vki4A+iJJpMxE48fWNqfmepW1u1P5j8kPInxvEiDZZWwZiQFjSR8AMe9c5DY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PrPe6uZg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PrPe6uZg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB8FAC19424
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 07:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775634333;
	bh=ANJw8chYk9Q3f4S3bThsOZSRHZx0mDX0hxN+9ZA1jxk=;
	h=To:Subject:From:Date:From;
	b=PrPe6uZghjlCOTdFP9KlP8x+vCTFJfpddlwJbMe5/c6diIKtnBGN4+ilgnwwofigT
	 j19pXw5ODSSiv4AjtZEBg0NGvxzJgOChvt5KAw9T7Ux6/XRC7buX+adIzixmwBRdTH
	 w3jhQupTqHxsGpebJgLZVmxFUpUMHN+Y2mn5fjYjScdu6Ijb6ZhC3mPIDyUEKncSuV
	 dsOhlknuuZNS3h1uLFGFDnrLXbBXkIR3VbMUQQul3kEkAHvZccH5x3rgMbWJxlCZcL
	 3BVOQyQDw4MUdtPj0K3digRvN7I9Q0FS6qf6OuSWCWIbuRVnogkvYb6ABiZo7UEBJa
	 +E7QdcZI3EITA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4F59FD5F8F
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 07:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177563433372.6836.14872087023295154667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44c0d216938acdad6c372b4118a4830c279886c1883f4759f54377f60031dad0
Date: Wed, 08 Apr 2026 07:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775634333
