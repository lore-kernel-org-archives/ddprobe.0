Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 266C6255F24
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758745194; cv=none; b=vGleFv6vXzY2Fxx3hYivlZEBQp101MSoNtOylme0/ihxlRcA2B5+vA3ayXvLJZ1dEMSxX1d+TDWA4rv23opkRJQ2sa9kzBQv/m/PrsTsSeCqn66ao9qloNDM9StqaCWRHXcnt9pz6la2R3lyEi/cbHXbsvRd3JzucN0K0j3hRck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758745194; c=relaxed/simple;
	bh=wbGdaGYkxfzQQ1Bnm5BUz3tMn8AJZPZB/BYyUTCa81Y=;
	h=To:Subject:From:Message-Id:Date; b=OannH9Ct36F8Gb4cxtVhZnrHnnYf+EEwbor2aVqinzUi3qK+rehzoTrlEs6kPpKaeRkdLT/KzRPqNW0Bnoh6GeMPz9GoW1q6r8W5xsy1a8Cq+HVMJ5rPYM9TKYk6jCkKe9n58oZOihxR6qQfcclWIDT0EhynwApCinw+Ifgn4qU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IR7pOEst; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IR7pOEst"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE58DC4CEF8
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758745193;
	bh=wbGdaGYkxfzQQ1Bnm5BUz3tMn8AJZPZB/BYyUTCa81Y=;
	h=To:Subject:From:Date:From;
	b=IR7pOEstOFub2sFXmoJXq2GzBIkQsdRMYJiwwQp34lwyhF5DhLceQ/1G9hnyvWroa
	 NuC39ouXn8rDVSJIZKP/hl1DlnetVurSVZFqlwxbjg7GxhGlJbsRdj2lJUDE3Ayukk
	 uMQLGZUIAE+vbCUBlcTpoiInjDYGUKKcj4XhFMrqFqpdKNu0015UplGaPz+G/GSAms
	 B9iN2a4e5bzroH3GYcvc3CJ8QmYi02vnYdXnBOY5H4ZzlVz5I1/86W66WD9loW6wKF
	 e1rYnAWP7eWB9lhA+kyd/598pNWF64VtgcSr3lT9kYbXKFrgWUWNtDSLtYIChMDewS
	 iEFaScOPoPKnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99045CAC5AE
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175874519361.22506.12334604253333590170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: badddca2532561b7b04dd45c9b3676b2281ab4863d524cc634233a24483b454e
Date: Wed, 24 Sep 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758745193
