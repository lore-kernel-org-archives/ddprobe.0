Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 279B620C463
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745999994; cv=none; b=VgVIzxxx9JGFwAEjkUGOHulOmT4SsaplRexmbjxdkQvs28Ih2uYWiE909tjh7W2Mnr5GuyqpTegYo+31Dk/2TKI1MfcLkOUC4WPoq8PD7PuklyulHgTWPSRyfJJfrwydGcNVVWc8Kqed1agvm0GRq9XVFZXkODa1fkqlKDF090M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745999994; c=relaxed/simple;
	bh=CV8Hx2K6smcv+9Bhwx5gDcmBu2+KqFIQZiizmmGo+Iw=;
	h=To:Subject:From:Message-Id:Date; b=iXweJnISqyPTZ0TAI7MfrPhxoXo97dqz4/BmsXqUB0sJKSdTjwcKmxbU1rhWG+ecN7A0BPJQFcIVSemsHQ/VI4RvLutyJC//fR+g7R+3K0tj418I+v3CcYmwXvajtZCh9OtEC15utq2NBuc4UrPUC7CXMVeTl9nUv9GTq/kkcII=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NFI0hQYh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NFI0hQYh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0289C4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745999993;
	bh=CV8Hx2K6smcv+9Bhwx5gDcmBu2+KqFIQZiizmmGo+Iw=;
	h=To:Subject:From:Date:From;
	b=NFI0hQYhdMMWwMv74uktZpNNvzOzc87mjYzxpt4WXP26Twe9J0GUK4jpg522UUw9n
	 G+RvtzYNG+SHtdxY282AVCCUV1evKDlWbQKF7Wy3vTM6xoi9xNIzMjcbplAKzDYjY6
	 e/jl63I2jW2KzmAPovLV0nHelUFkMQedwH5pw9EQJDbqVX+93/P1x8npwe/0wU2qsL
	 6y7SXlO23WdIPQkhJpZQGg/8iLr7GECLWDbdD3TZFEBwo9zHhDNw5ACsQCH5zlV9YC
	 88ZOgHlLjkXUngduhHrlFp4MR0TBnlnwuz+R2sRgQ2/v+TtWuLVeYezpyYtiMFzZYq
	 wNIlF0bFdGAOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDD5C369D9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174599999357.446.7872856745250711753.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a832fd17491a8ed5805adf1bf780d4abcb94876e3c28e2cb8a5f01b2ae0b774
Date: Wed, 30 Apr 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745999993
