Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38B6024C07E
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745582394; cv=none; b=GqQQCdHq6Cai61lXXhK0eCLfSHCx2KsJ736XF2zOEsEutaAyTvF9oqLQHjm/YCpaZLpvHDjB2ujP6WvOjN/WDArUf2NNY5PyE7bU9yyZC7UpNSDXWxFFX+herBfwJcNjoCpouzdDkygDpFmRKCYWm+AJrhOGkz3yjFtuI36xN/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745582394; c=relaxed/simple;
	bh=tEQZ4Xzqg/KgajrsKBFiMo/6oY7lOx+/Aq7HJk5hFK8=;
	h=To:Subject:From:Message-Id:Date; b=ESI8qUTALcP3WswX1go3vxQPVLHuKjIDewqsrklHy4Cm1pmIsyweieZ+aS8Hoqb2YllGtpgnrHnObBgKGw1FU5zYxkBmA6eu4PCi2N7+ExUArXfnXqERa6NHOmb57AYPRoSi/WRrNpIzf3a+pJa059PdzzRUbrBSJZx7dU9Hu6E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V5ws42pj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V5ws42pj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2272C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745582393;
	bh=tEQZ4Xzqg/KgajrsKBFiMo/6oY7lOx+/Aq7HJk5hFK8=;
	h=To:Subject:From:Date:From;
	b=V5ws42pjdOTn7KEOWFAfS1/tZqZ6nawsONZotNGuYfYNqfT1qeDzmA5najKziY3gF
	 2i4YCNYkIiVXJG7x1dBiHaMDSX7ZS75Vnmq5ZNgrQ+NLvcDtqda2xviyMtzHZz1UIh
	 GKzLco/FmkzsD7i4Zw2d3h9JLQVbICY4gUr0iVXoF342+Gdnn1YlUctY7hc2cqibrq
	 RySVO+RlGCYqsoHf2ZP11PxwFUni9jvO0lsSgYC8xxYsQB42IGISHAoWNwbLy0/U31
	 uaemJ+XuyPCGYoG9EgkIVcPj1LaZo8iGve+P++Ksdm/XEyCdcw5juMPi+GPnS2XsJ0
	 ggFq2xEnVBsLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECBFC369D5
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174558239357.25012.5449255758935570316.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b62d56d7996c97ea5a9ba0b858c7d383c7b07ccfdebf92b64a0a4bdf38ad46ed
Date: Fri, 25 Apr 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745582393
