Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C9CA4C85
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742567394; cv=none; b=batG37+Ltmyvzbz5+NfpcfdLr62OPbkZmOY9frM8vw5cQ+LNpp+WE+Q2kXjZiQQOQy5s7NG7uqoykZLrVzeBRLncMFfuQFET3GrrbOLnxiWN4IBC8HJIKfFmyfhCY1aCCIUVQqO6scM11tLRE+PgI+k4YPE3kop9w1tP/c4t4PE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742567394; c=relaxed/simple;
	bh=zjBkpKQaTIYqWalyUYnQKZtppVpZ6fPD42unUT6kFCM=;
	h=To:Subject:From:Message-Id:Date; b=PW37qYFzdq6HPj0l4rlkAgzqxcm4W/fCaL0Q/qpNHYXEf0n1/8G6ipoj1uEQmL69lJLFAHIRGcKIFV9BpRqrMX8O8E6YZlTEcdt+Du4cR/8b+rn4tpNcHM6jn8tpjtTZJMeXI6RGIqj2zqJ2TVXFYNBJCMVslhcOfRpE7flI5yg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RExfXECn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RExfXECn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDB39C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742567393;
	bh=zjBkpKQaTIYqWalyUYnQKZtppVpZ6fPD42unUT6kFCM=;
	h=To:Subject:From:Date:From;
	b=RExfXECnMYlRmY0dPfw755VmRHwbTPS0yKFATlnOtONPbZMMYSvC41a9W1Qnsv9kZ
	 XRQAh6CR7nfPJdIrn2eqlUFOfVLFgJ53gvsLN2am/KMTXCoAMhJwaQX+mg0UmlEujD
	 GtFda3EiSPjOvuxYUB8mrc3188OxiERN3dqIkKkQ+zI2kHVdyIS7zOqBbLcmuYhqyy
	 ckYivQx4qPAUIAY0V51lvTmsisw/04RN4Hcw5yOfTK0Hgr+KwxeWSrzsezLJgwPC4L
	 4iiCEVoQ7198dBmmQIY7FzKDYsnV/wz56xVZv/KYEvZ6Z6YB3gZ703u5yjsNBl2ebf
	 zNOc6LBPfokPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA569C36002
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174256739367.18505.14324722951303451169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3984a8b39e787b286a02fe0491132608148c14a4dba4f8876bc00cf359f9a93
Date: Fri, 21 Mar 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742567393
