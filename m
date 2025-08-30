Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1459422A817
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756565394; cv=none; b=Fq9zcAqmhL/zoG/6kyIsofjY8RZH/ZgK+hQVS1vwki00C2EQDYOR7AtWMfw3UnMsTma0rJZWIzjnHNy8Z4x1CSNq65SnXRS7/rzf3EtIFmBV6XnGFBMeznPdTcLwhlXF76s0T9mO2hUUi0LVdlvNRJ0HwsjLktd9595k+61cG3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756565394; c=relaxed/simple;
	bh=3iUfyKpvYyizCeuNapK7nN8P1kuRCs75DA/TWcE05/A=;
	h=To:Subject:From:Message-Id:Date; b=M+Rzx4rZ/xCfkpOUqtA6BcMTtZLHNXt8N5uMTYZXV5kVtWyMppluSpxJukFJ/w0YNlLW/Bt24sACkvu8puQ+RRUfEosn+nJ37p5DiWUT5dkuEZEg/o3LFEwlWEwSqRqd/aeZtkJ0f9OzP8OARIUxI6VqtHYD/aXIMH16gVlekP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TMBTBpHu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TMBTBpHu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CABCC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756565393;
	bh=3iUfyKpvYyizCeuNapK7nN8P1kuRCs75DA/TWcE05/A=;
	h=To:Subject:From:Date:From;
	b=TMBTBpHuSIFg7Jt5LOP1WZlV7pynvxZ4dSyCIojfiInt5v4vXMYoCgVLnPv4xyAcZ
	 2DnAUCo9oAp/Svprk8u/SWPrlk5EUTBQj7gVulCgMv8RZhBlYMrJCG9AYxjPXo7xsr
	 RXZy1f8yWTK1UikUQfldXeORosZBDJqwHPrQd69dW9yTpkWDgyZlSLAR75sdpCAvdg
	 KjGgcbygxjZFAw7hLPRzBsOijxJo2dzf38hxKvxFOpInT/5tPBfzC1NOclukWsKNb4
	 3/OPCZqyApDRt0grSbamRu51IgSgYmyYSbj3wO9uUDMw0k5AjQPyCg414YjBpu4nOC
	 d9NfIVMGEJoTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7C3CA0FFF
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175656539357.22006.10354221810249539434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98ad8bfd15d1bfc612ad95a7c33399c9880c19217d89868aa746451288facc69
Date: Sat, 30 Aug 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756565393
