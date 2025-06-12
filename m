Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AF4828F1
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749696594; cv=none; b=aBhRcUaeKRJMQ8eVSMrt5htEh/0qf8tUOR3ttaee3hOjTyUn3f9+NI83UrGZK/9323h6qOd9rSAqLthGk1ZzXFPFclnqhqAAqSuORwTWXzp+TbudzEKGPcWy/evz9djX8Pmm8QgwcBZUNYYKBL/JehC1GPVlVAukH4sg6PbfMPE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749696594; c=relaxed/simple;
	bh=Huh8xW6NNv76w/wzTYYyKPGXIQlV0WqrJu4FHGqSAMQ=;
	h=To:Subject:From:Message-Id:Date; b=q+dDMnDl3Ylc1iGyouewLbZZlO1JwfaLM3vInVPWNL9cB01Z3Eh8wfHfqGd4Sg979JZ0bVzUjZfHQbBmBiWAIQ4GwuA0+XhiVhHP1fydxR//oZ5BHsQm1AAimEsxHuPMs7kA8iX4q4OLzyCB/3kTl3BDOyPfFrw9okJ8Unyudqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=atGB2kKC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="atGB2kKC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A424FC4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749696593;
	bh=Huh8xW6NNv76w/wzTYYyKPGXIQlV0WqrJu4FHGqSAMQ=;
	h=To:Subject:From:Date:From;
	b=atGB2kKClnkA3oZ7/i7LMdI+fliir/SRRlhAQdcmtlxO6lNFk+wTw3zXd4JS55w4l
	 g1lxhG7trMYHzZkBrLXEqNW3F7x211Z6ahxPhauzHBBUT40AdqxxsDIw6tBkElNE04
	 prGw+wCJOask5qulQ2u/ok9LcIgJMnQlQ7xEFwXAkBAgLmY72PSSSyS2g3veTmIsvL
	 q33vBWv2BZEvD1OBF2sTG7TuYrfHe5HM7sU3jv4MzaEnBdaWQIn0gym1IxhBLdHHYs
	 KhNUbiE+IZQzgGV/8g2/l7T5CKNfTXpWAF4SvPsnxBffoFPnAbIBDWr9n8fXg73cgR
	 OGJvleE14nQRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC8EC71136
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174969659358.3662.928859613869723548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c937faa9d0c6deebd7dd16626a4d6d4bfcf556633998b89d67f3cf86d231fac1
Date: Thu, 12 Jun 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749696593
