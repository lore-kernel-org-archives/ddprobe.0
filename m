Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12BEB1369A8
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 22:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736462754; cv=none; b=dEDhCXuWDWT92TXxgqTwKln8Q2wubBuVQWO7C+0Zn5r41lvpW8ztm4T/+QqGtE+4tpzGAU/gB/PLgfxkQNh8btjA7vfGH43uY9nsKR/nettnr1/3KnZfEkiFscNq6TmBg0DFVLtpC/vglKIrSOad5z15s0etN25MrdeMUdD5I2c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736462754; c=relaxed/simple;
	bh=4oUiPgPbAORzfxTvnPDE2Xcvj0kAdSY3Aw3iKZll+fQ=;
	h=To:Subject:From:Message-Id:Date; b=QvLoU44AEjZN/w4PcPQ+JCrnoDSkAHDQao8ItM9n5qm+gVn2PI1sd19d40ib0dK2LoFQKG1CxcwNvrswyKerdo7F26MxWkk8+9fg3OgkmPCp5tQ0OCYr+vXkZtjn4uXIisGv3pVg+lRXMd8b8SRB3sqtBLTfvEvb1UMFnh703e4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bSJcuF+w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bSJcuF+w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A54CFC4CED2
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 22:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736462753;
	bh=4oUiPgPbAORzfxTvnPDE2Xcvj0kAdSY3Aw3iKZll+fQ=;
	h=To:Subject:From:Date:From;
	b=bSJcuF+w7SqPjNbDHmOARzmS6wbvT3Z75yR9gOYC7+hWH6Gn8hEAIedst05Cc2o32
	 IXFdg4E4OOFZXJ27prfqFxsOJv4zbPli++CQEdm/UD/i4VJ8h6t0PKhkk1+sehNxu2
	 8kUDpxLX/2so1itXGBpE96tdXuzo8RXhNSowvqbwnk+FLPVh0UohVdsa0kmSe6hj/C
	 Nub7rWvwV19Sfu4Z4p6VkQNIUEDI6WEj/8F3Qqi6thKvSC4EoG1hCjP3muNGy8si2L
	 ZKvy11ZVAo9yQdkVXL8Fp8D0PgZe4kM5+gdg4GBhpvqIQH5JvhLpBDs86/SucGzdkN
	 9XvtkT4nJIqxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B1DE7719A
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 22:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173646275360.26776.1126606343229948726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21785c5f0ad298856614d3fc736f146a0115e3077645f2048ebd81f9b4bbeac1
Date: Thu, 09 Jan 2025 22:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736462753
