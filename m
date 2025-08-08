Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 439FD2C181
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754690394; cv=none; b=cn0VXZQuPOqAJq1dp3L2bLkib85CLRV1M7OEhy7BIiBpqwzYEMLhe4lxYAKGVwtfFTs0x/G7tUJ1qOQyKog/7y8xtV7kWn5As6SSwkLpYmwOIwSO65w8zi3cLVh6LW6D7PwpSdhCRiC1sVNUKVabIqtN3mOk3n8Khfeg9Zzu6tY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754690394; c=relaxed/simple;
	bh=5R6htug35INjgrkungR5b15M8/sn3rYHybXuDcCZARo=;
	h=To:Subject:From:Message-Id:Date; b=I5pEDzZlbKG9AQnvf8Q/LQWPtSPyFXHvTi51KuAolgv2wTKDRFf4gSQzTbUxVZ1HPI5s7WJ1c4eNw7M7/CRA6csWOvr1rJxebE2ckFwDdq+O96VI4IVvrV12V6S8gQu/xVktkPzT1s2LEbhZom7jgCjnZF1UblQmHlcff603x0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uC2Zg4L/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uC2Zg4L/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A77CBC4CEED
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754690393;
	bh=5R6htug35INjgrkungR5b15M8/sn3rYHybXuDcCZARo=;
	h=To:Subject:From:Date:From;
	b=uC2Zg4L/sR5MpT/9Ut66AhbrVXtU/xj/cDcgQSVSttkJn0gAPI3gikv0GXqlw+KW/
	 jn8H64ni26+7nriwdWD7UenuJG+fAl2nSMUoY9B8u2GGFhdHTo5rwMqn68s1FDZm+N
	 Q/9FS5LT7tKSRSlfKNfLBEinARZ1SLiSzZJGcD163a3DS1leDSgaJbXH5pa3BS4DR4
	 0WE1doqFjCxJLTUS3oNm3yz7x18MzWIZ5YTvzPizfKBZH0dUucUBomTym6F9mZ/v8Y
	 haVxIV66cZl0zlhKSS9lfn9qkAjHuSlKrj82OzvaKYwu5e4xRkU0e15Qh1i2qfoS8W
	 eGg/evm/edMFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94CE6C87FDA
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175469039357.21502.1838652520814754282.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66e5227828123756eeda7e4c79e4ab76625cacc17779f48d0fb560a98d2dd5e7
Date: Fri, 08 Aug 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754690393
