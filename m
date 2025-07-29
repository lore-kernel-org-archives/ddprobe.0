Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 193B51D5154
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753802994; cv=none; b=tA5GkQYsQkSkBOM/ZGY3mbHEx/OYtlTwC7Opz8u5PuhmR/9hFJl541JBIqhXuaZZ8UBsDgXbv65+gJMQFwLPm78wQBLoxLdlpKPOXwHd8dDmitAP5wPjtXp/EZSHkveAOf/eQOaLkSN0amWVnngd9exmk24l70bS+Mf/sBdS8hI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753802994; c=relaxed/simple;
	bh=knwIDeULjTB0HbtWHU5m5xbQbQVZa71/sn8Qeh6VG54=;
	h=To:Subject:From:Message-Id:Date; b=s9FleN0ENvvVkuIQRhCaQhsICfTvPugp4dwPJihtmKoWlBJ1FcBYa94w828ZcXORXk7+oC8F2aVaDAPSR8G9RyYEWoP0E5twQqxlyaTwY1hrdiFgxsRppcXwXIXAzqpkBaq+PHKxmaOLVjD1t+FjJCJyhRt/21ttF9hSAR+x34M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=huNvE43w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="huNvE43w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B5FC4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753802993;
	bh=knwIDeULjTB0HbtWHU5m5xbQbQVZa71/sn8Qeh6VG54=;
	h=To:Subject:From:Date:From;
	b=huNvE43wf9JVKHUsrKaacY9wunackyB0J8Yt9HDLwYU1jt7EHM1bfq15RfmlxQ/E5
	 mZm//EAreS0mOAPa/9ulxVqCwqYJET4BytlHX5cdI1ETMnw8rmfuf/lSXKgMsMudBx
	 A9yPEMlKtpqBfjxmPI9XeO2nmYK31XUHJqIVbVBG2UCmvCy29tOXsgIupAcw/rA39W
	 4kzrCAQk87oiEb/v0q2VtHdc+NZOu1hBLMYxOQoell4sqKQBI/hbMCyWlWQZxC5Drt
	 aNhAZUEcM4lPRljf9Ko90UtyusLLxQWFJL6Ivckm3EDoZGoHT1qI0b9+ppt5dwGwAW
	 nrFRHsNC03sIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92601C87FC9
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175380299357.28658.16338609812098178759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbd777651488eeb15794b0cede80d0e83c4dfd86b23cb01208e1046751dd1c85
Date: Tue, 29 Jul 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753802993
