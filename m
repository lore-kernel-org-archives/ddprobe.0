Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2AE236CDE2
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 06:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774073093; cv=none; b=UxZHCM67mc5vEPGr8oDo2Y6pKxpMD8cA+/HwdpqTZQJZShK1voJE5Z4l15vSFWSwzKnHMnaDD1Qg6u9K4rJnWiXe8BcqF73xI5DNjbz9KLZL//VeG/jvAkR5bGHNU1I8EFrXJctWiEvL4twgo1awHRf9KIglq9DeGJWn8mRSecs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774073093; c=relaxed/simple;
	bh=AC168VYHljfLCKksk6hvTy01I0FyZUacgfITJePLUoM=;
	h=To:Subject:From:Message-Id:Date; b=DpG77ZnhbI93gbABXf1qIrIjA83W1zk9RSCwHvnXZMriH1RT4srPtbdkSxozDJyF6kXWDGkcvzHVtq9hmsTd1QYLZEnj85z0Ef5LC8rzMF09T9lrmByuYweYQ3OQHPelQrI4HWQyuZSDzcYCZrGij8w4Us44r7hEoeRqp1YzhZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jHropVye; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jHropVye"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A25A9C19421
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 06:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774073093;
	bh=AC168VYHljfLCKksk6hvTy01I0FyZUacgfITJePLUoM=;
	h=To:Subject:From:Date:From;
	b=jHropVyef3uLnnEmocQZrY9GCE3fNrO/7m8MmTB3PdEAz/DVmJNJUjhXybxv2DOOx
	 HqJD2/rCS4PK4UHTN6LJnWtYsD2MkIN0GWehhhSXlQ5RUEZ/YcFt8no4WkmKTCvcog
	 cuA0uUNOgo3mWL77gZQb4d15cnAEjmJiMI0gPJPby8x8YaKPXvf3xBKXcOEIjls/1x
	 SQleYdmGYCHYczIs453M50rM1Z3IWNbCxxjbwmvLNWOV+L8k8i0f06scSOKHZ9/oR+
	 7/q7DqW0ZksDMO2Bdgy/616sd6SvdMgVHWHqRrmrabfqvqa7+D15UsTRoqigPw0aeU
	 WdJcq393zGq0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9481C1093170
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 06:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177407309357.8699.2185937483731356818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdd9283caf0613974942b058d1c5f9ab121cebad498cec6a4ee29dee9ec5d70a
Date: Sat, 21 Mar 2026 06:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774073093
