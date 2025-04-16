Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BFCE2135C7
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744820995; cv=none; b=ICq9Cv9v+otwk/9UMqG318Sn7XOJXyhW9EoFB14fBj0G5p9simtcOz8mZE5rq1j6VgZTjReluf1ns03ZNeXS5Y6DyuOUVfjMnkfl7Jbjqn4wWbzcfKLclz/nw9aux0+ngubx6NiiTD9dmTQg7V9J9sGHGNVdRyH3pIdYq9knLcQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744820995; c=relaxed/simple;
	bh=ajVS7AdSHc1f67h1sCed46gJhsyD9oobYhvrWSvIgs4=;
	h=To:Subject:From:Message-Id:Date; b=oz+b/2hgid/zUxE5lhb4iF7I7MynA3NaIOdewXRaaPLBDrq3lwnRG4+DPtrSUlg5HL9dFmVits/hnmNaAeCz8UvmIPwhKdBQthGJDGj7pDdTFVDnD2cWwvtkvyGsU9pskAKVy5b3CaOxKol8yAdwMz49oiDR19ZM8tExoFI9CTs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JvRem92G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JvRem92G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3505C4CEEC
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744820993;
	bh=ajVS7AdSHc1f67h1sCed46gJhsyD9oobYhvrWSvIgs4=;
	h=To:Subject:From:Date:From;
	b=JvRem92GG9zw/4ljBmUQ0WdCzD+kLVGYeQh1Z3+ITWCQuCAdoh7PBXAhe3/6m8B7O
	 o8mdWzeDGsbHOEi1jBFPmguRiUMOtF4XFjRyFRxwd3NOpFxKXLQS0HxScTkF3q6ScL
	 sEVjfThgpeoYhfAqWp2gXLgrsjUED++qS04qmY6EX+K1YV7M9Mq22mPNieoQI9jkSX
	 ZmhA0eUXmb/kSEGq0dK3T5CQ4l8WgNS0JRXRaHrVNDI4NtQN4fHlHj0BhfAUk7t1Y+
	 DuyCdm63+iA6jeD7CoRvSj81RQn36HXFqdfS9rfmdTrUb6ojtfebAwosFFjhPRMsdp
	 SCrCmRE/whlkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93BF7C369BA
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174482099358.22732.12912360751825871315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1455ff109d372b08648e4428c2e014b716230e5bcebbb1864f4a094a5161c1ed
Date: Wed, 16 Apr 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744820993
