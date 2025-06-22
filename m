Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BF232AEFD
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750629594; cv=none; b=B91Z5og85HriU6ALbavfMEoR25G0mJzmvEC+XocewNwZ6XmB5MJmS+C9rrdf07soYEsjZBXo7qAqOf688ni0Ayrbyr+sEbAkiLEUYltqdlMXuhpeCe/otce2Qp2O1xz5smwCj+C417ZIh3jeZ+z/y5jWrm+VtYFxU4XqjFbn4uo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750629594; c=relaxed/simple;
	bh=wyXOYzWCu2FfADVSh9/YVrDu6T54XNy2NAquKnJzkB0=;
	h=To:Subject:From:Message-Id:Date; b=XzYX/CZE7Ahd8QzJW48k1riId+bmDY7fbF5FeJi+way93qBYMDLX9ZmVm0CVnSQovCZnnsjizMXNiJ1wS4+auTJu562BSay1P72hvhIop6usoQTsa2JmDuNrDMII0+dBTPmPWq7+s7/FDPbOHro4u2+xiJ1lp6okec/4Rqsazog=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TylJhVfV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TylJhVfV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A31E0C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750629593;
	bh=wyXOYzWCu2FfADVSh9/YVrDu6T54XNy2NAquKnJzkB0=;
	h=To:Subject:From:Date:From;
	b=TylJhVfV7JOHUTIhzya472KnVrvVV6kTz36nXUbMiHZiY2lGsyDzsKcFy0bMvWxFH
	 PrxwnHO7zLAhMjR8Fx2TgbiK64SEoxuEo3+iZHmEZCuc09PTx3n3dzznlw6wsFdaVD
	 OnGbQz9bV3nQfBcssknWj9LpDdvks3R/vXsiQL0c0EOle63W1bXWwSnsJ5nLi+j+9I
	 E3yrt62dCajPCR7YYxFv99NYNGp4PQFoUDf/Yw26J1jcEQv7WM4Dut/O2DfNuBw2bD
	 9VtYHqESdO6Ro5bwDiNnqlEZhvVX8xSHAhMf2UEBxxoWkFdvf57Lt3N5gPH3tGt3sJ
	 kIFOXRs7HdKXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F79CC7115A
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175062959357.20021.6526029134199511225.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a547d146fcc84f5ad088f6062b82221a7d0ada842b999626ac82f706a05e72a6
Date: Sun, 22 Jun 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750629593
