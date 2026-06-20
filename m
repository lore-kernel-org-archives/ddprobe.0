Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 443BD3451A6
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 08:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781943994; cv=none; b=rU+oD2mtXBdU1M+3XtyE17HdMdewseWyjHlECbu2tAv8DS0WKKvoUgfqeacmfu7sjLW02Haq4AR4jBncjwarpAK75WrQTvQCtxuK9TXLFlh6IqT0dWz9mO+4zQS88X7zroCjvlp9Uz3cDu1pZrhTdYiWqQUtKyX3ui/xHxlYeEQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781943994; c=relaxed/simple;
	bh=6CNPwyFIcKXaoG/xHLFPvK+3e/AM8KdsPF8wcRpGFY8=;
	h=To:Subject:From:Message-Id:Date; b=Nf/CFJYGSYTbwnUwrGbv2YNSyaPjxhn1EyIbSUAhoDFfixdBZAzy/tNhusWNi71BSLCGR5VaWZL0YiXFZHXlD6CILJ63hWuzmsYI3Eulh8uxqHz/xP50kz9zI7ddP5GqL1hIod8Kp+09H8v5U/x64nsjuGNgIBtza5MDqy5Ef8U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H8frIgl2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H8frIgl2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2AB5C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 08:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781943993;
	bh=6CNPwyFIcKXaoG/xHLFPvK+3e/AM8KdsPF8wcRpGFY8=;
	h=To:Subject:From:Date:From;
	b=H8frIgl2mpKzNqGvDYwiWg7AkzR2XhqlYM/2vf141pH9/D4nwi7Xi/g9YrDcJMt5j
	 rSj/zo8GXaQoeBePHZAkjxi2exhrRTeNQ1lsoTtoj3jZDJahtyoBNH/OYDXxjN+R7I
	 VeXP3VKFWBT2viGhnbOBkq6OqO8AS1xMh5BDm4KJ9PIwyo8yiYRduDjLLsUPx3/FYt
	 nodJqhxR8w7ZTxf2us7YmGmFMtBAzUDhVTbJQasHzOlb2Wg9dJrLHUfLgyWYbYDEWi
	 VfyJo7llnsK/gaHbm08rW8Vw+XLrZbuxkpxuKbl/bOj7cFRYNyi+V+3t1jO1xpmSgZ
	 8KAKueH63urGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B29B8CD98E4
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 08:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178194399372.13210.3976553195770389180.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0015e4a6ca1243a4d2aef25394f3e859bacfb6d6f4844381a13c0f637998f95c
Date: Sat, 20 Jun 2026 08:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781943993
