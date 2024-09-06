Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 132451C8FC0
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 13:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725627954; cv=none; b=Mxjbd7qwWZHMU/T3vlVxAN5qQnq6SdkCA0wL1TFwjX21SHO4bpR5wBYXNZ6DtveZ+9dqH0phZ0NelJ3WN3uTXdtaiVazY25VuIJiw2j4i9Iqc3sLMPV6TAD+tpGyuTqe+DcIuzVVKo6iTp7tt/laxzsvc90BnyjTKfx/lMsea5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725627954; c=relaxed/simple;
	bh=ixnK2652xuYPtCQBkDItIUwj8nkceru3tYU24ThhgTE=;
	h=To:Subject:From:Message-Id:Date; b=Yn55Yi96WXRcwRdKeOThaHZdg3fSbPojkrdQPmIHso6clp4cGzWs19rIBJA6kGff5vShkEQbqUKkahW+OFbZwrVzHIlGTHBchFvlMKGW4gkPp3dC2nJ+rM0o2bDkHUECsb7dnJ7HALDtaW/h4eG4tg0RKLxFtqkNZo3Z96qqSK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f2ghz+Xp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f2ghz+Xp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A57CFC4CEC4
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 13:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725627953;
	bh=ixnK2652xuYPtCQBkDItIUwj8nkceru3tYU24ThhgTE=;
	h=To:Subject:From:Date:From;
	b=f2ghz+XpsZTw3lirlzHS8QztNTPweRVky7hnC2q/+QmGoIFNe9maTIrKVIe6KA1qd
	 PxwlM55KYXKO43LgHNg3BUYl3E2xsdWETqG8Sy4Gy0ykCxDKeQky5TD50xwswOspYY
	 3bz+dPNrTL66/e+9a8ahHaLof2ZmwPC6sf8aOEZLWzyNswRSAyIMT6I9C16OQTC0TT
	 7xiFaMPw3oDRezIMt5p10OIs1w/xPEhDVthfqjklbk5fEbQ04ZcnYCk31Pyr+lpEhj
	 6wtKakPEa916CZifs0+s57/HXbXfxd96ik4FZlBOc2JNMNYRWyKzaq8bvpZEtycVu7
	 DARFQ9ofoV8Zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92818CE7B09
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 13:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172562795359.18022.2290248261314767573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43d73cd39d7a391d315483e826145d3b1e433fd7d35376341ea3ab1a2442d36d
Date: Fri, 06 Sep 2024 13:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725627953
