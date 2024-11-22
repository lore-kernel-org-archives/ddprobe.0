Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 269C64C66
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 02:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732244154; cv=none; b=oHrdXyoPy3Ek+JGJ7/8lvcRUm7ZqsGlemSZYPe6eP0Ajhui3ew0Ydjs2EYxe+dTZFK+5II+ffN291J512xI5BJM/bTJ7dZ3cHpn22qx6O2QNeSEy15oFER52bwj/yZwk6DOwIoyMCJq4NhoAWF10b6rPWRsqd52lf3EJehwg/QA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732244154; c=relaxed/simple;
	bh=90D7hajSW1IUw2ZhcelCpr1XEl7+2o6KqhbYgJI2l4s=;
	h=To:Subject:From:Message-Id:Date; b=AiX1dYvfkCQhayVvnWLCmOso7r2O/o1mRRjw2zaWS56b5/Bp3bCuW/AKffHhtzOuveiXBpr9ERaeLmfl+rWJfU27Uw3zu5FLWAA9Dh0hkF/cSTDjXKqdHK8WonlPjVjnfBjRqzht8ACaRi+oKzzjq8xB+GFFi0/VebMGLgb4EMk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gpYdTDjo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gpYdTDjo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0371C4CECD
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 02:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732244153;
	bh=90D7hajSW1IUw2ZhcelCpr1XEl7+2o6KqhbYgJI2l4s=;
	h=To:Subject:From:Date:From;
	b=gpYdTDjoX9LeHOo2Lq0Wdcml6FqxSkMkfCdC+u4rkBQsFJsOMVkiTvAAz7DalV0XB
	 36lDe2/shtvslzVW2N3i7zkoKyru890+ZJ4vIwRFNTu+nvQ0Ee7ppNmXTtK2+CLo8/
	 2BVNLTrKxmVaXDf7JpQ4tZ0HmkDYH+DB3JU+iQDvZMZFVSlLHo1wzvLMFXe6EYkFb2
	 CHyvMlupOwD4Sd1tc7egklb2uja5Qly581BKLaQwNOCs4vhtijHV0RX6UH20dTUqCv
	 yPv1kWRdyR7jyptlIb09POtUlFhn6MmpGTebhyNS4bIctryVVCdiZVtNxZwCnOgptb
	 5EHmhf3pGWGVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9237FE65D10
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 02:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173224415359.10426.12586694929213030977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0353db37cd86993eba8bf684e6348114140d9f4b5176c485e5cbfce3df30a2ef
Date: Fri, 22 Nov 2024 02:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732244153
