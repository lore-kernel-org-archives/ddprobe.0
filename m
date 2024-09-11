Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CA4E282EE
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 03:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726025154; cv=none; b=Vjes7+DzV+tfRuUOiceaVT2Uz+jPiqg3vnx7HR3ILF37flyay5PinxCWNQ/xeBK6S0F+vh+2hkBbZebFKtlUKyVQsICVEgIqcrx3B0fzBUJMi2VUAnBkjdpqDN+IDsiVzysEFE3eaBSfmlj6Bapxlk9de9Fc82DPftcdD0CwTSY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726025154; c=relaxed/simple;
	bh=TaF+Va0iqBGcNuRMFgfAXBfHzC1xJ/TGNkMWVn7VHa0=;
	h=To:Subject:From:Message-Id:Date; b=KQ8xI3NsKaKyRBNN+I1QaM5jaoCwEx+MYyfHhTY4WpacNJij4/X1kapvH/5F/MVRM9K2BCxvFQkqtdywL/XbZ80Geb404YsEXxS99sN+9itwWAHDSVVie/CA8946/J5ZMBg5e/3C4VyHAldUs7YTlbVTsAiJo931TcOguZcrggk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u9wIcyiu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u9wIcyiu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B941BC4CEC5
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 03:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726025153;
	bh=TaF+Va0iqBGcNuRMFgfAXBfHzC1xJ/TGNkMWVn7VHa0=;
	h=To:Subject:From:Date:From;
	b=u9wIcyiugq1RCOkcrtJ7yk7qRyBy9WjwUopcubVJ4cHSsWpgtFmWHRnlBOXH3cBXY
	 9BoUrATjddSTeBu7sQ06YTYXdIcWAQPyPvHnr6dtduC21uheWBWz//OfOT0LAO4TuS
	 Xq9jv0WouNho5Y9JklhPyzRy2wR20a/DbfoF+77TAa4XcqunbrUftRD9feWmfFWxKz
	 yDeq+yzShMDDvv098FzHB2r7HG6IM2dvUFh+2s2pjArrpiJu+HlkqZWNVxKQ7ds/1o
	 UTYZDb3myDx6ofA/k8+RVE7rEJL3ZCVwY5XY9fRstaqqnHBpZg75zbRLdiwa/IuZ8s
	 J8qHfEX3+arWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DBAFEE0204
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 03:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172602515361.31142.13561447396337913622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: febed40ee60d87623c106f923b5ceae6c7114825467f2591926633ceb0573af4
Date: Wed, 11 Sep 2024 03:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726025153
