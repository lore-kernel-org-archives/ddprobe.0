Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4242747CA9F
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 07:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790840434; cv=none; b=k7TQtG9oKkGJ45f1VLgmZICqzMkqdSc2u8PaGD8XCDbbOwiTTn+KR3zpIFsUTsif0yxagDEYYpEfhFkDv9rIRCWiBFn3zmDuN/GDcMhlroXJi9nevf21XZDZhDbo00Vh69aoDwLCPMspjl+Mz4IGRfAI35EVgIHWgy3LDrfpcj4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790840434; c=relaxed/simple;
	bh=DNorky9l7+38fA4NAitqKikpx1ybIqfGqaarE2Aj/cs=;
	h=To:Subject:From:Message-Id:Date; b=MOC89WxGlCFqGWMgtEctycUPke/dSZzYkj8DrXLDbRRvZlegncE72VN6FCbma6TBw40b2C2A6G4FIg69hmyIWSPhYMqcddNZuhCY/z0KfWgywDDtiAfVAlljG9gKPfvhER9IsSsK8v/szEzWfG8UGr0syvlhoWVlGmA93afeUiE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lzyfaJgJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lzyfaJgJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D870BC2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 07:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790840433;
	bh=DNorky9l7+38fA4NAitqKikpx1ybIqfGqaarE2Aj/cs=;
	h=To:Subject:From:Date:From;
	b=lzyfaJgJwitoj7Oy7pcSHLxM9ZLmdUXfban0S05T2aHCVUqhNnmVkXUo4qm7XJRyM
	 GLKpbVQHFFQ1FHVfIz3asHiV2TUi87lr54UApgPt/G2oCtSqNv2e5lJnrZvoATQZkj
	 ZXUh4NOc8SNCvR1FPB/JTZhTD4oKT+A80xzcZwarbVAzMHh02LddkgMQlzH0uk5bHu
	 l9Gd7jo40+7upYmNO+2KLSD9BBR/bCn1at5omykWMWCfCtC0KWT378iSGQ/fKB9bvl
	 aPm+3lkWbTiWg8fl9K0AcOctlK78zUk2aAeq8RDWzDEVvM+BkLqRNMnhofT6KqBq4J
	 WXhG8mf/stXGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC713CA5FA5
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 07:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179084043369.5804.4912141823434507774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aae713350e6bab19471aaf5816140718bda713123e4b3b70b92e5623bb3cec6f
Date: Thu, 01 Oct 2026 07:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790840433
