Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5961C5D8F0
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 20:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723063554; cv=none; b=mpHmCZQpO7UqwHs2HnR0BIR1t7kkd8BwyIk3YBqJ+Wn/LZ0dvIkLKRN/SiJshsjrjb7YGLSGF408EDLLrIXmn0SGhtSAH8kOIHYqOo7AUT8OEw/9mbAFvjrbhNusK8Byha7cnMlIHrOJ2EjQn1dVTKMzavkLhzK9r4+vnTwffP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723063554; c=relaxed/simple;
	bh=AQCxAQdCbdHcm/mU/h+T7H8IuNoreQjRdjvk5emmP4Y=;
	h=To:Subject:From:Message-Id:Date; b=GXAEwEkVBkjHNyJPu/lT2Cnmr5DskXRjnRcJNII7Ehoc0mAOzMRwQsyDSiNydIafv1SODltxYT5rBzyGaTcXHWs1GMP+9lc5wwH6vk7Wn31cQ17KdGnx1g3ZCbK8ijc5MYiJVzrjUDi/d7qq6QCKQeITTRObDQ3qCxWik620W8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PgRAL18A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PgRAL18A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8465C32781
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 20:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723063553;
	bh=AQCxAQdCbdHcm/mU/h+T7H8IuNoreQjRdjvk5emmP4Y=;
	h=To:Subject:From:Date:From;
	b=PgRAL18AG0YjtxyVdnzEs72g0Bea9xiCdCHqMGABupvp0PLPjPdlg9Axb+hdFBnLM
	 OlkbobYPwzC0pT2ygkBr9A1sCwY2VRyK05vVKr6r9s8j+GPJOETKGvFlh9mota+kZq
	 x5jd9EKApSVc3e854Am2m74/+PfV2CW88Ui7rBR7H0kmfz0tMXfrp0GBB2hrsOA9Bq
	 xxJWaBYY/UVtbs3hS1rbCEdAC62ZftJx1mmITzoTVZBAWiU/xz17h5Y7nSgmYX7Th+
	 P9pEKSavh/9PPeU8rX/zgWNviCwPrRTStwapy1JneYuuGewEm6PvDXWT19sbDchrPa
	 R8TIzeZD7LvgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9348BC3DA7F
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 20:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172306355359.27823.14326736000540367773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88b6a439e3a99504dc0baab668b6c740d1863bdf46fb2b7b6c4577c51c69c883
Date: Wed, 07 Aug 2024 20:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723063553
