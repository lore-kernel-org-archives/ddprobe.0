Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 234EE241690
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754846394; cv=none; b=P+lb7VgjhLUayzP2x5UDYoJOBrfKiOKV5+iGSi1IvmFcY4GFu5/MKa+O18x1heEQt2OZ55hRzsXrE8+GqW6PUZ/fBHXrJ8HiP6yvJIhy0sPwKsMqncswrE+yZs1GvekGLPHjhpjICZP8drBCRzYNrlvxZjRLt9vDFvfb4n+8KoY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754846394; c=relaxed/simple;
	bh=Nyeont0yMcCQT1PhKobiBtbVOLxlYlJeDUsdkoNkhvY=;
	h=To:Subject:From:Message-Id:Date; b=MWv4zWPZ7Q6Zcap3ljNpOEpYgwW/yqxV+04ETPbyLHGBDM39doaoGLQ6YnaWL7RGhd+MP7/wfjlpnLo4IsueFseoxm71wGocaAoenxnJUYmOAfWItKXHtJHIF4wSQt80L7X2XtKF2eQsLj6iMAdakBN/etwMHogwZ3zmO3umQnA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bBBj8FS0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bBBj8FS0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C38C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754846393;
	bh=Nyeont0yMcCQT1PhKobiBtbVOLxlYlJeDUsdkoNkhvY=;
	h=To:Subject:From:Date:From;
	b=bBBj8FS0IOzWhOMg4Aa3X/T8T1eNv5LEcGyz7773PqMl11gpMKG1S09FdWOf4hRvS
	 n7S0FCZgsG7QMhv4EFtHC8/cfopd7LdVbg1HAKOKovTmqCfQklVA8YqPh2Fmxp5Twk
	 3g6dhp5Melnc2UgU4rL5B34hwzGI9AZOCXhhUTfw888z2YbZsNEGd14tlOEkK7Jsct
	 99lHPenpokLJUaUlmPQ50fVFgJRX5IhQWic6FNoE8yP4mS0BJW0vr3RzphSgF9nuAl
	 6wVipKW5TS7KMgIauKNMv44L4xdxH3SJC87TWl9V4j3/aBW58Ktq0QxxLX4UWcFS72
	 IEkWDQMpKgQuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94180C87FCF
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175484639357.9075.13037413822491306494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae70da2c92be4b981dd1500bc58a0a225bf76a97cc244169ecae4adc2aadcbc7
Date: Sun, 10 Aug 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754846393
