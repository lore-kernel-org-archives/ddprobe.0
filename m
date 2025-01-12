Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE9DA1BF33F
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 22:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736721354; cv=none; b=Noc0JOeKXJehyiQWy9sRwv1AmJA+skbbnvE8WwUqX6XSNY7AdminY5q+1IG324tK5a6novVtDYTsVhmuXGDa5Ph3cuV/NacJAbrbC4mcSzn+egN5TUOshEIvnGIm9qo+Hz3JWo7/k+LldOA9ILK2qa6IM4XqT9vTuB4UlWo6yvs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736721354; c=relaxed/simple;
	bh=0I2IxRiUc2Ki4pNlnnJRuMHtaz5vCdeKTpNXGoHtJtI=;
	h=To:Subject:From:Message-Id:Date; b=G4458iazXc9fC17uXrUmPJq/MFXddKzQyNuY7z6fOTyH3MK+1JHMqIY+Tq2iW8yt7UNJ9ZL+acUtQNGQ8dsQdUQtIS8oiRTEx2wxMVZI3Z4af4+YpScGi4qzqlAdNVIQ3d4nSR4WMKk8rFcSY3G0hUZDcXYZik8aiPq5rC0xIEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y49n2cGf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y49n2cGf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8E87C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 22:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736721353;
	bh=0I2IxRiUc2Ki4pNlnnJRuMHtaz5vCdeKTpNXGoHtJtI=;
	h=To:Subject:From:Date:From;
	b=Y49n2cGf+YBVaIdz+Gv49FzCS5W/KGmk6rb2r0ow+UcEhmtBdq0vH3EnETY+VPMpN
	 gevOC0Smn121/RmdAVHYHEoG4+GcE706FdavMBbsKkAYVFLanvBSHi3+UkQqVcn7wv
	 cmourfKdXwvOmAaAeTNPm9TQA+076HEJf4hkRXly7bC0bOtoTTB81RapMeO9IwgbXa
	 YcIUYQBKaX+kdx50yOexjSXS150/SgOCGZsx4SsaJgRsMGKHjsCuIT4SKxeo48sBpa
	 kAgJbQnusX9tbNhbIKgQbNpLvCyGXzVJjsnNvhbibUj0zgOVpO+Yj03SYQ5Mw0ihks
	 BtGKt0D5+m69g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F0AE77188
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 22:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173672135360.28261.4352520151518158574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8db381dec4d6769bb1b666958fdd17eab2c2f67fb98e777fc635491c0fea2340
Date: Sun, 12 Jan 2025 22:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736721353
