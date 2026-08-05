Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26F813002D8
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 00:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785889234; cv=none; b=qSnZyFyuIOh5bBO+CwxzlRjnZKJ1S+xRjX+/wPiyFbRg4CHh93GufiJWWTMVOkQW/oaq9rU5oICaej9TdppL65VfgC6WE1S+JmdP1BqzRwJNlCftf+oPDcmPaK8glO3y2BOe0QtaUNe8K7jDntMw2cRzBEZuHuNG+V37SigG/uQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785889234; c=relaxed/simple;
	bh=9/VrEgaZuuwR7G4CLrbCwyYGUi1gOtcUB+i72Ys/qbw=;
	h=To:Subject:From:Message-Id:Date; b=unjs//EPTdO5DWjmZu8c+BZ85aLZxyHG+TbIrBrQAiG+M2GtBuTVCFszyPTrk20WAEhmTEcP8fPCA0SpoPIDhuE7qDONm5qEQe4aXDNELZH1DYZou+5SclPiq/sMsaFkG0E5CQkQQZEcPubBDgfL8QipTVAnxiaIcm4jzfIxKME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MOY9JL42; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MOY9JL42"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD10EC2BCF4
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 00:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785889233;
	bh=9/VrEgaZuuwR7G4CLrbCwyYGUi1gOtcUB+i72Ys/qbw=;
	h=To:Subject:From:Date:From;
	b=MOY9JL426FaFg4iJam1/CXblIQKMdCGjmuznmIv1beSISJwpb5lWK/+IQMUqQwmwS
	 GUyPGSGNCXpjK8FS5fFZYA0uuRZSKfqUW40ibuPaX7G5ScqxQrc8NiVhkjBeTtui5G
	 jqfM/Gp+0uRzmHOyq0ztdYc9dRRERCLce5zw2pJ4l2Zx730jpm+rs+fZ+QAbqluFdZ
	 d+8f98yf7WCde1yG9TTKe9QtDGDFszkyJlqbkkNXjnkonljUH/2Hbtr7i3eGs8eijd
	 sxX5SjTk9TfkM+6LzfnnT9WD/I8VfQgkmQsXapd42ifS2lNgNPF9LX9f1hQXIbV582
	 1+flxqiy3ejQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9482C55184
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 00:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178588923368.2965.4930487893164582826.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0f4ed88bd05cc3188b0b398f09c9f6e4d4c0442dc777a74a686cd2e94c55b4a
Date: Wed, 05 Aug 2026 00:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785889233
