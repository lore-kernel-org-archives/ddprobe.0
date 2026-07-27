Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 514B7375ADC
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 19:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785181834; cv=none; b=QfLORihjLg23Oneg/6wd7y/4pM7RqFS0qt7N/3U+7S4yVR1odGhYkwnjUFhJES3r6jsyJg+MiwmsxXhRE+Mv2J03Yx/WvUUDac3/Ur56AfJUsViCRImbcvgJi+DftxncK7ITdvLeC3liTyH3WY8dJOn/nyZyB6wjdkFOTNVSi+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785181834; c=relaxed/simple;
	bh=XxwPwfEG1pRVXtYLyZ/HqaMkSEyeAhS8X+Mz1mdJVbA=;
	h=To:Subject:From:Message-Id:Date; b=PnIsaDpESbPR1sWnQ7E2vTi0ZKHkBrYD/b93vozMHmegYhNv957AVlWxxShXzU0AGYJ1dSBMGpV/0ZS2yyODpHJOpOA1ewHsD9yUmTn0VJRNIGVRL3U+39flaJ54043NU1wLSPOiMY0JjKgTVyZDF1MMaHb7XZnQqTLdoxQevmY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PP25yWo+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PP25yWo+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D069EC2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 19:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785181833;
	bh=XxwPwfEG1pRVXtYLyZ/HqaMkSEyeAhS8X+Mz1mdJVbA=;
	h=To:Subject:From:Date:From;
	b=PP25yWo+oFfhgOP8dVT//9Gp5576HrD2M72Yy94LbsUe06pEyqk7jNGVMrVFHZAz3
	 sKjwevOnaMyGQB9YQgHjs7qCljYtceNP7dn9/Px94uAYYmS+/pflUvcFqe2Eut2Xit
	 uGHxziAvC9pxYd0r951SwvkDmRtu4ooNOan0qLemCyAO4VxcFDRhqtOMunfuB4feMu
	 wfVOMCq7zqHSUZ89vEn9hxdhFz3i+qkwqb75Vce+fOB3NOoax6DzR1fFUSq0U8Tuhu
	 DDKCKKPLy7BfbXc2EnIIGc+/yaXUib55J7YRmVBnl7H09LtFg9pNAX+wqtszypHMpH
	 3AH4FfoH1G+JA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC829C531D0
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 19:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178518183369.902.14295603987994891410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c389d2a6c8b901304f4132b7b7431f05903880a265279faa8faf1745a12386a9
Date: Mon, 27 Jul 2026 19:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785181833
