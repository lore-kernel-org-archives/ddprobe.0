Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F05627F7DF
	for <ddprobe@lists.linux.dev>; Wed,  7 Feb 2024 15:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707319697; cv=none; b=YID+aVcJwrijBqZxru2n+rCCGOgouk9EYLoclu7OIZknqQWT2ar2FcDvdwhrIGIeu/j37pUKOqODaM9EnpAEg3jFt8OqQ8cm3V69DyjhkQpb1QGvbqzdyWveBlmx6gwoWOzZwtIVEccD3VKEVx1qwQzKQuuZiodEJTWsLZHRpGo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707319697; c=relaxed/simple;
	bh=ECjWV1b6XAXMUBfqXt0a70mTogln0+GDQbn5C69lk6U=;
	h=To:Subject:From:Message-Id:Date; b=DFBpqGbTzLBbn7fMJZkRzhE/+aC2SZorlJV4lxRF5Ijq7orTce/5gHZK8u7vqi9sl3bFFJwiW2MQy/9MZy59E/nALfec2I3ZAteElSFLe2Kub1OkWnxCZiaJvR/WPL7nKmSEkaA+4KPBU3n+ob4otlyv/EzBzf+oz9OZ4yZx5+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DP5UmLol; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DP5UmLol"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80408C43390
	for <ddprobe@lists.linux.dev>; Wed,  7 Feb 2024 15:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707319696;
	bh=ECjWV1b6XAXMUBfqXt0a70mTogln0+GDQbn5C69lk6U=;
	h=To:Subject:From:Date:From;
	b=DP5UmLol92FEsk6jKl9D9mkhImYW6H/iyZ1GehTYLXE9HJ3MXIH7RfD2Q2HO5UKMM
	 3bWVukIiLJ6a9SXyu7iKrpZokP2ISY0kCH8oa6dXlDADg+pWMVJQxpxWZ3/g6tPGEI
	 rlUZODoVPqexo4izyRaLIp9d/Rj4c4YF4BP50qpbcZWJrsKr00m1Ur3tUmbaEGqSL8
	 jEqB6JnjND78yquaY7sY2pdFMrYHsq7vT3jBHlZn7+4NvvNLp2tG5li1lyGcmcrYrI
	 V7n30Up1ust6j/Q2JEPGq4gRy0q9W1TjS5nSNcDDbRVuxSMeHljf7NHFCUe6NApsGy
	 QG6Ix8v7D2PVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66A91C4828D
	for <ddprobe@lists.linux.dev>; Wed,  7 Feb 2024 15:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170731969641.11221.12452354937781489091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8379321924a070546d9b4650092138555c761f679dfdbd19723d198bc880021e
Date: Wed, 07 Feb 2024 15:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707319696
