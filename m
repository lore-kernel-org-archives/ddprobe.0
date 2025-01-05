Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 322F635947
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 08:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736064954; cv=none; b=LX9IsHU2gQZ3kCpMJ+cUhiHV0mPr+CoPJrlLz94ijtSo7WJK9Nql+2PbTEe8GtC/sj0lZiyH+FQcaDEFB2eAvOCa0F8bXRwNKmYgyFlsg+cq4EM94mAbsbr9P529C2Q6PTHhNjLRjPdlSJEjy0YfgGzVpnpFEiGh8idufNXL580=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736064954; c=relaxed/simple;
	bh=ahfGYajxov60a/2ZG7H0FhP7Tp9kIONxLBfZbsqDtOs=;
	h=To:Subject:From:Message-Id:Date; b=Ya785txBuADwVM0IcgqSTVjhkUalHyU/7m3MWh7WyYqm45U3d2TwC3TJmsUoBXySn7WfXU80a4lkCmaye6e3Xlr9vT4nRxtd9NE/rYJqzYJx1p4rTwh2YFqaBsFFWXrg+vuyVm2UcBa0GLoi+jUb0DflOHuFoc7qVHgbvpDApW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LvP/a8ym; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LvP/a8ym"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B435EC4CED0
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 08:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736064953;
	bh=ahfGYajxov60a/2ZG7H0FhP7Tp9kIONxLBfZbsqDtOs=;
	h=To:Subject:From:Date:From;
	b=LvP/a8ym1Rem6MtrtiPgsbE7YbledVyDiIoWMAaMhy43Z8HecsLbt4TnDVoKG4xIY
	 8hGCOA8GH2e4cNVoJPPrHv3eMpUn86pD615cOnRmTvfXifzoIYr2kwTr1IcVwamJga
	 ti1VhHN5WNVh1HiSt53N304hyvzNsIPXf9oQ9pwW0/PlG8K/f7vv9LDSfLknNv05og
	 TRSZ04xBo1+Z2/jBpwpkpVyH+9ls1CfgqbcYT46v3wpSLBDGTs2CYQm2vNcxZPF0w+
	 XGuQN4oYedNifIvlg41J+VZzlx6n0G+uiF8V7WtbktuKvVVbe9qxS9RxFM3jAPS/1E
	 oc1Zdictz9pFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DDD4E77197
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 08:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173606495360.23872.6775695307025799465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae7a8940047f595a10d1a183975ccdd9d06199f9b1ffefcd9ce4f3b4b3c1f690
Date: Sun, 05 Jan 2025 08:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736064953
