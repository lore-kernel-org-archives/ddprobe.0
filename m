Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C2091DFFD
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 02:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768702434; cv=none; b=mBbT8/GbomToegOD3X9AN/UaJNcDikxl3uxsdQrVYHiyDdvd3OJJQf4z+tuW2cK+EHHW1192P90LEZAjd2L/097DarEc+6jl/ErE45XqtZB1P+3LAwzgRguAqa3beCxZjMVsOVTDSSvvvuOiRutvS00erpzOhv+7eeUjSqmN1zA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768702434; c=relaxed/simple;
	bh=IqfpUJ+0ajkvTArn4sLbQIezHEsfWwL0zaSSNEAv/lk=;
	h=To:Subject:From:Message-Id:Date; b=lF4TIXnXXXUebO8s9uaZ82HvMjwzw36zBcsngOYEbdsD1uThYDFlE8oBl/MxNtRHW24eeShUPPo2l299CPoQjWh2heTgZgG5DJYHZcXMfOZOyO2jU1ad2U12b6Pau5lamjvtq2gz0vxw+TzjDEg6SIxEmxZJansMnM0Q02SzyaI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VHbPxtPU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VHbPxtPU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE96C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 02:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768702433;
	bh=IqfpUJ+0ajkvTArn4sLbQIezHEsfWwL0zaSSNEAv/lk=;
	h=To:Subject:From:Date:From;
	b=VHbPxtPUvHupRbmE5OlOz2hlcvM3bXYzoeUVSkv99Em6xqvifRYk+U+arYZRHfioN
	 /Nwf8+85U01edrNuNbjCFv8fP0eyf8tz70tRwOl2ySwfSw253rIlvmbiWIyOBOR9L7
	 c2PCi2dtqG5gqrfBSQUiBgBJyrM4qQEGb1rTRflVwdJ9VHpP3hAkFCk6qKkUvzdNjJ
	 uXy3C/2tp0vbkSjxHxtODHoHFS9ul7kjJstoHKcreg1++ZakovqVPDaeMndkxqleLk
	 I1JU6ocUqGZY6YrhwWOK54h+itFAZwD9B5AwSpf7IfKZyhg+3T50DndIPc5Y4kKpt0
	 97mlHtc4HNj2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0A2CA5FE9
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 02:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176870243357.12154.10958171744030169631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71e9b37c74a0b6e4ba68989874236b8179eb3c5e5e3a108ee0588a4759b499eb
Date: Sun, 18 Jan 2026 02:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768702433
