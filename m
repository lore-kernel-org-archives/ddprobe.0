Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 458F213AD38
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 22:15:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721168123; cv=none; b=BTsxg+2lilIcVh3vw+CvvRypYBx23FUib7JVYPq9CvS4EcqjQLgjhZZMMK2TDu9woryICxkfBhfVMXAhB+g7wT+xXMnZ0xdg//xXhch1+ZkaGQYglKZLg29ay2WfAUSMnYYdAPW2bmKPc5cs0V4OvSb34gGBrWGxNAtnzV2+A5E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721168123; c=relaxed/simple;
	bh=HXndFnEpDNAKDbMO46edWR2tV7tM7IVO1ayD8grRqHE=;
	h=To:Subject:From:Message-Id:Date; b=PzGy3KUsLcixOljTKuUTfdt8bvKluIlj/zNnIqPBE0k2OFvrXtyVKfaeCDtTlYUbgXLucQAZZ9p81NfFEbKicQNpMo8wkPya2F5kGYuDMqeSqBbqjmEwS/vL46LtGM1zS5ZlK4s2Q5c3/AhXUuH/9dAFkJDy5TBZYmPqEkJH/U4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kPOnkK8a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kPOnkK8a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1593C116B1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 22:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721168122;
	bh=HXndFnEpDNAKDbMO46edWR2tV7tM7IVO1ayD8grRqHE=;
	h=To:Subject:From:Date:From;
	b=kPOnkK8acvY6XAdnzWl0PlagYXtjUyC4D6gHuASHPSrRBYutQj0y5mG7NZ37PZ5vB
	 GicPeX43W+hYgUfcKITTPBncTy6gaxYZ2c7gQPMGn+DTwQt7d8O3ScvVQpyP/f3G8h
	 XTCbALZ7bgs5jo5Pf8+q5cgOJXzUuz6t2/hPTxa90jOg33eHdr5fkvf3FqEsc+SXx7
	 cymAlK+5ipFb24YLd69P9aUnEUJc5XDZOxO62kKZdkk5hCtiOBjHcU/bVSnrxbT33R
	 +3kEd8Yo8GFc7Oi1/nunqauS1otcBCLMlrGoDH79miE4atXvmgDfqVMFqC6UD2/1m/
	 XLEE8tqb4TJ0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC888C3DA59
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 22:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172116812276.6295.1948699669886449011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56145baebfa4cb23edc3d2a3d209d4346ad206988567bb924be3e4e18787bd74
Date: Tue, 16 Jul 2024 22:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721168122
