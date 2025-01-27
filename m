Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C8AB25A63B
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 09:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737971154; cv=none; b=Rl+3iuUf0+AOfMUgtofHjx8CGNAW2RK8xP0UW4NPVheU9oKdxI02TucFtXcIDIxVq5ZhhvVaPyTEyBMNn3eILPXjuvj3MaBKV983iGeBZuE406LTkV9pz/4jVeCcPS6Fb8DIgeTBXBfOcyHrcFz+jpju93iZGr7gUHS6lcjh/HE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737971154; c=relaxed/simple;
	bh=MBgK1FuN4azvBAWmdrHvS1ZKidPA/zBt2BQZKbbaC+s=;
	h=To:Subject:From:Message-Id:Date; b=nHaXkdMdlK8S/EnPcu9s/CaEh7ZeM1ru9HEONGq5L0E0ieOeKR2U3nYRp4FK2nNguMray+C9T6NEcFkhoNtFvtAaf3NxGkx8rl0JzhfS4d7PxjJSPFyif38wuj8SujK57eTBefDkmkS6cr10mLLo91PxLwG2O7ym/NO/bcQFWyc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U21oZ2Jr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U21oZ2Jr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FC5EC4CED2
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 09:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737971153;
	bh=MBgK1FuN4azvBAWmdrHvS1ZKidPA/zBt2BQZKbbaC+s=;
	h=To:Subject:From:Date:From;
	b=U21oZ2JrBZanFRl/98vyjdj/6RyzTzaMR5Zo8CYXnWnwe7qT/7MlZZMkV3qcpOMd3
	 oAtOhR7PcJ0fNVANR9pyE6f+ScT6KWAHXVICNgiV/TpWfax6pzY2Alr07+vsweUJ4v
	 f6MOwRkfNbLzfNC6bjpY07SyVfPeI70NrCdwBuG+jhvMrwgkvcAob1eySJsGBTwPDE
	 5Hq9gU4JptISc7VYtkBnu16wm+vYz1Pl7oZorHhK5eIP6045tes8FjA/7fzxb1OfLc
	 vMyxffjPT5ts53UTrTwpOd1bhjp1beW13Fkw7i1CXVn0xzL2V5ZjZnA857/zDy5cjs
	 VsQNEH2uStyzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917AEC0218C
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 09:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173797115358.14648.7518980925384153532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2c8a94a91fd144896111107b689c42fd01f32c52eaaba9abd2afec319e0958a
Date: Mon, 27 Jan 2025 09:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737971153
