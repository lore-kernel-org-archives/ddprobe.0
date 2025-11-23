Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19C6A284671
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 13:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763903514; cv=none; b=lbVAKzunkJENLSd+ELAR23OB7rjR+AjV+RMDl/WmErOS1ILkcrpMPJL3HoLZGI9g8xdn6VuiFVedvju8Q9agCBIuAmS4p4wmd6EOE1qwIroEjmMX3WexFpSqPjpdJbg2RR5nDEpZMflwI28YIQgwwPxwGh0kdeflTiEYLOn/qug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763903514; c=relaxed/simple;
	bh=tRSy07ZSDtFrF6A4Dwxt7BkUButtbUDwcqJoycORhwY=;
	h=To:Subject:From:Message-Id:Date; b=E+A0DvjD0qhQ8RkfVuy+UuyKOINdOj791nbWSz83Ttafn5BYrdU6xG75/u5AB2tX4JMxzpZ3w5ue2yZRW6BAWnan1XvgWzdytg20p3ZDwqhm41573pXdIHxJKZC+tau9zETQYGodBubB+FyqnbEyZ/vnZuFsRtf7EUMa02LsfgQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MZdIQkB2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MZdIQkB2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC754C16AAE
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 13:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763903513;
	bh=tRSy07ZSDtFrF6A4Dwxt7BkUButtbUDwcqJoycORhwY=;
	h=To:Subject:From:Date:From;
	b=MZdIQkB2MCV8coxJm3tWVNquw3C86MyT94Rgmt7uQEzt/RnKqlCvhgcTqz6XTFoAs
	 3cIkMn2kPHLzusosce5AG1gmKQLUBe/tC7Tn7JFsDJwzi4wvwkSW9/B3TXFK5gK9z1
	 il8CcL/vSN1wv1EOTqOY2lb4x16a+fp3hXYNOHZuyXjU27IE3hGuWg1l5VMuHF/OrX
	 rx4CPn/5uWqADuxDvIq+qhuw1Gs7Kyq1km2jU8Kf0m+soTnsq1TjSrh42SWX0j5xIs
	 nvoAj2qXR9lRAkSOJgRsrYfyZ2Cn/tRC83rKeLmoOk9DpCu/br4E5QXGrPcyHAa9PW
	 JOhShTclSxcUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A23ACFC518
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 13:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176390351361.31716.2110790469037671407.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7af6b9652e8505042fac5971b65f34f5b273303c901fa176b885e0589ef9a0c5
Date: Sun, 23 Nov 2025 13:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763903513
