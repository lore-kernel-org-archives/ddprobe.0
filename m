Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18301215F56
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751955594; cv=none; b=rjpmlhuEBRQeoniQ0OO3zFedtrP8gNCf7Snx7yQvVHTQSoLnB3ty+bNh2yB6TP1CVHPjysGcbNWr0iWsjNRIk4rnZlBc7NhW35heeUcIbIPtghaEp0hAoy9puOfxAp99boZ1LIlp5ez/N64QfVb0KcXrqfAQJOOQHuJzBuxWFGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751955594; c=relaxed/simple;
	bh=iWoW+XTatbK8aZbJzCqllvtIsYPziRTI4t3OzrTWPwA=;
	h=To:Subject:From:Message-Id:Date; b=H05sV06BxRp5VlCX14thW7rGiYPxTSFI7jBacuvqc0lVcd36md6hoDFPbxcFbPt6IBuKkQ3NMCCX06fIf4SHGI2Da4TvZqirFBMDhkDN+vQ5SaCSxyY5YddSfflupyz4hGhOG/mzV+kZZdqIt4HRy76rjLyw0Sg9B1ZT1X9KLKY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M1V80181; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M1V80181"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1044C4CEEF
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751955593;
	bh=iWoW+XTatbK8aZbJzCqllvtIsYPziRTI4t3OzrTWPwA=;
	h=To:Subject:From:Date:From;
	b=M1V80181R2uweRsOXHwV4P96LrVOatao4ofKTHpS2l7InavJEkvHqbu0Hy2wZCO5t
	 yU2uvMwhHifN6Ow7ymhdrh69ECZLNySRSPbPImqTbeL8BtyEaRE951oJuL3T85cmZ4
	 XTSYbgUXUy7cIuxtqDMGHDa0GBOjwdHtaofnoiTY+EUVBy5khxCqctwXiGXmp6tShc
	 7GDGulz51v7Z9f8aANn91TgG99ZNewjDcOkM0bAnvFRmSGI8eo8P3qWR83BRFcXnR/
	 PahajqKRQuMFDfZlAN6SeiNrusDLlViZrCvkTjVbN4qJ+Te3A4Zu72DAlbGcNxxhKj
	 068NNviWAaNXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8B3C8303C
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175195559357.12736.17498752835766382826.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09c6124ffc449fbcf240ebf6c6a335141270e7cc3f163aa0bd9b7e2bccf97921
Date: Tue, 08 Jul 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751955593
