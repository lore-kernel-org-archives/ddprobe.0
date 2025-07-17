Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41620383
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752718194; cv=none; b=QkziNzKM+4a3tfAQ7KM5o5ZQj8BsdbP8ZLTyr3jSyX+6xgye0nJfdWRVeayPNNsQfVt7mWpv3a/2+lWCLZvs6p7XTxo30Y4WqtxppIrtUq057Q/f7s7FWwntVka/0JwcqD/ycHxAlC+9bLfzfxo0Jl5+eUbB3iNHILnj3W/XFQs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752718194; c=relaxed/simple;
	bh=bLHH2BLH5ZBV6ChWAw/5/zT46cmfdUFsaN5YLLsCiSs=;
	h=To:Subject:From:Message-Id:Date; b=LMHX9j32S6Vem7H8clxpk5uZOqb7BflZs5g1kc4kzhPRhkUlcGK6DaSJnHkBc6Kg5YrV7FfDt+Ex1B9n0pAdryTNh7WRGw0kANCkM97G7g1jdZGqnW3i5SpWRfRBo5ZczqjAn9xf1fsPT3K2kUkTpwMW9wbay+pM77B+MgZKvss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R4hTDo/S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R4hTDo/S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8A72C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752718193;
	bh=bLHH2BLH5ZBV6ChWAw/5/zT46cmfdUFsaN5YLLsCiSs=;
	h=To:Subject:From:Date:From;
	b=R4hTDo/SwPLP0K6aAA8hkj8Na1crfPUFh33UF0RZg4OYA9B585DYES9706fCCdUyX
	 bXodv3uPCY3I2H4hWfNfuEocO6/34sFWUz/7tVHnUVaBhN9OvDiedo0Htm1Wowtgb/
	 bZFIxk3OeMtG92rKi+Lmrkneb/IYF7+TGyYU1AVnZeX0htydSzNuxLApM9DMIaw0hp
	 Vj9P9sZ0xwHFnOdGgKrJxBgMPTYUZ4JwSTAvPcDRL8UjtOzcAg7ygnJ7BDVO0Qpm62
	 WwbYE+6TVg6EEfyfuDKeE5+JVjIbn5pMMtfuYTmOSpPjIBfnVysPgI06LpTVZkKpX2
	 /pyaAlnRN3+QA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91613C83F1B
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175271819358.21255.2395362318793721696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05cad0d1cd4ac7375b75088520c8011b928eb6f0c7155ff044678c17e0f06dc8
Date: Thu, 17 Jul 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752718193
