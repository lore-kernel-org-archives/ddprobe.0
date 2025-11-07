Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F11814F70
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762487394; cv=none; b=jwJt+vFntWwdleIhW1lCJf+1gVtuUKzt+qVndZI5r5Jt9j5iNUV4LlFCPeiOrBkd9Lb4V7q+guOczG460C02J9hINly7jO3ZIFH1q1SrvvImXG1/7hY9ACTB2nk1wkWaBWlyQT3x7Q0QXxIsFumtyl7TWMWf7+jXIGpSWVIO+mc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762487394; c=relaxed/simple;
	bh=Pd9L3Lt7Zz5dF0Hsft4+icXG03xlBB/pAOrAUYzNJQ0=;
	h=To:Subject:From:Message-Id:Date; b=u+v9UOMQJiSVfCS6/UrMjpwfYzWdPRBbTcYWXBJ/buUTS+UGcxFgyycQOp79kygoDKWSPtog9aijNH2SSEjbrDbCWA0nXssXhvmDEBnlxub7M6P64GG7N/CiV+T/O9Hlbn/ZxPM4iqZbOu9/COF30TLgVwMk//OOUHzwgqliD38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ghqIM0++; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ghqIM0++"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A210EC4CEF8
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762487393;
	bh=Pd9L3Lt7Zz5dF0Hsft4+icXG03xlBB/pAOrAUYzNJQ0=;
	h=To:Subject:From:Date:From;
	b=ghqIM0++JTS9F8XzuJw/RGmh8nIMYcpt6AQW5+/HU8sfQ6EN5zGpjg1OOY2vTvy7+
	 HPd00ZKxySiPijF6PF6EG9mW1WCgK8mBYvp0LTbNoP+ta0y96ttNX+7FgYfhNX+Xet
	 1x3W7f08aTLSpfyhd8T/Auqqfwq+gC60805W7l1FjvQ/UHeGhm8eMNlQ/5S59gSpnC
	 G/drwg0T2T4jGrpay3PpoYbQo8qedDoVMHuGYpgKsEDjvG6g6/A1VHBByjp/2hE8JK
	 9JH1NLtHr0MAhDExg9WYHsni971Ql++EBlKva7Z3IviK7mfMFcFtglmdAFvi82Ca9Y
	 rjvxX4n2WOebA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAAECCF9E3
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176248739357.9806.11910574929366330673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 239e20d45ace362268872a58dea01824a9f96f7a0dc00e3cebacb40a8f1e21d9
Date: Fri, 07 Nov 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762487393
