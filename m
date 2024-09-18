Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 385B119B3E4
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 14:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726669554; cv=none; b=I+Bmtws6Sl22uqAEEoJsbFYwtiMyruRG6bUXe7IcYZEDQSX7V9bA8Jg6MhekOIxQLu1yuzj0ea8O8RImiQlE8v6crOMhVnMxd31aA+sYBkNHCvdPe7wOTwx791WjI9gi/LpmozK/vusBAHlrv/47dzyAdnIE5TFlSzVcYyRu2Jc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726669554; c=relaxed/simple;
	bh=2R7gux4D9i72EfkOh0safPq08QieNj5xRPwKW9G4Nwk=;
	h=To:Subject:From:Message-Id:Date; b=Y1I6Q7G3UPsefeaN/JPnCytj8qQcusUL1fgxLItiWdhy2j2FpTpOrImeTDYYHZfsq8G21nKhE2w9Rx74ImvStyp61GLwa6keNUnyS5c2Um0vSE3ybWsozGQ+keFphLi402Y4kbTH5YeXr/gicMJzn9M5jp1vJ7I74O87egHqY5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ubZDtgZ7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ubZDtgZ7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB8BEC4CEC2
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 14:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726669553;
	bh=2R7gux4D9i72EfkOh0safPq08QieNj5xRPwKW9G4Nwk=;
	h=To:Subject:From:Date:From;
	b=ubZDtgZ7sY6pBcsF64gJqmhILMAVjmSSjtHeOxh+pltNnPHSny8gQJcfyjFtM1Kwg
	 N6br9qpGFHnZPa92sbHIyUb+J3UUWOKiDNdc7RUkiyO29A8YaA08D0TvIGoFrLCBde
	 ukiztSFHT5FoyTowFNv+K34pxo7z34VfainNRLrZDz/abC1ClAg2Gko6UX51IlMcKu
	 PehKfZB6u59fi0TaT6bG5r5QkixN5fxankR11iTonw0r6eWpJNevz8FLPVxTuCvUPD
	 rDeNRx6lFKVC5U5xNv6Ws8jlh2LxLQxqyodOG+4vKLXGNJiP3e7M6cjtlX/7VuVq1O
	 7niOCll4S/ljg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A53ECCD1B3
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 14:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172666955361.21440.17673553306604813848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 500a07774dfc7eedc978a136e5b303f987e5e1987c3d1d5610a34b6d428866b3
Date: Wed, 18 Sep 2024 14:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726669553
