Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6456521A0D
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 23:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717888043; cv=none; b=egnuaf3DCmogpp7kWpOX3GQ8M47KlkwMeiDvZ7vgCUPnektCAvPIZXEjunsMKUUuCJFMRKBCgrO6bHbjE0qiXi2XS4WavYVLKLU7q7nHsEHlfFOQ0j7VVm7mFjb2A8078l4Kf6J7F0efwFRKzRFZfPs81++8sv1t+sxiAAljBr0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717888043; c=relaxed/simple;
	bh=vLqTo1tkUIZrMurcc3wj/yiEAjz6uUC+4Zb98x//agQ=;
	h=To:Subject:From:Message-Id:Date; b=XO3o7IsWCJr0QFGinRyPwAbj/zSZ18FEVy7mH/Iu7kFT6Y0npKlfnAAhSJATEshkQwwLCAu+iLxvYNJQWs0NkoJf3Z5MkxVMQA0MQkvlJkiLZ+xVvuLtZl/aZDv6oItzCVwa5hAdMqhWO7vb1TPpKyor42/bjtBqoFq0A13Qtxg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GvCnknEA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GvCnknEA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCD77C2BD11
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 23:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717888042;
	bh=vLqTo1tkUIZrMurcc3wj/yiEAjz6uUC+4Zb98x//agQ=;
	h=To:Subject:From:Date:From;
	b=GvCnknEA5MOUF6vkDCaivEIuHtBg3rRg6EGtvDVxk7Eq33eNA0TdZzLYJWSTZOYZ7
	 TDGA+3MZZ7w75EtwyjKdL5Ce6N7eN0II+CdySm7SNqzUiD0Cgix1Gks8ZBteud26tW
	 usa+g6H9muwShNVSbQjy0+055NQCxC3xqm0AAkFF/sdCjfFb2Sc8zraq2+Tp7z6UTV
	 S7CKmyyni2cDvUvHWI1ZH9H/DA1tOm7ieBnZfSgQBFzqgnqOUzu6RAy+o5Wln6/CW9
	 tm3V0w0EsW4ptgNJ5aeIMTJXIumsnuGkPvB4MMxPw7uga9Q0SOPXEzqR47GXZCUdJX
	 B2KHgUwzcoWYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7F3DC25B76
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 23:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171788804278.7855.16686385481799676103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94944dcfc6174438e9b1881ab7874f1ad41f55bd9536b454cbd529cac1c8cd15
Date: Sat, 08 Jun 2024 23:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717888042
