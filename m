Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6926D7082D
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 03:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787713234; cv=none; b=kwoN9FbYwpWNfuj1sxVvFAxkcE+SpY45A46Wd0k+SnhqiE573Dmw0HTPO2Spz7s3TN+JIC+Jz1nsfA532xO2Rp6cdy7C7g/T6y50gGPG1les7xNF8fkVNNCyd8XFFt5v7ruqStG5LQYt98LK1O1vo7c8OTJCGSKns/A3qec4iSE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787713234; c=relaxed/simple;
	bh=FJz0CzWBR1La1oeosQTm9NyuvlwbuX+uJA4HJo9NmVE=;
	h=To:Subject:From:Message-Id:Date; b=C33T0mBg0PdU2OmZ1/H9jpYF7EHhHosaFzWwljKlJpnepoXrTLDGzg6e9rxKKKkdnlDhXIXKhgg+9FT72s/8PDMw+Fu1lU3I9sSjs8uT2nzsPt70HBkZobepb6G4R/62GOlf7F63ZV/Vg2uTCAOGfFz4i5koTMo5y2376bVSI50=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P8O87ojG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P8O87ojG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD9ADC2BCF6
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 03:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787713233;
	bh=FJz0CzWBR1La1oeosQTm9NyuvlwbuX+uJA4HJo9NmVE=;
	h=To:Subject:From:Date:From;
	b=P8O87ojGlaMTsX3QefMg6ADiyd9Z67QSEsBfAC3+waLkuk1Fj0stQKi5ufrnOAmhB
	 0823rk5iX4HjxffVFvztxoHojlWBzWyV5ZBVVLyefxOHoXP+NNsNsopBzCydBTEvac
	 m66/a2AcogSrvhJdF6OIfjK1ptmrS/va+unQbYUcneFRaC7nMZLRkHvq9Cs1GjKEUB
	 wVof+lo7XP36Fvl6lCnJ6qvPKMkUNWVszDvGvrQyHy/jWdW4/Cz/iQewLvn11MUZXi
	 zgJgKhORKES4Rz//jXeXcbIjMaO1ymYAuwepV343OJKBV52TzBhShHlCvw/unL/V+q
	 Yp8u1IbsQ1LGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B51AFC61DB9
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 03:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178771323371.32307.7806309462113641302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cd3856be29cd63c34aa1f6c16841b02034f22332afe135cb2748c06ef2cc6fc
Date: Wed, 26 Aug 2026 03:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787713233
