Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6418D1581F0
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743335994; cv=none; b=d5udCeFa4j9O7PLWS/xw6XQNT0MNcMkAguMXxAXOLQwdF6ZAVsOqz6nkWimCJMVCAZ4KLJ06IQiC31/UODB2a39R34XUj7cJFlVtC5OyzQ28A0L5IiqANEBlGCNA5V2oxUu0q9KgP4swpt1DRdiLngi+QqgGtJ3wcxrJUlicCK4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743335994; c=relaxed/simple;
	bh=ZZHd5lP8ple2Enl7WZUTXaTX/WgJgXpyzphIYdmU+po=;
	h=To:Subject:From:Message-Id:Date; b=e5djtc8oqar7tSRDbaS69GBWKliUiMsEpiKtMPiZ3yHpkPDMcLHLFbiTBzfQyNjeFKPwQsmIx+jAyIuLNbhhDc3xTTqNlZzFcyLhiDQ/3WOwHWGpYW2YLXLx3cvUW7Fza14DRidthLjcdOTbDBAyrysRPhMdMW9ntbzOKzRx6+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O2au73oq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O2au73oq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4BB6C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743335993;
	bh=ZZHd5lP8ple2Enl7WZUTXaTX/WgJgXpyzphIYdmU+po=;
	h=To:Subject:From:Date:From;
	b=O2au73oqQt+ZkajDNvk364NbCdl85mm+Bg+ZTyN6+5peXTx5whkp7133wFgx8shfV
	 56BaaPr4xMX/F4f+uDmUPUTkSR0hJ2Ab0E1jkOn4B1rezysDKVLmpl1RTxQ2f+kBXf
	 xVMzTxZCe0NeWXVUw/ufztX7rA1/+W1OdNLMmvUgb8Ps96il2SxatXvDuecT+1K8Tj
	 vt2be4ta8w1AGzwHCwdYwz4HKdEZO9+t4nlrhG+Yeon/IA3vBvFu9/MD652C2LIae6
	 Ae4hS4K1FFJ5GcPtr6iobB87dyeccg61oXa3QxZJr17Md42veCvs9bRctDZwbGSTVf
	 cpt5KfJpZw2Pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACA6BC28B20
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174333599366.18189.7325958219248893890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bcb8cef83b1858aa1d42bd4231f0fe9d266479ee7ef9ef140557c11f0f9a7c3f
Date: Sun, 30 Mar 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743335993
