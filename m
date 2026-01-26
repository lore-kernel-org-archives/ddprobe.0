Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF40C344D93
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 16:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769445833; cv=none; b=Jw2OEYgpI9s8IarBSu3EBN2by3L0DjAgFXytTMRC0CVChijeqAPb9agCVMJGJ1XFhENjU/7XRMwjO69Rn14tOtRXL1OLO+IwNaAGn2Ha2LeOLHkR848q4BkDBNIU2PYpkxEU17v1Fj2YB0zFB8ggxQRtzRqCwqMOnpPp6xh2bao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769445833; c=relaxed/simple;
	bh=Go/z18HyyeLTLUL8d/Ds+E6Hnfhoi8MrQBGlpnJv6rE=;
	h=To:Subject:From:Message-Id:Date; b=SAvaAmBHUyoOJjeM38kQYRk4eKNj02lRVMldFNuLzq4bw9STgomhLTYew7BF0YGHq0eSf3wR3Mr5paJI4lkmQPav2Sjp/Uwrrjm6GuY3eNhvvYZe1x04ou4WLNmdFOb7HY/M6wO2c9dltDo6RUt1A9ikusElLXW81VqcZFxGcHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d52Mba01; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d52Mba01"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3F0AC16AAE
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 16:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769445833;
	bh=Go/z18HyyeLTLUL8d/Ds+E6Hnfhoi8MrQBGlpnJv6rE=;
	h=To:Subject:From:Date:From;
	b=d52Mba01yCuKfOCYlZMMeZ97a1is3iI509cOs064nNbC8jWJBZtOCtDw20APNGa+i
	 RCoopqR2EcP9BEC5Qi2zt9RPUWQkTKlLGrofVYsu0keCfOX0TaBjDcInfnBKU1qZaD
	 kbjzLVoQE0alRhv759xLz02+nbcI3cgC0sUrhJms4Z6npvPLttbq1jhxUGnODHy59U
	 h+xKBtIr5VR5NMXgrw0mPhqThYiIrgUUBaYqaeesh+jB7aum6wEDwn0GVkvZuarunr
	 BG7LB5Wzg6ai48ZlQDx/rDg801Tyj1clJ/6JMenOJa6Dpqdqqq48QuxIMedTtUcM03
	 Zcubz7pNDYZpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 937B1D19502
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 16:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176944583359.14179.8614455900362999321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0561d1d58e04c54cc40049b6043838a6e0c6bb62e3bbcfeed2eaaaeb75bd822d
Date: Mon, 26 Jan 2026 16:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769445833
