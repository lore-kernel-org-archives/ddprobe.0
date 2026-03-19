Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01DDE1662E7
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 00:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773881094; cv=none; b=opVWfvSBtgWMB5M53S7+fEX8xCdUk+gsZ+8HE6bz8V1myUomlpPJHRzfaGY5TlqhwT8bPrdZWCRRTXeQI0FQpdRsDZcaHgoAu6Iejpzk0Veg+3eJzGh5E4fiJ03S3ZgVNLW4pF2CprAdH5h9R569eiSZtT7uyiJ92oCDTbOGEnA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773881094; c=relaxed/simple;
	bh=iS1V6oUBnuOUW8DkwJyNNOMluQvXKiKl237lWolRB2w=;
	h=To:Subject:From:Message-Id:Date; b=rHnpjGK3EltcYVYrjU1rDgzx4NJKPBlLE2jC1SOdrEQzpHYLfv/yQCSQovbW+UOdFgvxYKVNuZrkAREtousrnDC5uS6V2dMGEvVFCsDslgzSilkSg3A5bcKBigcg95kLGA/ilTcipiD7Xj/zuS02OkyO/9w6wkh5L0f9X3GmTqQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QnFWLLXI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QnFWLLXI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A241EC19421
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 00:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773881093;
	bh=iS1V6oUBnuOUW8DkwJyNNOMluQvXKiKl237lWolRB2w=;
	h=To:Subject:From:Date:From;
	b=QnFWLLXICWU03uS7aqfmFeMWF0dpyOw/+RoqavgqqPRwJHxpGuJUtF9itXu1QZeU7
	 3UGbY+eK+91akjjXwbRoH3L6cQ5f2Wbh2Irbqn/8xGmarbsWI0bhHOQAkheFc7rkzi
	 XS5VYcQOL9Sb0XtODqo7km+jJaLETaGGwzXe4BidwgHPee7tTN+LPHWBaNErgnz95s
	 6DsTymXBV70E8T79lLHB2U30EeFw7MbOlD6H4kAoMNER+uSK3COaq/7Aa6Reirn1Vn
	 vSFLv/7G5a+MCwV4XAWd3IOjvubZL1r8sK5187tlRAbbSNB7xeILckaLgwOuAR66OF
	 WvqXkdMIAtdkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 946AB1088E5C
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 00:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177388109357.12880.6951704415174123090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86a5f48fb8b9be88739c743bff6b798a9c4c2168fea5d60e29b02f9a4910254e
Date: Thu, 19 Mar 2026 00:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773881093
