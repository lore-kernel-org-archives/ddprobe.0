Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C2A51D7E41
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757182794; cv=none; b=VxEruSuqZ9EPFHQHY5BYXw8CJVP+kkgSo/KukUBxctN18p698YNdl5/xvGhVMSNQ2rg0RzDyb15mGvGY28/he1libE/8WONdz/NgOGZe+cFnoWyI95dB4xmE9yl79d9smtw3U9eiH/fiPm2VJejZf2s8TFqDoCgVEpJaQn88gBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757182794; c=relaxed/simple;
	bh=/ZvXUnE1jnoBoREQ0nJDbrkhiAM0gQpauz+d3+oFvK8=;
	h=To:Subject:From:Message-Id:Date; b=hlEgejhPY4EpXBrUo3zIj35WktKKtEe9SHRdkrbWHeRLLEnu4Pih26hZ1EF9lqJjqeTTLGrin9Fo45C98eJO0bv8qFDR0LPHCHZDvcT56SfeGnUUblei9sIkS8zZVzxxjvzbSs32mJIFZZ4wQ+AvDYvQsS8PS8ZLUr/uEUkocfA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kZOWHFLA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kZOWHFLA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4E72C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757182793;
	bh=/ZvXUnE1jnoBoREQ0nJDbrkhiAM0gQpauz+d3+oFvK8=;
	h=To:Subject:From:Date:From;
	b=kZOWHFLAwS5iiQ9k5Ypm4Gepll+PUgQnivc/Ik6lOpSQoMavVe5PpGV0nSG8aJq7b
	 J0wdhabS/Xh8yIN0Mzad+JZvJIsfkRgEEa/81uIE0ELtlvzQnLoEC5EiaJowsoUKZU
	 ErnNVjVrvrGZ15u4EUioJED+e3/YxjrEIHCBCxCgFZtdXGaNUFcSwMqyOzy26d8BfR
	 YkB95QqNRUXJ6TlCcyPKgF2QdYDWL5zHHXCk7NaEL8gW2bcs9XmIfDANNyGD1SBtST
	 wlDYipQBZhraomhHgkTiaLd7Fpay6C1heIrhVOfa0WueVgxP858Q0D5Vi61MUHpzen
	 j1J3+7vk4xitg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9418ECA1002
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175718279357.29323.6746957188632419661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a142cccd044fe639bc0bfe99d1be2bb614cacdf364190b10f99d1ac40c25eafc
Date: Sat, 06 Sep 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757182793
