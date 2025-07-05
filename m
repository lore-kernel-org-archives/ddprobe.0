Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F4B674BE1
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751677194; cv=none; b=Bub8cJ1WAw5MVPMKZ8oVl0C8WtT/lBKBNHGE7Uj1e5fJ9r4TgVIxmpRGZh5U8HyeicDuRZOq1kIwMne8dG6A4xxh5oYbhEDuKYgFUgGTSrnURNr8vO5wM9VjVNiQ5x1bghbXyaFc6AlBSt3FZiOTvJmFaUtlqz2adXIwBFYDzQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751677194; c=relaxed/simple;
	bh=FOIRTEmV475pCkw049z4sdOEafzcCl93RAr+tBsalIk=;
	h=To:Subject:From:Message-Id:Date; b=DUzGhTzEmedsj9WgZVGC4cqKHcDaYqtmCNu/UOeQoTNO+6QkMyAWkC/turCc+iYwoNoG2ws3Gy0DYnw5yuKWU0Fyx9hVUDiuWTdJA9wUAh1aS4DCTShuGdAXprYqadaA8DYkcOK6SC18VUPs9u6Zb4DRLr8Hr9vC9fmFpSC5pgc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cWZnBzl/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cWZnBzl/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D1A2C4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751677193;
	bh=FOIRTEmV475pCkw049z4sdOEafzcCl93RAr+tBsalIk=;
	h=To:Subject:From:Date:From;
	b=cWZnBzl/SMeW6bdJ6rLyybZK+hzHwB8QuIr2rldp9ErYciOmWC6UxBpLe1rmT7nVo
	 tHwhzRcL/Kw8mY4ZKpmnCUfLOzjCAt676AtmQmdETgQByGVPlV+/2UBymexBupO8R6
	 V4wc5Ttrm7rjkBkBopeW4KtcFklayQJtDpIZ3QoYo/UVbELSgiJ0K5TbGB6saPJTqD
	 0cWrMmnOn3gCq+jG6nIkSWo+AJwylNXqWXZIq33jmgyqbmLePHgwvOideC6vMguFsV
	 /Xku8/kKOeHL6lRBLTbItPudHBU+xJqSHlQA2P3I08MhjS2IIQHCm63gkQxn6FOw/Y
	 2J1J7pI4AeDDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E0AEC83F03
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175167719357.8144.17334837564082182648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7cec372814224d9b5e65bdc539a5c53bbf60555fedc0d66ab5bc9b0ae043ce1
Date: Sat, 05 Jul 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751677193
