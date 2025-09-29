Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 245B81922FD
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759127394; cv=none; b=doY1NdhlSxwJmzykfJc82i/0gHzmDiGpTI8AtgOAhcsy7luNg+xBo9ePItXVdnhNY2erDOYA7aD0pKu9ophI9uuR8dZVw0PYyq9fXxYC5Sh360LxE9jfG1HQVl0ds7M+xHOEPBDqQPIfQlyraS6AcYJXNwx80WV/eVroKw+duh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759127394; c=relaxed/simple;
	bh=hGJcpsr3rSMnr3z7Ug7KPRtNlzc22FKK6hDSGS2m9Qg=;
	h=To:Subject:From:Message-Id:Date; b=DoDaD3U0+f3ddXtGs6RNrgU3pxtuQBoRoaz9u4cIPWqZRXVZnDXUGWF2kbOimK9QkqD9tN2iycQ9k3Rs0PJqNe2x7QY3iOJA/+fiM7r8bTJKLZY3LGVjOgAWjn2WwREQoR5MYa9I8k+lhKqfBtbrYl+ZK9mWAF1XjHm2FgJoy3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kdTJjxeb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kdTJjxeb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF87FC4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759127393;
	bh=hGJcpsr3rSMnr3z7Ug7KPRtNlzc22FKK6hDSGS2m9Qg=;
	h=To:Subject:From:Date:From;
	b=kdTJjxebz8SThCyq3jZxitfEup/fw4fd45bRp5kpD0FY6qYcrsCDtj6fZPH1GRjzQ
	 99ikpBxRKmCzlMQl0V3R65a0xTqWcw63Xefk4JWbz8vbJ/VkjO0b6mAqZAM1tJTvpW
	 1M/W1xdUe21vNsbPgrs4V65Uc6wWAEUmlKGh8MXNDgt8oAzy3l0uDate/2pIxYb/ZK
	 xxkoeRoLy43/3mb0elUGwbCikpmgvc8FYzeFY0m8GYvEhTM51rJqeqZvOWuwNGp7tP
	 AGDfD3ZqYzYFQOEVZJtqU91NeFe6IucR1SMZnrh3LozRPfKMiIbwScA26sNdaY68qH
	 NyLZvL9c3dMVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97139CAC5B0
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175912739361.7028.10123635870366737416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31af984a5936c5118b1222bef6cbf573bd55cf15d4e739be0d07b154792a3d34
Date: Mon, 29 Sep 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759127393
