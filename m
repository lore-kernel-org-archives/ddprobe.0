Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F1312FCE01
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752780594; cv=none; b=apa+JmFhQJFUyW0wAsCbeVcM7ZwSAgMVeuBCT2zRkUG83un4lVMgMzre2PdCjL34rYbom4e/OmpGtuVst356mHZ/7z8TV19L7dXIxAGpCUmliD+0DEyOj8eTgr91ZJArgafPCQso7qKJpAvTWsfgcKeK4lWZjymVzKnQ5yL/drg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752780594; c=relaxed/simple;
	bh=oeEj5gKDsYWfXSBLpJ8wHU4FwPLud2MQDU+AG2ErpME=;
	h=To:Subject:From:Message-Id:Date; b=qQObtWevlc4EeOB8wXQRxLFFjuNXFy+a6RcI0eN7x8Rvy8fyqAsVT+m0MTGZy66qnHT5bNVV4Dm7hzF6pZVBgvLNLAOk0snRzPYcjUVuzDBJH2+3o6h+yoSsvM04S53Ea4rWMkE69ggfFIVsqFeeNFuo6lEZUT8uUSES/TKJMd4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sKDeKjo/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sKDeKjo/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2578C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752780593;
	bh=oeEj5gKDsYWfXSBLpJ8wHU4FwPLud2MQDU+AG2ErpME=;
	h=To:Subject:From:Date:From;
	b=sKDeKjo/1h4EEiyUcMXq8Hi3gJcF3aenxzf4hO7I6yheucdHI4HX07ib7APNP3p/H
	 j/CY7BBCDipdTPgjxD/eoc48Hois0Vlt/vPzb+Pc+TT0Ap06PDqaqAwT8sYLTbs6ni
	 ZhmbMW7dSbIzqYyzROkNolyNZu7ETXwAd7RZ71Ilf1ziop47wmHCQFb6f/XhepCtW4
	 mHSWhq/N1RCURiYFf+lWv/o4zDkTfVCtjHTob8hSIZMNa3JhcQ3sZKcxde0P/6zzxH
	 0k9k7jMr3RbKTR1LlWl5ecCDA2GrX8ag8553sYcRsF2siPDK7IrMXDHsrwYZMw5kge
	 xiU1uemMP1+Yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92644C83F34
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175278059359.18695.8830216744302388028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2a6b6e3dbb27cd0874ced4c2e088239e70a8391c4afaccee01c1922c78bcd7d
Date: Thu, 17 Jul 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752780593
