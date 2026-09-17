Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E0E040F726
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 22:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789683034; cv=none; b=PrRr3k4mcx6JQRuWIsZ+METtCXMeOB781pm+WhyYSU4MQRhXkZ0GVJpeoeBzPQVoantEdD2ybUVgbZLksirAP/nCzztByG9NGTmCawkGm3IKDe4pyVPMlRtwjNyIjWDX7a9/0905DUNeKpWAueBcZzOLaMe2FUjndzSNjkzTGqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789683034; c=relaxed/simple;
	bh=kg+UqlWkMmiX5949k3wc412OD7g8emNadhjloqcrB3g=;
	h=To:Subject:From:Message-Id:Date; b=HbdSAwQVIGeFdpsrLJ0hYfY+cEhUrvVZghbKFsxfXukJt/qETYrbqA/BU1yYhwJkJhKXvGuW9NUDd6HRH7edzNoZS/4Fa4+rrUn6Eotd81l+7Hr/M8gAL/x3G3AOaH79yHZ+WBIOGEvTd7Ge9djKe2Tp/9mqmmZbKQT+JBm9ppE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j78dUrXp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j78dUrXp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7A08C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 22:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789683033;
	bh=kg+UqlWkMmiX5949k3wc412OD7g8emNadhjloqcrB3g=;
	h=To:Subject:From:Date:From;
	b=j78dUrXpj2AC8DqGhRrEnv0DlpXu6+ZY2evhX8LyS2p2zYI0GnnrlAi8jQcAH64At
	 wAOvW3EOVPnrvZhqUBnaFRGUShb2qpHZ6SYBkW6kYvXMQXcWF3S+NY/z0FQHHaBT3r
	 JrrH0tLvEABA4ew48dmxG5th8J6/YBQ23BB1RCi/gBR9n0mb1VSLN5JwVa5KinuCL1
	 ZQs0tLUt+9pSaU9tAxOdQ4As3hobYp9J92RmRWtans0PXhWYcDCI6UyPZSbUI31pS/
	 SZe7cuWpxQKvkLJ7dottAwHuoUJRciCR/a9xDTQ5htQgGhW92XHU4SbOlEFbYXQyQO
	 ida4ka//6B2VQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B27E4C982D0
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 22:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178968303372.28068.18397596413481481848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67ac21f7aa24375015fce534150d6e6c8dddd02d0184dbfddc2c4b4a9895d07d
Date: Thu, 17 Sep 2026 22:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789683033
