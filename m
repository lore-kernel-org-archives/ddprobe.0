Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FF48133987
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744726794; cv=none; b=NEr7i837AIm3qU6TPhcPl/cyfzIbY3tsewLCT7m+KD9xoGBFrAa6A4/cZAZb29vh2hWnCDkkN69rNYlN4oVvQ6Xy3ia3kXTD0mkkxaE5R2ObQIrsVGqeaJolotexH3IDksppIWTurrKjE/1pnLFok4CfnuywbtdcU1sGWDIESR0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744726794; c=relaxed/simple;
	bh=vLh2LYYLad4J8KT18fS3wNSqqd565eos8lAo0aLMdyg=;
	h=To:Subject:From:Message-Id:Date; b=u+YqiuNZdlouP8zyQOc2FbCcEoVghVLo5McHRGig+lwSc5rQfL4hSSJn1kZ4N+Pa2/ynRnHzLAxpb3OzpRQa7ZbxHIYoSRT+riytbJ/4uINwaCdyHq3ZLTDJJ1xQRKs5d+4pEHXp/PGy1bYnY2MGC2dYeC0NNNsqJHltOM2Sup0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u1NpB9Io; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u1NpB9Io"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8671C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744726793;
	bh=vLh2LYYLad4J8KT18fS3wNSqqd565eos8lAo0aLMdyg=;
	h=To:Subject:From:Date:From;
	b=u1NpB9Iotn1Z+5hX7cjgmqQemk7ZACsjvmELGpysRVAQW8BAZX6OqiXrsq5N5LjxM
	 J8xDnaDyRqyhmT3ZpS6dWBCCiXUsqTcEeUq4IfM6WHbwcoGFBu6Vo10AS3EqPHK7Qg
	 S+bB6vg+b7qARmBt9TerN95ZliEhIqXXu85emevKw9NIvCMYevoxXA7RpMBfJVqGtQ
	 qCDJ0MuKA3q7tS9lelLii/RkWCpHEnUVY67yPjl4qV+gp4oPpuW9Hm6XQiZpf7V5ul
	 4opc6nQE7dBfXmWlJFeDC/0lsuWJ/lxVBWUSXS4JxPLBPL8sw1typJOlyS9v2vB/Q7
	 TwKGltAoYoPsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 951DAC369B5
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174472679360.18263.10394289267448348723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47c8a770c8f74e32fc2dfe31e8bbee0e9dc8c1d1f8bac6ab9e3cd9f61447a570
Date: Tue, 15 Apr 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744726793
