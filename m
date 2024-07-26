Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FFBEE574
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 02:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721961954; cv=none; b=m3/xRynHxZ1xp8u1UcK1rHjlAMZ5ikjuKe7kJid4O49QsLFBrgT+MV+Uw39FH8WjGFH2grykHj1GTRicHzCpmwjzDTWAJP90gMN2VkMw18EHWoRXZ2H4dwLIkO2ftayfN9tUjx3uWkSExRtUjRzMWUIpHthIbK2et16YOYOSE7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721961954; c=relaxed/simple;
	bh=4Pk1ksJo+BVd9f0aGb2ua6edYyjp4MH/13rT66kVKtA=;
	h=To:Subject:From:Message-Id:Date; b=f9o9VO37aOgBnyrTkTe2izCu+6q6OrUtbxnwmqKyRplzRfgpogFPoQbqYX+tH+8qAmGm62IHly9YJxAo4raBuuIEXbmKqeqcWD1+4lABmNMwk5hw4bxJZ5bfnjRtlJLnmccZs9qbZ2JbcEbUiB3dcO5ms5v+aYfraDspXW6mL0I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U5B55c2d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U5B55c2d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA79DC116B1
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 02:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721961953;
	bh=4Pk1ksJo+BVd9f0aGb2ua6edYyjp4MH/13rT66kVKtA=;
	h=To:Subject:From:Date:From;
	b=U5B55c2dqshi5/tMwF8rzlEbGCf8sfn9IWVZbROZ9gCH45SvcbY0ugxPiLyAy19cO
	 3HmWKli/UWPOW9dkqpOD4cPMWwEmDIYyLOJrDwx/KqDUGxwG9Vm86Rt0vtBjP2CdsM
	 OeqDaNrUW/XNcfkFfCCqLYI/7wOXRGaQDaZPwq6QrCofx0igM/rjZQYqT7+lHfOVqV
	 0zA5Ycy6sgMeMy2xF/nW6T0x0m9l8+w8diOvE77LUf4qYEIFtw12KW0T3w391d7e5+
	 MtdGa25011Qgusxp0Px61W85KbclObhzcYaeZurE06UvGV7SU8oBS0JITF6FZal811
	 NoKC7N/b26Vqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F78AC3DA49
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 02:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172196195357.22745.17185188613246836098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40418ef82cd016e9aa6747a6033d7f4e7e8cbd0f11db7571e62d1b7371552724
Date: Fri, 26 Jul 2024 02:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721961953
