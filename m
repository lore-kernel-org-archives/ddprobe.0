Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C721443AB7
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 10:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789640434; cv=none; b=lTdLy6V5bvj+9lPtwtTzNcnUuaorcEkXkW6V31ZHQ/asJQWWqBhIsaIe4ILjnmwKKLOzzycfqmvhYVFNmyCqoyY47knVbqwgcvOsSMRmoyuLoU5e5CCH0X9WlhEkP9sq+A+16Qi5qWgmvmxSgA/FoqfGJdaxLX71drrqtbJQK0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789640434; c=relaxed/simple;
	bh=qHSWiqDNefenj+Y5BzFmlPMcNNGWp1YZMn85oc4T+Co=;
	h=To:Subject:From:Message-Id:Date; b=YaNREgnFo1jMDVRoCjSo6IWj5swm2yvvvMDumzbIct0pdhLn/NlOlzDRM2RvspbX9nz5wpJ11X4Wz6HOlwl1TYib2Op6azNNiB4YovGkCfpK5IO2Hl9gkarVMh7ocsDuxx/7ekME+uVYxmdt9YcvtPg72BDGwV66kUakuO6ZBc8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TIbsWHJG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TIbsWHJG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA59FC2BCB9
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 10:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789640433;
	bh=qHSWiqDNefenj+Y5BzFmlPMcNNGWp1YZMn85oc4T+Co=;
	h=To:Subject:From:Date:From;
	b=TIbsWHJGDIMSUjRtWlpzW9SVTi5j9wMqIp2Su7a9MqxTLCySuRlpGug7mzAllU30+
	 5VmKNOJPH1HBHqjt9LWxcClGdz0Hb0ieHjjlWprTMWH1oDoqsDU5ndXTtTAfI7+Llo
	 0w8dQs3m1m3UZyfQvS4dzbTvsBqdxgkB+6ts4mPO91KAg3a84cQyYOvzszY3zdvAk7
	 KlaB6b2cySlIJf5F6sO/3TKb1nEyzpbyDYzlErajnOuoA9v2pq0DANJNJl4h+T6ZwZ
	 X4tuo7y43q7BiVDt6C0sncfXTyUhr7iPntFhZ3ehFkyQ1GzbvZVqsGY55XjPeRYTfb
	 8ABKckQYyVV8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFB53C982D0
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 10:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178964043370.16347.7381021707544469209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcaaa8d1a7f2e425dfa40cfe56ea14c8d751fa74c36c59f20bad96d8560eafce
Date: Thu, 17 Sep 2026 10:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789640433
