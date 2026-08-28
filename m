Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 589CB3C3450
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 05:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787895034; cv=none; b=njVclOaIHqiOPbYCx7gWa1lud/ACRnUobc80NO00Vh+YJC+qFuKLmw0WK/XzFUH0fYxfeWxAuGhdA4W5WTsyPCL/Sd/ClCfHfamcEomCHgMwzXn5eo/dXTryCLwGSRRN2MJbsw5lDMgYysclyvnXmg/uTexbnKsG8SeGsogv9S0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787895034; c=relaxed/simple;
	bh=nP8jytFXle/1b+Dr7U581bAa7mHwOiTeQZNsIXfcCi0=;
	h=To:Subject:From:Message-Id:Date; b=MzcIDaJtbZ+DcxdF3YIQni3e70cwI53b44YmuYW/2uq+u/hwuwuD935d+rt8OBzE/Ii+1fJwcLYvO42t/IAIAZYHDuKzDkqro9/xoUACKOj7dtUrM5vHqEOUlxJmkEFrJOGmP3QxKROl3AZruVB2yML7nbsRDyF5qBbyvXjDkkk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D8B/Chhw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D8B/Chhw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD98FC19425
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 05:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787895033;
	bh=nP8jytFXle/1b+Dr7U581bAa7mHwOiTeQZNsIXfcCi0=;
	h=To:Subject:From:Date:From;
	b=D8B/ChhwqLMymM/89/abuXMnnZk5kA1vjDl16IpZ6SOVhZvhh7LlQ2wJqhVH86s8P
	 xIuepmtBd3aj7gmnLWx6B9cdR++Faqc8jyk37OjcyV2bbgmi42n/GcAdHsoGVKi/eu
	 v4w/AG/O1tdISU+vbiZSeVm6u7fgfkARoIMTkzPYIsJB9KhwzcVDD0AXL9iuevgusS
	 9keKtr8je7MV3ZPadyFiJxdrmBkVlYZ6Bl1cwCdYtNGwR3KxOYCLWvzHw2fU0nCYAD
	 rbP5WlwS8o7/hxR8/eP14AqHrmww7WAHkvWXlNxDPEKgNKO+6JVszFc5TFJNdAQQ1f
	 KtgCccnI5rGRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA244C61DBD
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 05:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178789503368.8476.227630855423497347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd5f31084df1a565eaede4628fdeef5f4fd09d9208ea28bcdd804f63bdbae035
Date: Fri, 28 Aug 2026 05:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787895033
