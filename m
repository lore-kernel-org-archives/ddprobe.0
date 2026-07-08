Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B05443CEDF
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 11:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783509514; cv=none; b=nATi0eRXzhzEv8uZl/nUEmseqCNS5UpeOkVVk6Iwy3YtoZtVJ44jw00u7xxwlYqEBldbKPpzsDIrUPUT++0Eaq3prdxOWH4izoGa84T8pE8xq/RBwi6UnJygXwAiG9rIZAU53ji2MihGvQK8yNCOYL+T2YmAa//AyUieEV7Mnvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783509514; c=relaxed/simple;
	bh=ftSRmVJuEBXheuHnz8ZteG9Sp/9agfETJwcYXrHiE0g=;
	h=To:Subject:From:Message-Id:Date; b=XYv5MgyIwftW6BByzNd+RteRCKTwcAsgVxzQcS16oiGgAvGOtk62X+yR1cd0Tkgth0HVFBvw2AVfZmIsEDAthbrNkdZ/+FH3696BtQsyUvbgYgNx56afdzSTnJ3xFwKnTcL6Ul+Hy6gDWdq6RARyIKpyvUuTB2XbK8GH8WftTB8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QKkGG83n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QKkGG83n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC5EDC2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 11:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783509513;
	bh=ftSRmVJuEBXheuHnz8ZteG9Sp/9agfETJwcYXrHiE0g=;
	h=To:Subject:From:Date:From;
	b=QKkGG83nq2nJ1vaiDICuzBjYIK1DaWyKEQ1OwP1N0R7G1W3eji3SI/mp/cFACA8TW
	 SJ2PNv/IPmsST8iXJqxNFUGHAUqA2Ep01ULVtKL4vygMB1mLMlp9zNdYqGd6hv7yUl
	 LfQL+u4hFc0a1rKeBc5rjmv+t1Xrg6cqIgp4aAf1F7X9zCQohsUYPUUe6Da3uMbPbx
	 sZjWcN1Q4w3TJCk4atCEWftkJP3smSKfJi7s8sm6qSdVYA1iBfL0xLV3eBnSkcaS26
	 4wzRIfq+ieY+fw40iTUJ60kcbVJ5LxtKEYBJo0su1WkwNYIKCaGfy5BECe4Be1A/lH
	 aBAP7i7RMrWrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB4FBC43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 11:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178350951369.31159.379188939197635471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2697071bb1a8d181a6864d22cc3c644fc8fd4a18c6c862dd9f72a9dee79a9b06
Date: Wed, 08 Jul 2026 11:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783509513
