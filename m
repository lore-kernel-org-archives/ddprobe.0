Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31EED2C3242
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749116994; cv=none; b=tNlHrkQ47c1en3mbPsD5hMG7x/CH9J0VanFuqoW5zGEiSC0YIwlQ8YbKROUay1zS7Yz1A6pUQCQ120xfObZIqg7R/uUrywCx72oZhudpW493qjlhJzFbY9erjwnCF3jxsdhH6IhKryg/SAhxwWq85XEVpf28QZSxQTj/IzryZG0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749116994; c=relaxed/simple;
	bh=A6OFjOU+ei/yINiqi+N8p6mwAH2TGG3yZ1uAIrPjgQs=;
	h=To:Subject:From:Message-Id:Date; b=oQp074J3KlW8pt8xq72GryauggVnRytB9AaHAOJ51CNnbTXw5XNlli8pEiMyeJUvfC1/VrBWRmisoGvOVgjZPSUrdqwc+bsARHxq8OVHEwLHiz9mQSYGBUGJnihMz4LRuYsZczsbtkGIeAK5g9CtsAGpHszB5wErQ8dI1deqfkw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gEDj7rnS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gEDj7rnS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A033CC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749116993;
	bh=A6OFjOU+ei/yINiqi+N8p6mwAH2TGG3yZ1uAIrPjgQs=;
	h=To:Subject:From:Date:From;
	b=gEDj7rnSPspK+CmA1YrlRxr6jj9H6ZejYqTG/68DdReeqA6zKWMZvEyF8tXrimvzM
	 oBmnoFh2wzwEXIfby6KsQw71kv2zNE/F0+v5odcMo/Z22Db+/STEaALLN/dKPHtOsD
	 vi3nQO88I1TNs+nCcCfip/lvkX8McMlrjfWaAp54wEC2liIYhmKTp2LvNlwW06Yxy0
	 bsjMsMZ9lADp9pCiO5YbEHjRFYA+XespY/4A/G4zb+/yKvyIjec8WfppLA5TFJWXat
	 SrDxqDvZYLFJVSC1YJ8VnzlogkI9soh6kWfpTbdsFbYzsWSbHmz8XN1BBBkyM/Upc8
	 +60bz7f/UTNHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD87C5B543
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174911699358.25744.9714988636574628504.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b977e2e0ca92399e00444456ac734b05900bedb113f53c1e652a055a0433d87
Date: Thu, 05 Jun 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749116993
