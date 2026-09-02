Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55A3B39CD0A
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 18:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788375034; cv=none; b=U2O4A8od56pvFsejR4+hc1bGdWKvOmRkd5dMllmzeQ8FI3WXi5FIGP66EO0GJoR8hSO5H2QDlmiNhf7cocrZ+yrt/5Z38z4ppnxhxM1zZZH8CoSGeqkqfi85Mf1EFeHLl7HPLySk7gwe/MbmrRVRYG0cFCNKYJ8RdKLCS60aH6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788375034; c=relaxed/simple;
	bh=yoI6pxgWNJZW4+4RUvhKfzsr9Bdj6JVWnDp34fsRy6k=;
	h=To:Subject:From:Message-Id:Date; b=pruc2am/VmyTowAOuCkm8iZwYMomQ+IO72gV3kDyIoRjw2j2mwYD7PfStSgenUWRBmoIn2AOsj+jwSrVzoIessCP8r3+B4l+1hbcRE8cjnkGrGUn8hcQNNJOOgUrRT7e584sn+EDgZ00XbbrcYtQA9h0IHNl9I9+DcxD8JnzVPI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MfioDwvM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MfioDwvM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD76DC2BCB3
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 18:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788375033;
	bh=yoI6pxgWNJZW4+4RUvhKfzsr9Bdj6JVWnDp34fsRy6k=;
	h=To:Subject:From:Date:From;
	b=MfioDwvMHQV9pWGMLBgsBl9eVkEBb+osNvFQv3e6cIz3M/dQpVa2N5XQeb6ldJu/r
	 UG5+ybmTnaD0dZpwRJwEpG2zXz0bbHnFQQb2bDsLl1fuyfHVzx6QfVU0ez2ywqeGCf
	 LLTSvBidTIyS9w4NVqwkkGpiFfsfBIt2sW/wJdKnhDO443nwZUtzKOATm++b7EKJq7
	 R3cGsdd+8GSpxGTSKexKNuVoeiWPAUzhRpl/n9DKm7bXCfC1lpF6IwtLXqSC8qKVzS
	 eIzuxYUmJkJU4aiyaEpsucR6w2dzQ/h9n5Sw9DMdKQlPcuO0LLDp8xitlSgQSWer7G
	 IbnvjEym5IQIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A98C624D3
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 18:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178837503368.22754.3231598745025117451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ddbd459547b59a0c80d92abc361ec4467537fd044c802692ee2aae0605f4f79
Date: Wed, 02 Sep 2026 18:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788375033
