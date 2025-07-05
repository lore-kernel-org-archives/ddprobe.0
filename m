Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CA7114F9FB
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751726994; cv=none; b=fEUtiVb6iLXho92v50VxN9jCZO1XnwnXylZieGnJTGmcxoV6NLTcPsqsQDP8hk5deswgPjCjpiw7XttKL+6UJUmE4SH0v5rcosaOcWXnEyZzemXKVzPAXOzf4pvhBav5qPcW/IMui1hqkZaeB7Nm470txopu96FcwbWQ2i7C2z0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751726994; c=relaxed/simple;
	bh=Ws/4+JZnHRZZoZzChnteSvFCLLSjhhdAdCeAQEAHBQY=;
	h=To:Subject:From:Message-Id:Date; b=tPFVMLCONjRCu2dYb5RgV2P+Jwj/RH9TcdQW//VD7jVFVJ4VoUtDjz4P/rjjC/S0sa6ohmEijC42+CCLYszPCwA2l8r5QKQSxcy7FGwmkc2mD5+GvbRtSzoKjWVzO3VUEmMUFp/hgSFaO5Zsj5o9IYnd1SsUgLrk8P+YVboaChY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fqCEYtbu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fqCEYtbu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7DC0C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751726993;
	bh=Ws/4+JZnHRZZoZzChnteSvFCLLSjhhdAdCeAQEAHBQY=;
	h=To:Subject:From:Date:From;
	b=fqCEYtbuDRW6YcTr+s5UrQfupfwc+wvr2XLc1vRDnvX3B1xdPuCHvCY01bUVXLRzX
	 +iDWRMnnJd635NJ1lphAoyIVjnR+6578uu4nC4CA4qqII/nw6dsYm6I6tOCljP6QfU
	 LurlLhEUhX/rZXpfszOjOnIG+yecVkLrU6naPOnt2e/Iv8o+ttE4f+vsRNRqrBedQ5
	 R2b4cRrKPT8WJjbYCLOEPKyUGEBtPa+uySiSXd4p1saikILueojqoxV2q1PMIUldTH
	 U59xpntY2C8vm70EuqRIrDxQS9Bu4yH7wYRfCQ2Y0yMPdBG2BkFRCXe6vYa7u598fi
	 Tx+Hiaqf9+ODA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93FC1C8303C
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175172699357.20569.2001172222615811151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37783cf926cf47286bd9c82bdccd58413d4c43831c18708a778c845da895d34d
Date: Sat, 05 Jul 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751726993
