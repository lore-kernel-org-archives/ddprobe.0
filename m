Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 125E1221FA1
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753869594; cv=none; b=fQQEEJLJqYcaxzrtb0kgp/yLzEh/vvSKZdr86hjHY16FwQAzzkwSYokrGTO9ch3zY+mL9ssER2Pjzkav0HzEJd7DZwklsJ9B7Bnw7jTy9Nv1zzRpmQgKjBwNxcJIYxUQ0CUoreLdy0YJyfMTRSQ/nkAidDHIw9YMB9gt9liIZXQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753869594; c=relaxed/simple;
	bh=0bTa9eKuNCFMtKVeQ9G0V7wOefj4qrSUfji+jFfyBaU=;
	h=To:Subject:From:Message-Id:Date; b=fecZRnE1BkxkweVadQ191Bs65MROHcdUvBM9SWx/3fS8wLa/4/t+CoAHvZFc8yFQcBQ7LFmn/n/CuME0eL5kIbYHeEMYWiCJ4kBR6or+OUMgf9FR3UKaj9O7f7Kx7GoSoKb0dT43/BIzfiW7+SWT8yQ/PbU9hfFc5QgkBue3SU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g8Zh6wym; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g8Zh6wym"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DECDC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753869593;
	bh=0bTa9eKuNCFMtKVeQ9G0V7wOefj4qrSUfji+jFfyBaU=;
	h=To:Subject:From:Date:From;
	b=g8Zh6wym1Ss3m5MQb5ce3Bg9NIZLWrwKE8DszghBHFt3a0/yNITvX+T9c2LOxvL8g
	 8r0HyTy/nlMTdEd0HhkAB6vqDLaH6lrheDoR+nIkBeZtjX76bdDKctc9zij4ej6Sey
	 tXWqlPzwYXKUShOkK95JrHHrTo582lpZIEEh4uKaP5ZOfNo4AVF43VGWV347JdJimN
	 mO5CY2wLTXn5DPQ4qFpJ4WpdJCas6D+Ys5daFjwymnUSGbPqxEaoqmXSC7SmMgr5rs
	 2Rr7ISQsHV6d1TtQ+aeg3uof/cz4SJe3k5Bs3GCQK83GmacUYjPz3FNY1GSqFXV6fS
	 SqtPwSruM4s8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F708C87FC9
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175386959357.24235.15296591871122247211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5a0c3000a8d8ecb035032f18e8f6bc0620532090eb56d7fd6ca75df0127a051
Date: Wed, 30 Jul 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753869593
