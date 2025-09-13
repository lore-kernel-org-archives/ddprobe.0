Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B3211D5CC6
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757785196; cv=none; b=XOY5GgYmT7JLCViWs97sokWFiEoAInqL0HGNoKSgM85tthBnFu9memA6zFmYMgLfK2LYT3vTzXO1J2zkmTyE6Uci90VII3u0xy7wU05rHESKEHjux3oL5etg875+nfHiIXBqFXRSQu2YMrST47Id7OVwMtkzM5IIJdyvqm6rVFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757785196; c=relaxed/simple;
	bh=ZoQgK+jEr713nWAweYq/CJ93d4KM94c+rRFjjek7oEA=;
	h=To:Subject:From:Message-Id:Date; b=J3H/otBTbfSqCxz1GwVkr6Hprn818k/uw+3DiqPXPELiye2/pY1a/DYqXtHTNQUvWcc4Tbwx7DsNmWggRfKcBZN6aKVcBmaumiMWt2JmHd9B2IUknY8g7LjoAiYOw98XPmdjp62CHy7LqXwg7zaQPxUY2Ixh1xlWX0wJSV8p7Oc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KUKWtaFT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KUKWtaFT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E67DC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757785193;
	bh=ZoQgK+jEr713nWAweYq/CJ93d4KM94c+rRFjjek7oEA=;
	h=To:Subject:From:Date:From;
	b=KUKWtaFT6qkaZSiK3lls3uaxshKlCxauxUbA9gT/FbgDMwADwSThE19S9Y5qZFBSc
	 WFxbK0raFbk3+mB0aM2bAG3bbcsefA3aUjNSaHcD0wnVqT8UGaz3YwxzUYvsbTFKdE
	 KrP4Gicux2uMQUsgP9/CUWZIhrt357hwIxIN8tZtgUhAGVG5AH1vQ5iSKiWJgJaOnv
	 PmgLVJzKOJR9tj04nQm6hYliNyg0LYoCLtR+ypQYr+nqgA0HaHxIGba5yE0WF04Mcm
	 H1t+3PJeGTLSho6snQJ9dvQveRPQSqtAEzyBEPAsRJ4Q+jumOkSWRTFyF4K0ZFpgVk
	 /kyuhyj2y9Cow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED32CAC587
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175778519357.14733.9351264365887051740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d73eaf5775e8753614c248a42850802b136f9a36af8f188eaab12bdbc276e5eb
Date: Sat, 13 Sep 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757785193
