Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36A8819ABC2
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 07:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739779134; cv=none; b=ounuOu29Cb1hIaCucetzYDSFszHuGx0wW8aogWTiKFs7+dWi2kjVIuWWbQKQL+chSuS4lW5rYte92W5WNGNfop92VA9VaxIkXR9JbVzeNRyPOCRpV7SLLzOtuingGkd6bpSUlMxA2LaD0fc8RhRCxTmjUaIV0bnn1bwHI/FFliw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739779134; c=relaxed/simple;
	bh=YBgJwl8VC1IicJijCwTcqeCJjj3L8hStoB/wzdHyhog=;
	h=To:Subject:From:Message-Id:Date; b=gLxteOTXeCmRg4c2zfdggtCcqK3h3vEedgFpAGp0Xw6ZdyDgOQUof5j/InjlEyPhOoEXx2iFvNIHU6m5a8YKtAQ7wjA5NPtTJJRmgJ7MFu1a9h4eYHX87/eNq19sTBAZz413uO2fI5Ay1C/diLM+zdRFEAnTNH5l0JspzgEUC6o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZhRdQ7er; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZhRdQ7er"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB33BC4CEE9
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 07:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739779133;
	bh=YBgJwl8VC1IicJijCwTcqeCJjj3L8hStoB/wzdHyhog=;
	h=To:Subject:From:Date:From;
	b=ZhRdQ7erRvtr+GtxC0nS6yyECCZp1/PYE5noMBZl1Y2kP+aNTHD08NO0XyPDqFiK4
	 L/s5ITfBnHcCREaIjpBqmT0b4VN6IsTDvUm0iI48hLuBHWPnJgpVtjsZP6FPKn834t
	 8Ms8u6w4A8PiYWClZahV9ZnD/2XrjQt+ya3SHQyC4xQb56zGWc5r2WXebvUtFytSNf
	 QmKfs3+YrW6Q0BPkGA3dlEve/0G25pzSzKQnpkaJawdBCsWXw3gNKFckleicwfoHl9
	 jDBtwhY7liqKIGIuhmR1BfCFKJdonZMPgKRCSjCid0MT9j05cZ7bpK+gl8lsdI2taT
	 psbaObeNYNohA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B7DC021A0
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 07:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173977913360.18795.15953940837619613176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db24838ae2828be4779450541ec438562daba12a6494cdf7b8d369174f86a36f
Date: Mon, 17 Feb 2025 07:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739779133
