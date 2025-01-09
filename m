Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FE0918787A
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 16:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736441754; cv=none; b=Y0svhvrvrA2KdY3fTbV0bBowQIyi26yxgH7KGobo5hRSr8UqJC9QOOdXt5X8PE7SirxtJjVoimW8faQxeqC/z8w/UlvgE5AneHvkShKJJ56VAcv+cghPJjq4doRrfOe7Bh9aTNBDsAmc5ENuVLty+Iu/4ljZLXUw+t+V782Y5ck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736441754; c=relaxed/simple;
	bh=8aPxcEg2bbNaVSpWyDyWh+LC+SM9JS5SqJJfBTT9gA0=;
	h=To:Subject:From:Message-Id:Date; b=AawQhUBXXMkQtCqFP6xrsU1KGhbKj+QoaQkVfLuMMTsG24q5TDg+6+IEw/3vQB15upEvvqrCLp1u6ciSeEhXSXU+Ax6NnSMG9zlK3h05AWCSjuDDqwDyJXJ/J9y7x1/XqD+cGh5+WvM8dR5n86QsOyAlNf9AE4hLAs9YoPuzblI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BbYb2BtS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BbYb2BtS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C96C4CED2
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 16:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736441753;
	bh=8aPxcEg2bbNaVSpWyDyWh+LC+SM9JS5SqJJfBTT9gA0=;
	h=To:Subject:From:Date:From;
	b=BbYb2BtSdHhZjPNCAcoP+6UflFkNsiMSqPiocaW31Xx5Cd90ZZR3iyzDsdcF4+F37
	 gTv/fuVU8GehsnrGsWEu7VS+SUQdllginlGVYqJ1DO0pzjMF5XhU2KFlGrfYnNK6B8
	 /WXTZgr8vgIULai7mMvAb8v+tdhaIbcqnDZCXZcoqx8CPzXLNCw0St4eZP+SfLWDoI
	 NGslp+NbrKi1hksBB98w/uwQ5VTYXzANxe8k6egdvWQgrdK/xLd4MRbpigFktF5y2z
	 iVWyL/TTtp0iqryKiikeVWTeMRpR+KoEOrQDW07Y5Xra6HPNRHxiqgM+kjvdbcVEOz
	 Urieb3t66gqBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905C2E77197
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 16:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173644175358.28347.6580234306666005928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e20b190706a7535473041fe56260f0ca44ad49d41be725b6b75bc9e4fe9a6ce
Date: Thu, 09 Jan 2025 16:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736441753
