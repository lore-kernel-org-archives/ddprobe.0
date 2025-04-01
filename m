Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58AED1F0E56
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743511194; cv=none; b=Tn1jxEEfgPij7o38u3xIX2ADpV3tgY4Zi26dgl1+v75Ln7cVJ0fn/EQOKAP1kLMNYM9PUKyxorz5qxlvSlYhDx62XCqcfeA/fPVNbSm5rmRfbI3PAy2xghGcqelqxOfECJIgN5/7eMAANULU8mut2aulHFBm0FpdFdzHmXtp+YQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743511194; c=relaxed/simple;
	bh=T3c/offn44jWOHc1nHMcEYbqS0jt9sDmO1t4CbrIOQI=;
	h=To:Subject:From:Message-Id:Date; b=OjCDbirX+NZesikZw02lMAH5o9rGkn3xKsea1YlLOrtfB3VrvCifpsLYl2WRX7wlZYUDD3SSIRi3ty4TGgfVF4SJaLDbvrRK1oCrNg5e6W7JwdMKPWtRinqf5HMRntFK+LOzRVhTtLPT9w2d0E2UrYjESe7oHgFwcLRBvkFOJtM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mll9s0Tn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mll9s0Tn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7DA3C4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743511193;
	bh=T3c/offn44jWOHc1nHMcEYbqS0jt9sDmO1t4CbrIOQI=;
	h=To:Subject:From:Date:From;
	b=mll9s0TnnHotI7MDiDg/BoXg/5ubyYf0d60lfy+f5lUVQih+nJkci6mXtrEG074Dq
	 LosGsb0mHUXEABZ67/8z3KkwIEz+eTKV+7x+JlabJSKC9Np3JK7vwXvZsgnJ4LndTG
	 imDrwJpn/5Kjc7L79GTLd0FM6cGCEseLCNsO16+pbLHaf/33l0H8i8HXICtx1ccNlK
	 7wf8tnpO5Ti0YLOG3QuLoKbQZuqfZVijNmhRm9uUhSN8iX52jxrfwMGXbVsdAwVxMv
	 qu8i031wKXGH+zesaBXrlTTWBkzjr+J9oSySps1jayqSdFTTbOTe2d0UfmTPGH5NtN
	 Bc/nXsT0mPU9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FC53C36014
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174351119364.20145.6832994143458350247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98963562069c39e78fae07c4da36a495180f43915effced3a06fd95f043303bc
Date: Tue, 01 Apr 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743511193
