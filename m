Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15B4F30F539
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 08:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774169094; cv=none; b=p+cvIXGnkUpj4f8AqmpR/aBq/DKZmBITY2GUHx34Cen8Z3qtjVFrGcEctNr9SSwMG0dRbDbCa8PIwqufNGekDK+/NfsVI+VyXc3r8VRgH3s7YlxEWg+Sq4o19SizF2UW1P+AtBbmYMPjhJn/xCgt/5Fzlvarz1vbw+bp9TBen4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774169094; c=relaxed/simple;
	bh=5+4sb6IfdNz7jVyOI+yKjXJySqWIejK26h+cWe7mkGc=;
	h=To:Subject:From:Message-Id:Date; b=HoWAnZizmzYl5oj58zXKN9jg+uz6wp4tDg3aiwndWJXGfaNrFl0iENWW3s9bs8oEgch7IZ/p00AKPtKZHAD60N9hzJ96c1na22+yLio8lU6SW8qcM7GdES0QbqJuFxFPZwJPP08YZT8isA5i4juBDSekLTKjOkVze9hr6ReQVSI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hsyFmLFM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hsyFmLFM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4BEAC19424
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 08:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774169093;
	bh=5+4sb6IfdNz7jVyOI+yKjXJySqWIejK26h+cWe7mkGc=;
	h=To:Subject:From:Date:From;
	b=hsyFmLFMIBwFrw+FGJqQ4irQaXle68PUtRIOIPbAoWCGQi7+RKuqXfnCVJz/q5gOy
	 Y57vwS400GkQ1Fy2PbU0taf7RuUace4Z9KM9/CQJTBL+fEaUPnc/k5ooBf9DyKe/8V
	 PZ+f41YA1CRnoH9phATKQq/r2+aqlCgDqIy2Q5L+7LpJh06o2WQWC3nHfZD83T7aad
	 R7rBokO9NypXaJ4qMW6ZyUHso6EAJ8Jyqc3GHOyTUG969SpFtKiFSsU/mPIw8mvjl8
	 THTycGXhyZtDS60pCV7CH+RH/gH4jtm3kTlfAbdSk76GgJAegx9QN/b3Bg4vxVB9J2
	 tGF1vdFVRAeTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9367DFC72AF
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 08:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177416909357.18161.1352853508173533131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 066977927d360603d5008bc40f175ccb97fbaead796f2b096f4b02bad6070963
Date: Sun, 22 Mar 2026 08:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774169093
