Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DB0B23D281
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761359394; cv=none; b=LqCQqhBZ59V+M9UbMVoW0Evl3otaDmIx5zeHJI12tUFw1E98gYIH9nPo6/OiRUatcibGGK8iqGqH19Mbyedw8bMQjFefCW15fZ94tfSkTCxKk9A3D0K6Yf4V8FnGbAN6MqHo3RRtEhCMOnn9CsAZ/5jDAUzAnSXeDqUPUVrAMOw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761359394; c=relaxed/simple;
	bh=zXn01X4/mPeArO/awjJuxAQbPuamYUbmk4l4gt4TUkY=;
	h=To:Subject:From:Message-Id:Date; b=fARn7cf279tbrbrI7tmmRqaQQGZfDq4lxtL/yazJJsIR6Ko1qdzF90Q4MTO/Qqdxqjqfua2zGOF4vucIneDyfOjD+jXdw/S862HxODCKUU2JK0zXUbrTeXl4NCOfyPIW6GeaaI8y55vbr4pTgFfnFHFrWLMlMY4p0SrS35mP7Hw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tfKVjhLZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tfKVjhLZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D9DC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761359393;
	bh=zXn01X4/mPeArO/awjJuxAQbPuamYUbmk4l4gt4TUkY=;
	h=To:Subject:From:Date:From;
	b=tfKVjhLZ7UlKmVc1r8D5VkXTxXJJ25t8KwtDGINh/1q/r1xG6GcRcbljMI1px2sqt
	 ywxXi6DvnqhAj1RU2M72MP8cDhbAsOTh3T3/jd/ajN6t+A9P1/wZSMrXnKDDCMrV04
	 djzSQegMczKs/rNeyCgafJ4/lHKl9Y995reUrUCeqgMTsAHcxTCyBJt5elOX7VPQ6B
	 AI17XbgQJFq8GbUbRzgQ12l8wr7jniKF113kK1PzuFg9P3hKQwqB1lQaBCWSMo9cTi
	 aa9DOu2m1BMq5mgN6bUt27n6ax7oOvLtFpZrmuM/F5Mz6IKc2zTToRUMD5fAP3GGAm
	 TexPG+wQ6zCDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92BE1CCD1BF
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176135939358.11021.8566623294998454793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccdc8f3a0ef2ef04ec3cd0a804d8390bcabc8a8a9dbeeacd94e5833a38b85ee0
Date: Sat, 25 Oct 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761359393
