Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7333656C649
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 22:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790200834; cv=none; b=bHRnog39Gz38dnQTJ/NhRUAnrw64VrVfF8JQmu6n9JMkhkElrW97K6GFVgtYSM5uF7m952fCMjy5VH8xLI39sh9yRhRA8295+ns25P97LP+fV1DzUF4c775c3UEt3Jrd/1QkUtZt467jAq1EWVCPDZtwwRAaom6yfjNF4RWEMyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790200834; c=relaxed/simple;
	bh=5GcDzQu3buP7ibuZse4CWnM+QfR1bnC7TCdc/mtvYkE=;
	h=To:Subject:From:Message-Id:Date; b=skrwlprfz0+rgpq9mbGpO6swLsKOmbdLG/eL56bQg1bi23WZhDqblyz+C4ab6Erwu4IIVdDU3NQp4ddKlhE5w7oeZoX9S5uyog//6G3T7EQRuxZfbniTmyJercfSW+OgzWwoMpWXjlfHMigcF/VUGrNLKNDZaAVEDwT2DIVpo0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IANJGR/u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IANJGR/u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4F83C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 22:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790200833;
	bh=5GcDzQu3buP7ibuZse4CWnM+QfR1bnC7TCdc/mtvYkE=;
	h=To:Subject:From:Date:From;
	b=IANJGR/uI5JZ2swvyn/7EEOGghi0IYypFRbIfIRCJMcS0P92+HJPRHz5ahcb3k2qX
	 Nh01QAo7MR4hOJBEwR0wXHtUMocmlW8ILgnkdd903oc8fgw85nmHKZKIGFvavqj+/Y
	 jUUS0RM86L6tbr2OEyW/OZMYMao16HtBGOZWsK1v8vgR4PI4a6PBhwIaC1KMN49Znx
	 dW2we2hNmwITybB3+knIOK274nox2fQZrIoFb3C6c6k90eXimF5yNZ4XvpEpG9v0uA
	 SER+0l1tNRX4+Np3gx3V6obuBdI7Rx8XWss1E/izpVzBpjyI4TxbwKaAqzOOFIGITw
	 uBEGOLWdxEf2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9BD6C98304
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 22:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179020083373.22569.16624857020635369794.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a890026484dcb8f6b864883e0acd1e67abbdea771e23b326613029de201ce339
Date: Wed, 23 Sep 2026 22:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790200833
