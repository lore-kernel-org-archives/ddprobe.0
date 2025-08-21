Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36FC42EA475
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755820794; cv=none; b=YLm2HRNdAQDBhxg1ffvlxqWYuOJ+YfMbo1Ej3PvfdBN/tpfaBpZ0UNNyQPZnZpTzF55UHyK13lkFsuNtdmerofn9pWwlrvL6WyBOVl7ScwnOyDOxpH44Q92B8CBFpPsqM6LLIjGLZSgiPlNwjBi3Yi/EGRkBoPqiN6hYnMc8P7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755820794; c=relaxed/simple;
	bh=D9NOT+YMBxUNP6lyjoTs1zLgefgbDOnoMf2uFZWfDiQ=;
	h=To:Subject:From:Message-Id:Date; b=XuQWuLqd/PNKCuWikKf9A2nKs9VrJB/UAKmoDVPoFVhDmiV0Wl8gy/yU3MCY8+HY80CjsuCNOzVCSrG75vX3E8uydlPm77U6cnPOrE+qPdOv4Og24LOR//ny6IMBbyA/GLMxvf0rhE2nT/z6QAHzIaRRU+i30pm65Rnh3nfgJpI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A6FwqD1x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A6FwqD1x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A220BC113D0
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755820793;
	bh=D9NOT+YMBxUNP6lyjoTs1zLgefgbDOnoMf2uFZWfDiQ=;
	h=To:Subject:From:Date:From;
	b=A6FwqD1xGDljxe2mho+tj7us7ZCEhODPUGZOLw2imRPFQTL08O1IZodZXIR0MqOTq
	 TDKJXQJ+05ulxPHFIjlGa2TyL2PXE9wkVffDzBKjUtHzECWO2SOX1C55qdvmqzvxsj
	 Wq8PTrtfR9uLlsxHs17g7Rc7D4et6k1UfYl+Q80AzscurpY0bf0V6vgk8b+fdoaKU9
	 GukjVIstQiou3IWtba0b60fZzZt0KixYf1e+rnfHlrh3X22Qn9cCAgiNhJaHgXOqBl
	 +mi9rfpQ/F3w1sUOb4GBPNmeo6lZkvpMll6txbTMGoZHKOIrCBjMSqISI2fAC9GR+p
	 V01WnycBhL22Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8E3CA0EFA
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175582079357.30977.7506503568517743809.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a076ac7e413ed0ccf3c45bfd4a9e67ef704d8d2b6088291701c0eb3d8fc9f1c2
Date: Thu, 21 Aug 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755820793
