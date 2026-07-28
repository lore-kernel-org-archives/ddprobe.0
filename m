Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6184942255C
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 10:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785234634; cv=none; b=TXE55c0VzWUbDGAnHe/akx/MxK/jbC8UrNjRF1nOCxJFWianiK0LG8YtmrMD2LeoizGWD7RF5r+PsdPY7lVF31A+bU6s5P0afpuFNgOwmcSlhZWfewdlWViQj6y3ChY94n+Y38s9E4DdeSfEdvXxpi5m7JybSJL7HiEqxbOEzhg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785234634; c=relaxed/simple;
	bh=4WMZeJVTml5lrdd6HWfZk3tjS+ganUSJHIwPS+OY6wM=;
	h=To:Subject:From:Message-Id:Date; b=gnYsFwZqeTqLfIZ3+z6hE020Qzo4JilslX3rPwnxLkmvIoXMIS8vfH7rlkv0+71ubOThzXYnWvW2WzLa+aMw59CaBAv516oXhKEXvlfCQblytYaQHMW8soLf5VlBL8UES/XyFSIjBYtvZq6NephOiA88iZWCVTf70ezyanbNdQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B8pwHf65; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B8pwHf65"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2E67C2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 10:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785234633;
	bh=4WMZeJVTml5lrdd6HWfZk3tjS+ganUSJHIwPS+OY6wM=;
	h=To:Subject:From:Date:From;
	b=B8pwHf65ijwMwPYqWxADQgM+blduy91Q4jZu34eantwkv95jNdOVOD1MkkHXyZayH
	 y4SOJp9iV+kmWXooanPtliwAsZHff6ZbGfhvAau2GgBP12h0KYg6oofZyoEFcioSGO
	 JiFexlna0tRpqRktQzcUPuxcFrO4lF1WQv62QqGHpq0quRc2oarbzRc/0p8KmXAAip
	 Cwd3wSRfOXaJw8Px8F8g0NEYFmvF9h8fnoxUfIA75vyq/TUVG9TKpb0lf/to9hqht5
	 eLcaIb/sEAquSeJj7961D0AfY17k2ykj7Dpoenun4k00BPYHeTfemT4hPKbpP1sQ8s
	 5eTrmq6DO7wbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD755C53219
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 10:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178523463370.13379.7383419707746781755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e466d2ef84e79f0eeda809ef23b80b5a199ca5dd9f29e88e2253d7c3ff2e5fc5
Date: Tue, 28 Jul 2026 10:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785234633
