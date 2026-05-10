Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EF2739BFFA
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 16:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778429434; cv=none; b=j4dJVcuruZrLtMuoFvAiYfw4hHO6XZxR3qwbYm4u1o7ihY8rIZBjcdtjvTOCg3ytqk6f6224TOXPiB/CoifpsA+Ekg0d8WyrtsedRKla19JEZMqGo85iio8Hx1efcYJ6seQ8Xz1WePX26d8KzYBdik4oR8h9gF8VwTjHYAMRY8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778429434; c=relaxed/simple;
	bh=7nP7NquLlzzCamRTyhX3xf6/2tPMBG5QXPOoVy5PyBY=;
	h=To:Subject:From:Message-Id:Date; b=l297afKlO+gHwbF3po3zkPTA/YHSu+t9v10fT2fIohgwrCSHMp9l22itSYA7gQyZIfE9cVSDUbay8ps3E/V66kWoxwcUY/Bfy8PbLaS6Wd/6NGQ7kbMQM6pJZs12EYL6vr6Gnx5xYi2ifa+0bxY9NiI6F74tTvSyy41x3pt3hR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HprQNUPj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HprQNUPj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2DDDC2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 16:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778429433;
	bh=7nP7NquLlzzCamRTyhX3xf6/2tPMBG5QXPOoVy5PyBY=;
	h=To:Subject:From:Date:From;
	b=HprQNUPj0GFNCQcdYqNEiszhkiJBBgs0nmWLOMTmzxHdZ8F9hB/c6GO5Wpua37RxC
	 +QHajblMtCnA6oBnJe8w4RAQKMYRcqqxjzAOxPO4VqB28KK3R02iElHDcQGOetqHkO
	 bBpVcbZJIEOvn4PaF5ImA06XEt9wNwnMI1a17ZHBiCbXqrzo6nyvkre4qLwty3RUrG
	 4rhWkPrMLZ3Xtcyap4vESBRA2zbqjViXTslrRKodOUxd93NiqF3jBl4o4X57+zAhnB
	 /paFy+wP7H7cBLc+LIZuWoAtlS+fEAE2pt6iO1MXeJ4FWDB+x5o+SoU6Z1VsQ4R3LN
	 si2HHTwN8P/jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA453CD3427
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 16:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177842943368.27094.17679438490859638699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 647b7904aba5c883dac9dd6e00ce2c6332653d9367674ae56bce9d67e6da8526
Date: Sun, 10 May 2026 16:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778429433
