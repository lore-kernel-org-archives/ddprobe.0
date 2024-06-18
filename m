Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5952E14EC6F
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 08:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718699363; cv=none; b=LwOvd/SJrdQSUaOQeCv/sWIZyArRINfPPMUoFJ5wOJ8ZKqjveHflc1sYDKaBevBA3PSgppwYNlChEjzfVpR8WXi8q0dQm97a90u8RgNqClxYushiMxloE/e7gwTSKcHgArOzRAANtFZKa4tk6R8z/y3P4hXckyulJmmopTm9YtM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718699363; c=relaxed/simple;
	bh=FfzZIM4mG1bsZ5xIH0jFI3UG2DGlWR9c3migXYqKJu8=;
	h=To:Subject:From:Message-Id:Date; b=OINwiw5MORdRthTN5YCS3c2GfbV1Vz7uFOn2qZbKhs9ThDKSy1OEiTBfrWLB+vj/35DmeKj1QtMaXtFxSpSxQeERDc570xu9d6knmc6AQFQCd1+WwrhTVKJOWV7dgTXpMPmMt2IpuUZE6XFvR8Ej3cDpeo8PtYAGUc8aj8m+jqk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CUwAeEZe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CUwAeEZe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA232C3277B
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 08:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718699362;
	bh=FfzZIM4mG1bsZ5xIH0jFI3UG2DGlWR9c3migXYqKJu8=;
	h=To:Subject:From:Date:From;
	b=CUwAeEZed/8foCapj1WTMqU6T5PiztRgWcm+XzqtTMtdvIZY9eC11HetIwIiWWXt4
	 GaYFGQqKAstLtDxRgibNc2AnxpKwV0Tg9PL9oY8NSIRRCkxuaaVMMlOdRk/kbBsA+z
	 C0QxTka98VGUiF09gxkSmxQxNtVxSmPtBWRgf178gGhiinrLNTf0EzxVbrYkDyLlAn
	 wc8mulv68rS/5CmlorxYjx17VJPNAWv8mtw174iaiyxPs0g94mkZWq+B6xn13uGfmL
	 Pl50rC602+RFgVF0FK5LL+h9Flx/9pJap72thb3kj5ID5CZuluzL+JKIVLW9pFc/ut
	 1/P8JOT722IPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4839C2BA15
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 08:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171869936279.27844.14568526151161510051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5f0f389f9df89aee433eade0e95f0b2de4432773331191e0cda836f5c0891ce
Date: Tue, 18 Jun 2024 08:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718699362
