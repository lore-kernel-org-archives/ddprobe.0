Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29E0E31E84C
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 22:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772490894; cv=none; b=AFCyC84ja12S4iPn05prLB+MpccB/DRIjuTLJJCvKuGX6xSP6sO1IY42I34d8ei0XEnCnrBglvBLXVtScacX/DsT5BhR1VNZcL4yIffY+jhgGNSKzpTlbbH6KyiyP7dCNyjdr8vFqg783HGl+S+skbOLuQP5B/2k2aMum8yytSY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772490894; c=relaxed/simple;
	bh=X0pZhHtrTzqvePQdaqjklDmTbhWcOYmTMSOHe4Noqo8=;
	h=To:Subject:From:Message-Id:Date; b=rl9Vj8vBiP6u6oYSNryQ82UjMTN51gLCMgB+0iOCy6Jn1aVa2KUuzHCKBj2yeKguRwdS8rklxHYEsGs3qjHhAeEAtBtIkoga9ddTTQAERHqxOnMRtpGtFAQbFlO4gl61QpzwJmJoMDc3/ScWOsSLhbgDAvPrZwArmmDQJULZYlE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RrpuXk/R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RrpuXk/R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7134C19423
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 22:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772490893;
	bh=X0pZhHtrTzqvePQdaqjklDmTbhWcOYmTMSOHe4Noqo8=;
	h=To:Subject:From:Date:From;
	b=RrpuXk/R5Mxw9akL0iOGaKnam8V/aru+kOEBE6oLr+X610Kmvw4jewBwwGKXf8eHD
	 TWqa6yolx/tbjlTKB8VTp3MXudpSjUM2gGeiA8W8KlpZYquSfwR9RfXbVdUHgrmRdw
	 cuT10oJS4iG1jrgOXvFPUT0OOd7Gd16WWC8cYylyypxTbt4H51WxJYKEfPZUNocrk+
	 4GANqR7R2V1MzWQSpdIpsSOaR3JYGEc+838BBJ/cESIr5rMszcG4bEwBxf6ccqzeS9
	 nHGDNBKkrjVgSnYS/YFWvcGwT9EO/Fo9EJzaVlws1vLMUijZ0/En4IOWUtdXuerimp
	 d/LXeZGhdWowA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAAA2EB3637
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 22:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177249089364.6564.6275646304097904363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 318235355da90490310a9007fb3c7a2247324d98d8d513c06c7f56f8713107c9
Date: Mon, 02 Mar 2026 22:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772490893
