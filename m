Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28B4D22D7A1
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 23:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785712834; cv=none; b=BsUniNDPTfuUrDOl48IGlPtlgeszNba4JMs9uGN9TF1LSd6uogZM+FbySQ9bhRox7lU8cyTJj+n02yd4LQ8NHFjGtVfbkWZkjGmcBRy4dqI521jI9H3Wy2tW7TOn9jr/nbkV77nAH/o062RNlfgl4CjM2oHwbGrNPIZ6bmpCwGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785712834; c=relaxed/simple;
	bh=/ZaK/en+6+7hOCb2wtN1Xq67Cunl42Zlg8gcc0l32Ro=;
	h=To:Subject:From:Message-Id:Date; b=JtBWhYeOdqwbIHvGKHYD9AWjlI8SXMAuQKERTBfme5m3do9JTGu59gK/CrsFsggIewGApMztK1to9B/0b7AUMnV4pp3imGiQhDqFQ4CnGhcTjjBLuEKZcS8cd7YpGQU2TJntAcSRuidnA3OqG+/XXwdKpugid4SDLiMsoLC3Gjs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W4gVMsEs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W4gVMsEs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0D0CC19425
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 23:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785712833;
	bh=/ZaK/en+6+7hOCb2wtN1Xq67Cunl42Zlg8gcc0l32Ro=;
	h=To:Subject:From:Date:From;
	b=W4gVMsEsQm49NIYShLJs390usDuHYpaWffLbPrWL238s7SOgFhCi/2MCgZpFHxgYl
	 yc2Um07wa6zLsH3l9sSCvg1//np/GgNsgRzTpaRYZyUpq7VSi6ejEhwIkSjYHQCPDQ
	 u+1wRo0gpMLLzDhI5UuVzZuTSAGBVK9ITDAcQEUGIX9pbk7a0qfSm0LRUQ8U8ui1l5
	 vGuwVq3uRj+qWLSYMUdwa4ZF+O7cAQps610CGAolUkZlqSGht5Vyjahz5WgEnpNfOt
	 drAEXFlleXzcOh0tSgOJ61k3YeVh/vLFPy2V/jexu5B8XYlYjUTXQDKv4pdUTDh51o
	 nBdcpil9ZuClw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB8AFC55162
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 23:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178571283368.29966.18047043207644972657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f867522005028755c03c3d697a528d2c59d4fa5f70b43b84c1f257e7f3cd6afd
Date: Sun, 02 Aug 2026 23:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785712833
