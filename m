Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 212FA1E5B70
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 03:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769658834; cv=none; b=gvxTSyH/BxVdhginppteIkYdFkjjz1WerICE1sYfLAndE70B3u+9BX20S4r5+REwrsUxSd96uUTW4l/b75UYsZda7qZBluDc8WtD9ch/s+lMD8cs7KDO0A/pa08FyU0zq0s53WNoe8tLZdJ8wc/Yz/lovYcSIaBkeYaYnzAyMuk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769658834; c=relaxed/simple;
	bh=BurBMEh6T7pnWo7rg8OyclcDemIi67cmcshUVg0eedo=;
	h=To:Subject:From:Message-Id:Date; b=f6VKW2Meg83CY7C2eY7K5k+ukKT6Xi3Pad34A9ZDkuqhPOIPooGPWc/117fYKB8ZSlf5oJzExd8l1ode09EgNXrugW8hLUH84qf8FyEspiCrdTjn8bH/0lMI4HrCj/bIMitrRguGhAxhoK/j6KNc14hzFAlOXDVulDw8nbHT974=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qD6uFilH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qD6uFilH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4374C116D0
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 03:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769658833;
	bh=BurBMEh6T7pnWo7rg8OyclcDemIi67cmcshUVg0eedo=;
	h=To:Subject:From:Date:From;
	b=qD6uFilHoNJODHm8w92WKRo3JrbzZjOjA+KTT9T8uDWOUGJ8D40J6uId3oQlzyE2Z
	 dRTzoh6wX5AQqJx3dBr9XJYw+KgDhhPRJA5SPIMIeY152O9zvHkGB59xqx81oclFrW
	 4WQZRHc8GVPHgU5oiphWTP43BEN3Dd6pplkPNkmRIh/SxBC8eVkXJYeHR8Nqqc4uBp
	 LFIhtguwkDSiX89w6yYYxhxT8HcRO0In+2NWNZ99cLbEwkS6hGMJeeahzdG3RiYSHD
	 aTZ0JFYdQ8drsvjUQxKPZMXGPlDICQYvz0Uuf3o1doBeFZ93Bffjmr3DR/74ZOy1ES
	 wzbIcu+fbsXhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DD9D46C1E
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 03:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176965883358.31086.6041356669790699062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 772fad24fb33ce8c509fc00932d221cf4196de630383fb5639b4733e0f3c1a53
Date: Thu, 29 Jan 2026 03:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769658833
