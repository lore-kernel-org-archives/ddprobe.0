Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CA5E1CEADB
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 23:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781999194; cv=none; b=BKIs/ArwxmMOqcPqNxgnncAz2Mj+WP8W0FU9XLc2unjbXbTQqWM7Nm1+goXn842Ek4q6nhMuZutRq1B3m8Mi/2YD/zPYrYbO0DZkgwPb6AjIeSPLkiYDiJWl18yocP+ViyTnMcyXVJBd6rZlR92F5ndAyYV7deNPR+4Rc6yOGcQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781999194; c=relaxed/simple;
	bh=kaKxfUqYH/78r/GsqDmFJioFcH4VWr+ieEUJpI19QYk=;
	h=To:Subject:From:Message-Id:Date; b=RTnijxOyMZyhUliyXOnJj9XWp5Bg+K1AbycexlBe326eUd0RQB4K5MOPutzzoUd428ove8HXRAdrBWZi59VnJe1EMzusd03UNuiqvgHvU57eAYhqc0hAkshmeMsEb2EHAQvJcTcpm45wQOXcXK5pruX9dCkc6Qm/GxGb+m9/XjI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X3qZRCm7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X3qZRCm7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2F4AC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 23:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781999193;
	bh=kaKxfUqYH/78r/GsqDmFJioFcH4VWr+ieEUJpI19QYk=;
	h=To:Subject:From:Date:From;
	b=X3qZRCm7d3QBhKDvZjGt8gfhw1AKGx7IPHN+j8wxO0r5T/bebdlrkRdgKkyaeORUK
	 JO02WouX29M5fMPPD6O/yJ6RRdhkSyXR9DCNDRBBKkM95WbTvNIf1x0QDzn92k2APz
	 wC4L+yMpEoIosBeEAgWFb8iIS+WSFgbbc/WAqtV+F/K4SoVwXhdwLXP0jw8fEDJw7B
	 poYixRpjStGerU10WI6k1Ey/nCJ1aUa8ltQ15EgL3D3M3XnpqQjefem8w7Wa79RO6e
	 4FyG7yaSKITWskyRoc4QseRRfozFSyrO/qDv7kQSOerzAjang4yQkSszjYAJUOcG3Z
	 QCk7kDTXYh6Aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B250ECD4F26
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 23:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178199919370.30895.14348660030287079679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e924c2a07b313ef575ad97b831f66b186b7502f30d5f91041486c9b07bcd621
Date: Sat, 20 Jun 2026 23:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781999193
