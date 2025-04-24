Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 347551A841C
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745507394; cv=none; b=HD6R5TqLfUhotxKQLjnMrOjOTGlAYcWaMjmQ8MnL81miMEdVVhwrJkRKWLhAFbv13B5lb4KEHacf8g6NHXiDed0FG9dViSgFf2QfCKe79AfCJKIs8lB/aCR28lokzcopWQmcmSSPIR4YxY2GVHqUktHefrv6hit7sZ1jUBNVrzE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745507394; c=relaxed/simple;
	bh=2k1NK635/w9Q3ih/S+JAHYakQK84VrmuAOFay8A8SEQ=;
	h=To:Subject:From:Message-Id:Date; b=tnUg8Y5FDkNqjYtvhc7BuiaHAMTou3iBc0OSQjR2KNklFLfWVydxBIeUqZJXuGRMCFuLOx+MLcSaaF7+ZjK3AGldNnvYvUlHypKABMeUlWT8clFwkKvETPsAD6SY1YHKclPj8cyVi0tZG6DwXiHjTwJzDbMlhxbnX4qxuIwXjq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fmHeevcU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fmHeevcU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D303C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745507393;
	bh=2k1NK635/w9Q3ih/S+JAHYakQK84VrmuAOFay8A8SEQ=;
	h=To:Subject:From:Date:From;
	b=fmHeevcU3AVPeRuEkz2EwTOirJx2adoyyl07E7LiOY8oVOMkJ1g3BxY5S0Nc6gGQ7
	 /vZTuP2HgvbdsnpuUbIaLJ6Dfa1TJZO7mHe6DvPMjxW/XqFS56JGCzXm4wVOqyD84+
	 teayY4AMV1AnW2EN7chwTFQupPsrfqdYc4Y48KLWfezDgETBu1t++2gDys/pKoDt/T
	 kvgiyPXLfItfEUQxWaaR7ZGiHt2TC0yr+v1RxDTnEvQbN8rtvO8rQB3wFutwTHAW2L
	 oqGfI/3WeNNKfoaO9VRMBo8tE+5u12Wxwgg3xnXGH8h5Cj5msVPOX8Gl4PWUZzCMc8
	 k2GrCqDW82j9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E2B9C369AB
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174550739357.26619.7411073877292578623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24269388d7ea19cc67988272ffea9c8bd7bc02d380bef0fe281628ce0999a875
Date: Thu, 24 Apr 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745507393
