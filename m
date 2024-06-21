Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48AE940856
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 17:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718992343; cv=none; b=Fs3I1zOHKEYAJiCTnN7R2icmkZBQ0DN4hC4ut65K9bZACeEDkzXgutpMidO10p6L3wtKh9XV6XRGVUGrlljDQbDkYGP3XZwHhU/ujnAZzHo2IsLTOyVDLOEKqRnvLBqAV+trI390cJx1pNzPaZwersauPmylDtl9HMzT80M69BM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718992343; c=relaxed/simple;
	bh=GLkTMZk49C4T5j+mycawB8xp/BNnyw/lTaGR+obOKDs=;
	h=To:Subject:From:Message-Id:Date; b=lem6rnYOae0zDhtBgC/qQvlRvNg8DDoS5KgNnAbq8DsxyRw6OLfbpAHx8Jnc8wZ96Kuyl+V85kejjnFL+6VGYOjXehtYq1WxiPXfRR2G5nc8p33NzEpvrF7o7Aplj/96p2OUsTkxjzEXrjRAQnfGtf7wEJMRkdMO1uqJisFnWQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T3g/57W0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T3g/57W0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4F41C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 17:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718992342;
	bh=GLkTMZk49C4T5j+mycawB8xp/BNnyw/lTaGR+obOKDs=;
	h=To:Subject:From:Date:From;
	b=T3g/57W05UtOEf4S8i2evSsE0+EYqJwMF44U176vUeLMUtLoLL4HQg1VDfGzZhkgR
	 2X80jwbAh6h6gHJMJy1NinJTVyAqXNHER5u7SLMZP8tUmrEClFPOj5/SUJ3XzLyRCF
	 ImjMO/kZoeIlK7VBk82FsADa0N63VXgitjJmlJNX1GL5sRJUUEN4lpwpq2ZHmgBT0T
	 AMwyzRI2rQpk4R29cq6w8jTBnCOUaJDNsrBYUyWNiDdf6MkJLr/puSUgWzlQiaJN1+
	 VrriN2mlI4OF0yFrymEu8LZnLc9lSzzOGq29UjTjM535PtV8YMMojR/+UZc5TJOFP5
	 QY2GR4XbPe9VA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5AD7C27C4F
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 17:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171899234278.17037.15337356633856359589.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b07d0a319484a64f7fa2ff493debd85459fbf9b689a1d666f869666b7cb38f6
Date: Fri, 21 Jun 2024 17:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718992342
