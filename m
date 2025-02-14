Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48F45263F5F
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 15:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739545734; cv=none; b=BrCrTDVjt7GMUSv8p46f7YNoR/ZiAqvveyJ0647uwfgGjj07wuD3G21eoW1wJ40+qPBr4ddtbGE2sHHWHiecz5vN/wrTcEckjY9fZoZOAFAHSruTH3Pu6Kpmpu/YHughNt8bZvPeS6S+4t+dT4cc//IjEySDF4rAnZ+1GEiRYL8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739545734; c=relaxed/simple;
	bh=dv071ont4Ly55TzY329Of7EyQpzzxdIEyDi9LkbsN5A=;
	h=To:Subject:From:Message-Id:Date; b=BAJL1T37CJfDN886xfDNOtH5BQMklNQyEvkMrMNDkLptjWUr7yRhKLTnMO0skrUBo29AjQeO8MKot3tYP7uG+JGA3Q2roGj3PX6Alv/+yFyNG8Aoi3Idjx4OTV/VNX5J3Bl25e/hwXnCeyOeRDtLrMfWnrSaDVGuqTRg06ecb0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dKUFr+rW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dKUFr+rW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD63DC4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 15:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739545733;
	bh=dv071ont4Ly55TzY329Of7EyQpzzxdIEyDi9LkbsN5A=;
	h=To:Subject:From:Date:From;
	b=dKUFr+rWnYfq3idqXUh8YPqCWneuQhi6QiVv0EdSdLF94ZdAtm8xp0yKvJ/p9Q4uA
	 gspe6ago2tK4qnzZNew6ihKmN8fynkyRGcUb7mjEww2yOvGEsmdaNToitqO5p8o3wp
	 TMY0pmsWlmTOvy5F0pfYLXwGGPCI52lYLgkpUgkD1Y3N7miAg8kTVszUvNdJHW6bqy
	 EGIFBwpdxpmUXjvdsTU78HHD0AGYR2EoMUP3/sK3/Qc7tF1MO68RmvkCEA7IuvXOaB
	 3E51jINt4KRPoha4zKSvlvTKfZuurcTN9FIZIcKvt54pu91nBFKUZgU/iRziPO9ZXp
	 t4GpIBCdR3l9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 957E3C02198
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 15:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173954573360.13420.1124274324966193187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82101920e207081773aa5f35f3f226c5f9857504983f581640d31fa4e49d587e
Date: Fri, 14 Feb 2025 15:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739545733
