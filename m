Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 279BD1A08AF
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 01:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772067894; cv=none; b=cvnLLY1YoYCH18nEYuv+Md6E0Y8ec6DqINiTqIM2zUt0evpp+NVdkomhXlVYX7z5iMbVAZACs0fcCEIyxmKEDSr/mBhQvn78BuDu8j9DNL+bGtrAePb/io7BtCZQX9+39OIF661SC9GGdWfH2i1h8gj9dfnOkZPG4/miRnUZMUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772067894; c=relaxed/simple;
	bh=mTOOgkuO1tDBAwRrqperbrxCMA/XxDAYQ/d6AYebBWo=;
	h=To:Subject:From:Message-Id:Date; b=eEJJK/3a5awbEE4NSLaqAowOnFxFWFcn66ziQ1o+hHnZG4Cq8d8o0lGiY3W/eXl3SEx9/thhIz9ZyqwNoqzzR6ZwaSzHFD5YSWQ/1bGzlEp1XzIe18lm6ZLf5UG0Vv5tjJ3aRF8P8g8aPXkLe+DsnfkaHHg1bTx0gcpLHjF3saQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZrZiCnR6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZrZiCnR6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF1BFC116D0
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 01:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772067893;
	bh=mTOOgkuO1tDBAwRrqperbrxCMA/XxDAYQ/d6AYebBWo=;
	h=To:Subject:From:Date:From;
	b=ZrZiCnR6XiQGA6WWpwSWQLDw05pptVzixUuJXw8GsdqqoYdD2uxKyVEONSN/+dlDQ
	 IO/NxJLVooFviK5pIM2GQxnfNJIRUhYhpajOQxtpIBfEJ4ARmm1grae9/bd1uBFvtB
	 oLGZT7qdhjFTAyfK9Sw7Dw1WS7As1a5Pzm8pvJokYSp9e1GvfSo/XISNWBbSTr8MMh
	 K/IjKr2lZc89CeDqzG1rPIBIY7lfo0ftcBCv55iUwcb6K05fc2KIhcXnqdabcfgFHE
	 61GeaIhRePtSsF0GAjlpaudKtmi8avtSDxuE6IABvK6KY4f0AhiUxWBlsLG8RRyHk6
	 XAFQlgVyfIKhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C260FD45FE
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 01:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177206789362.5235.2818022580732303480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bc6c6576128c8c4b7e32fc497fc9b02da556c12c5ec459e169922347ed59cfc
Date: Thu, 26 Feb 2026 01:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772067893
