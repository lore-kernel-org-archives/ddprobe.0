Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 419A21C4A10
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742323794; cv=none; b=D0xoF5zs7hdHvWq6zHnVJh0MySq43RNlx+yhYoZd8Rgmf6/MBZT9AZyfTfr0bH1ScXxJzsR33l/ChKFYlBfYcNF8MnVnZVCTyp6FzY7JWU3FiWUKFb3VrJuEOI+6oWHp6j+bdX+lM1rsWCBMl6HDlEmKYP20bb+zs1hfS3YJDNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742323794; c=relaxed/simple;
	bh=9Xoegw0siVqiwt8xEyf5Q7qOtUSp/em0yQNGGWrKrPE=;
	h=To:Subject:From:Message-Id:Date; b=ZBjfEMCvn8yMG8Gaagw9dApNJ87BgRKG36PUGamtA6oY5jbe2+mgtx/Q4ZMyp+Enk8X/fDexo1MCbgm1xPmVw/XlDV1MyCrZqyGjJ8q5l9mczVHNedfVHSwq5UtxNQRHBheVYc/GyAtlaNXNp9WuMRIs3+QkqN80QwpZdFd/5lY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Avc8U94j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Avc8U94j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2064C4CEEE
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742323793;
	bh=9Xoegw0siVqiwt8xEyf5Q7qOtUSp/em0yQNGGWrKrPE=;
	h=To:Subject:From:Date:From;
	b=Avc8U94jKo/Z28L95fJM1FPjcnchF4vewl/WZVS1rETeE7IcYOoisS8J5ixGQiXf2
	 EfkddkMKF0LHGSOSR9ghD+FUltJ+sXlqlLIimZaYay6bnsj9XpSxlbWmJtC98ti16q
	 8WT9+v8CmfCGIbEjgk4H6qQwEe2p2KpgC/Xer/Uaqhjj13usvuTLaPLq+Y7PL/1XjB
	 TTiq4DWM1iskr8y7X5z2tHHTUQ0MRbeoNVq9AyhiM4TZS146T5FcuBDjX/1Rd8sTJK
	 LLl4pN2w7sl8HlZeosnGQYqRWS0rwSrOHA1vbJqDsPBcDX35+YnUrnOFzlUd90HAVW
	 ugnFESuUyWBNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0426C282EC
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174232379364.13536.7427750802555894952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6a7aa5e79755511a6aa049647c2c61022b8e26b805ddb2b7910f8c3fb663166
Date: Tue, 18 Mar 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742323793
