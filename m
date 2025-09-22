Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7CECA95E
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758574793; cv=none; b=J4RxKp1gyU0TJWkA0sXgGUtuX+gah0tx286pLx5n4NJ0UCUOpiy2tZbi3Im7Fh86Z6uDHeGbb7BuBAKJ9YkDOME0Q5xC52dR9jBWyQFwRY3oFSzyZOQRC5z7+Q1R6SfGi7WhdfR/OK9tqtR+Lad1y8L3G8HaXJksmgZydGfHwCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758574793; c=relaxed/simple;
	bh=bZXVJx3eccnvJ/6Vaiyhtoi3aZTlfJi+ERCFu4QTRfE=;
	h=To:Subject:From:Message-Id:Date; b=Fxvi/1Ze7OZNchiRAAIwXgZvdyTYIu+O13Pflrs2dg03N7Bde2Uv/B2i8pq2AMlWB2VagLxCyo7D9mftwU5SyduDdccd0FqL5V4UOo4JwtPShqr77o2hsqYMUhGNmmsjW1DRmNFFD093kCYFlKF22oVjBmg7zDQj7GhI2JDUdkE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XUECe9Ke; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XUECe9Ke"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EB0BC4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758574793;
	bh=bZXVJx3eccnvJ/6Vaiyhtoi3aZTlfJi+ERCFu4QTRfE=;
	h=To:Subject:From:Date:From;
	b=XUECe9Ke77pSsInwm4/Bawg0ctqAcyfr6sIV1Dw1zbGNT/2kIoU9EO4o0KDeNW8jC
	 IMA6udHZQIDSTXaQlne+TCC4xqwFq7+YHsnxzTFqcXtMDJn3aqglAhyB0NZgKuek+8
	 ezjPWPqznFG8wkTIsBayZV92h4Lyj9Ml1WfBdn5OEEbPKdluuoHJjxKuFM+wwIsUpp
	 me6TeVtZZuWwYnkCE6/lH6913UOk1jntJZfWut5rs4LnK5cXI/gcwDW8/kl2qczsCo
	 eUiVoEF9cz8U7CoNnMUEhUc5BQsXzaVUgOBO4d7/RaD8hy/V9ML6HS9UmI963rgM8Z
	 dkstc2HLWfc4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F99ACA100F
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175857479357.30108.988981481872189513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b139c79d0475437dd9da231ab5ba03fbd53fe602be0f843fdb2f846f36d9f6d
Date: Mon, 22 Sep 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758574793
