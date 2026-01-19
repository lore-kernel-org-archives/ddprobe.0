Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 055BE242D97
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 17:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768842234; cv=none; b=D95HNfGZOSgBT5/42JaJBpI4NTZKGmbamwYOrI3LuF/RDuHKiuS4H5q39V/kOAd1gEuvQ0NHIPlMsths8CnnJJatlvzzGpcYX4R8tXAPt5rhNTtlH/bahN9yBWzTZrT9Zf1cYFl5KIMulU+ZFQDGvoOBxSe2l09pEd/LBxEAccw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768842234; c=relaxed/simple;
	bh=YbeZqlbJL5zxtcoL+hIElA3qPnuQpJs0jBZgypmLuYI=;
	h=To:Subject:From:Message-Id:Date; b=BAyyETuZXgiiYrNElKLQQude3PesPS/Q6vLXY/qryJqR/B5RUi14JGOiQ4/q4HgoLXYM9/yfEc8itGJIztK88jD2rjGFLTjmYkZ6iwZP07kjO529FdvR6lsGMCn19CYInRshs8ru38RfammCJ+WkOEutTrW95GJdUwfSB4QavZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Iu0lUSHp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Iu0lUSHp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DD30C116C6
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 17:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768842233;
	bh=YbeZqlbJL5zxtcoL+hIElA3qPnuQpJs0jBZgypmLuYI=;
	h=To:Subject:From:Date:From;
	b=Iu0lUSHp0MbzdORRpksDcu4XoQoWH92rQDHa00prIVxUf6GEDWX7VRAhqI0mFTa+w
	 fnPckafDkbmucdSZldYfKZ+EHZjLKkF2Zj9A8QudGtJJwh38hKKnRz3gJIHlJUp6Wu
	 EwA5Q3MpNv5yl7rZkTokoPHCJZCZFc+L1HvnrPd3mu1syuajmM9dvT1Sru8FqyO5fr
	 BjjgB57vVGi2C9mgLl03F3rIxM5N7FK2YUv3guXKMsxVAYuWVDAUYqO319dsF+vv6K
	 VJM8nJt5ThgsoGsmqhhV+XzE2Zo5a/DvgEo2oZ+72HcQVhwpvIXtBtz/2R38wfST3/
	 DgsjkxEWUIoog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFFED29C43
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 17:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176884223358.30534.6445101037182026223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6343fb04c5c463b7a6010511cd53318eb84327d1151aeb477030ce6404e60925
Date: Mon, 19 Jan 2026 17:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768842233
