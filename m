Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9AA925A347
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746457193; cv=none; b=Jgg7fAA0a4xMIYO4etAOvGv7akFmLfy5pV+KIreXTrXlKbhO4v472Zc+jSm5QKhbFX6Vzy/+2bXxWag7fIep8RNy/wvP6mUgENT6wWxTkjOjI995cldgas2BekOdqamcceFvZWLeg9OvD7ZAF85WY3AOxzveFju2OTV2Q//yIT0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746457193; c=relaxed/simple;
	bh=aIL5BULIjULjtfGnVSbRx1v+KHfgC6GPuQPe/wePIZM=;
	h=To:Subject:From:Message-Id:Date; b=TmrzkO9PrdrDqYyqHB9Ed3redT/Hc80jQgnPXZdW5BLU1a5+kdqbJPtfDTYbVRRj8HHxOrocWF0MnLo/A+4suu1Df471j/EI8EG2D8hyYsEYXQz+aQIApep0F9FkG2rjKJdftqziJ5JpPdR8vTqAr6J4KPp9Xu0mCJtcmjYhfIY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NFKT88aI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NFKT88aI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 981A3C4CEE4
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746457193;
	bh=aIL5BULIjULjtfGnVSbRx1v+KHfgC6GPuQPe/wePIZM=;
	h=To:Subject:From:Date:From;
	b=NFKT88aI5/85RdckNBB4YAei0rwVJ1Pe4N/uueiQDQJ8KK+Ky2cFU/GVoa0505c4b
	 9SLZprwjZj7fjGUvWPIId8R1WpJG0AED5TWWKPLeEt6wvGNdfRGDWbAkAt67ZBAI4Z
	 wvmGO6Mer+4kLtmS/N4aftQUFsh6tV6cEaIORfCDUTUmz35/yIUjXZgpC5PW3rl3tw
	 8XvmDKZU8zTr9vKPxfIxClds+auibpJqjWq3e9MLH8SsQln5IhBUgNQU2p39iruy5u
	 v5Yw5aNlW9etgtmI0tyoTZZ+AheJt4ulTHyFNl9YAOi89GQva5GjNEs3OhCNA+jH6G
	 XXSoldlzpyFOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EAF8C3ABB0
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174645719357.9066.5828889983191821066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8057c1e50711910970c9c05cb4eba5d8fcd1d18a3c9519ddca80ddcdb7437be
Date: Mon, 05 May 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746457193
