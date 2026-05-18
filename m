Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A1AA19D071
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 01:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779067234; cv=none; b=rY4C7PGVyt1+cTrUFD4wTE1HQJiR2p2JWmZsNVi6VhJXjAm9oVF1ZGXeMfsoiOs7JevbXRdv3UVAfXEYzxsLCHneZELdOJpBK4yhsoS+rUf+AqqRNcvjNvsLAaRFQ6jDAqSro5mab7KN72zsQAx3GVdRUoMs4IscTVMivbmcQiU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779067234; c=relaxed/simple;
	bh=hNAXhLUqTSBbEsOgnML7toYp4zAz7QCDKoXR+QOt0rc=;
	h=To:Subject:From:Message-Id:Date; b=i+Wx2An5Uzz3Uws2uaNVGXj+lKk9OrqUByYiKswAds3+mlCm79artYHV97hpM96015MenyRbIPd37ApnaA/KG+oeYE1eZ5dexmClZeIYbk04oadLvR2hLJbBhta1nys0lJVWUQ7vPVFleK/CFNxIrsR0UgRnsbZDGK/18JG+MeQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=csWv9IYs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="csWv9IYs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8C35C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 01:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779067233;
	bh=hNAXhLUqTSBbEsOgnML7toYp4zAz7QCDKoXR+QOt0rc=;
	h=To:Subject:From:Date:From;
	b=csWv9IYs7py6ucdHNhvhE+eDvri6cM9q0//Sq042V0en34/+7JcyFQI4q232tMKVo
	 CSzvQB+mmeOLKAZTjtE2pqJPTbV7eSjQW4wHNG0edB/lHLqCcuqwqipqdFR0ktpo58
	 f7ofpkz6U4P56tBZlESEklAZHLais9c3bn0FFgnYkj8La3sT1UyUd2ETQIDX3C9Xbh
	 sXDeO9cW5o428lES5x0mv0QuXJ9gyfx0CkBYAZIBJVNvFrumuPNdC8er0fd+ebXhfq
	 BnJ8NdYJPOU2EhXfgndyURUPBkUsrwR0sXYjKmWasJSddQFO6Ap/IczlAdA1QOfkyR
	 x5QeyrOVD1X5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F14CD4F3D
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 01:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177906723368.5830.5158534541951151591.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52da81f306d86e7966b7fa8cc4b273ae0f32ab12d976d89671e27d365655e33c
Date: Mon, 18 May 2026 01:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779067233
