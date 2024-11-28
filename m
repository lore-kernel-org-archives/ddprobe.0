Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BC70136349
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 07:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732779954; cv=none; b=U0RfdWA6TjLgpW1D0k0RGfKonN4l6uuuT3BI5pKhY5T8pOSbFPeMRj0aKnuSmGwhL5SIGSsL8QjHKh9KKxjgGF88Czzc8Z2yrDuOWyaWeC+7+5VQHqCiubomfT34c+otiNk9Cl1qjYUzNOS+9AsXz8tgvgyWsYAy+JWHFsGTSeE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732779954; c=relaxed/simple;
	bh=XpUu45jFOrPWbYQ0sMxMUNOIAEbNeH4d2c5bjxj04fM=;
	h=To:Subject:From:Message-Id:Date; b=GGeDZ2F4eoySu0+msS5i+7WF/Ra84jjiXOiWmvwMk1gObRokvzqyg6hn1EB3ZaaB94MXskzar2aHj7M2KcvT3j2vMZiLuG9dwrcLuKUFIYfqHL+qzLNMU8GYwJmZEej5I7+QIF2dkrpqBTMrregSv77bwTdQrk6B2luC8UL041o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HdjD9gmh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HdjD9gmh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D09F1C4CECE
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 07:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732779953;
	bh=XpUu45jFOrPWbYQ0sMxMUNOIAEbNeH4d2c5bjxj04fM=;
	h=To:Subject:From:Date:From;
	b=HdjD9gmhM5OvZocdAaMF6mXslwVgXCuZncZi13Y8rSj6YnQ5nvNSzZBLtZWINgXYu
	 k6AeIHCQ1woHux7nJQxQdukVvrW8WGtxpqF7p7gctZDAHBLe9jOuMktoQ3My9HAZxT
	 pvtR6c/RYUU/fuYQx9X3dngTSTcel8TjFbNmr7i2RxTenK4cA7hyAN7RJZ/TGQ32fX
	 uz6fqW4V1FEFdfeBpT3yd+SaQsyWBASSkihYPMGzdETYbEY8CTHR9G84WFw9J8fmtU
	 yGexusYlT4Kdmqxza9pO5SaDN4sxBCPxG1SMOW1JnwlRuqoWds5NT5/vy0GAGg/or7
	 uyGIn3E5VSTRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABAEED690E3
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 07:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173277995368.9909.14935637305331379158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db11cb77606b217522563ff1615e1e372623d01a6934f110240661770d59a653
Date: Thu, 28 Nov 2024 07:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732779953
