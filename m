Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 253292E36EA
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754028594; cv=none; b=AFFplFBo871KWggozWC3TNsPBKFsmbvX3M/dkRY2uPKjQY7Vmn+UlN8U2nO1OwsQWVtyJocXUNkrtzNipTIP+xRduSC2meWjweF2b96aMd+SS6P+GlCIbKAT+JiHCbj/wKsw2ngWiuFhXwiVVY1jkl061TyiXtoIE3+LFNuaSoE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754028594; c=relaxed/simple;
	bh=T1BD4dB9pVE/9TDPQO/6Sa/ATklYPWe1XsfHbLFaIps=;
	h=To:Subject:From:Message-Id:Date; b=nn447Gre6241xgZNfdwO0VXkyBuXvBVomy4WpnOI80u63eRmCfuL1zWyWJwK1g9rgZwHY9Bng4G28UwrpbkY5wY+qW1umcPkBqbSjw3ZOLcZJjPC3/3wKn9YWMhH4S5ZJ6yOIKCtsAEIqPNC6uT9S08TI7qA3yT2PFgN5YGt/g4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q8ZYCEix; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q8ZYCEix"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4692C4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754028593;
	bh=T1BD4dB9pVE/9TDPQO/6Sa/ATklYPWe1XsfHbLFaIps=;
	h=To:Subject:From:Date:From;
	b=q8ZYCEixhulmWkdQLzL82Q8d69etx1bE9HNtCJZ+Ju3q8NvA6O7nyx2Jp6gKRwqj8
	 CEb3HGWwpKvt3oyLjYrsf3KoRVRQSoar96yiI+6AjAHYCaeUPJsA9iwfUvaH3fYaIE
	 td9sItG/fR5IgkxFtZOi5PBLABPvZzfp8Z0DzX7ZnWJxeCvFK3EajI/ZqcWMJ302bc
	 IjV+dWvCJZM3bddGGtOG1PPXsfffmySjZcj2MBj9zQM5LuCeqiHeagy+6AzC5bj19E
	 5JN9If2LI30Y8TcdbqNIDPa5CQZiGBW44Brf4ScrDZwroqhCHfzIDGG5CGxOZPBoe7
	 JtYG+VU85DGuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9688CC87FD2
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175402859360.31458.6467839573746162490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d41d3b4633b759ae16072ceace3b33b767f43b363a0fc6310dc969fcbf81459
Date: Fri, 01 Aug 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754028593
