Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 497161DDC33
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745206794; cv=none; b=oAPICorGn1GnSf8HDbzR1kW7rDK9vNGdgD+qu/FJBPYsukB24W89xRojkUqPoITyUnXkSBBrRnNobFqYNGU2wh2kuFP0pJ5Df4TqsmmEKwmCP2HewgyknQbJo09wzwrMXcgy98gwolzrMfcFHMZO+krOz+XBZTI3e55k9gDTj7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745206794; c=relaxed/simple;
	bh=GvIF8k6qZUN72n0rkN1UhDXjCCQjhUxC7zwEPodqAlU=;
	h=To:Subject:From:Message-Id:Date; b=I6ZoNsowrWz7CyQaeoxNuw59JjXmJTchn7WeBh9nnmktLro1+mW0jmo+6wCe0/IhoexMMCg4A4Piy3KRVkHRXsR8+eGL9yaAe725oRx978UUg7Q+Af0v1PioW12FF3eWexZqHITTmplbBDRlHXtsC/BlF8OsbIhhPYumro3gnmg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d+qL33w9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d+qL33w9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE899C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745206793;
	bh=GvIF8k6qZUN72n0rkN1UhDXjCCQjhUxC7zwEPodqAlU=;
	h=To:Subject:From:Date:From;
	b=d+qL33w9UDjW5KtFdsCzFCt1rbELWMIv9XvVLgpTmg929plwb64a7aM62F/CDlZDz
	 wgB1IXAl7fHcXqQ+9GXKy9zkD3eE5qLYxUoUmGPJi21U17wImbbjzoPIxk1mk0buXe
	 LHNbrtyGJJyO3culANz4gOlT0YhmRK9GWPaYR3s9hAmfKiS6yXyWRE658yQp1wsPtV
	 n5vXfClE0y64dTUdHDd4nHKwXxhJcVWYYPw4lJEISs421C2KzBC4fb1kqJsT1Iwqo9
	 Gcwq827vQLd1tRRgAekKMIGH5te/Sr5v9ws77d73ZMZWOOJTj/mpVF2XkfjmZvxBV+
	 ub/reCrI3C24A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96443C369C2
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174520679359.14094.15750309992925201541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 634f3770bfedf0b8e97e9dab0f516ef53db573ca18a05a5d954807414fda904f
Date: Mon, 21 Apr 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745206793
