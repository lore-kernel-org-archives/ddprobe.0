Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 363B01D6193
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760170194; cv=none; b=MiBSzEWyn/CF9NZHXi7n6XArqkNKnYrtoslaL9mEfkUhT7Gmklky68nWaIBU0sAgUJTELdvQ9rRrhGdF4cLL4NXPAg78P2OXYf961cgsRxvBpNpI18xgNW7wRJYqYyw+6KzXyygMrJO5iMVYPA+0cgDFlNCZx/uN3SaWAy1LqMk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760170194; c=relaxed/simple;
	bh=h+l3NQkS+hAJRdkF2O2uOJF8IblmsIcaZ5h33UBLqIg=;
	h=To:Subject:From:Message-Id:Date; b=nVTnEI317ZeBxr1Ei/DdNvGO35y823im7uVvSKBd83EF6npone+atI7+UGKrWLBT+BGwborfuqhM1rQIUrDsL4hTa4d06V9B1CJWvToYh/jQOBSwxT100sfaKAe2OCXarkznHIZlbhr44fLFSh03acBwkXzgjJX7e/lQSrsdKMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iOUOlF/P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iOUOlF/P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7129C4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760170193;
	bh=h+l3NQkS+hAJRdkF2O2uOJF8IblmsIcaZ5h33UBLqIg=;
	h=To:Subject:From:Date:From;
	b=iOUOlF/POhniYMQj2IaasNDKW2FnggdOSSjn2yxVGu3EUNHvh2HXUQuWDq/E//8NK
	 lPRdVwMJ8/IiSuDhE68OwC4TvVlIrW573zZYDjrP+BuBmvnvgyRtbBF72agik4HIaN
	 wGbgHc2mA8g3eDfodnvrhIUvJa4z0zAooBvv0TxnLMFfBVm+asgkfGZUZpunocFaM8
	 gD6CyCC8wrPsNNU3j5McC5zmNJZ1asTEIx0WET/xBA1Y2gzBPfpcgVe+TnSUH+AY5/
	 u47TVFFk5lh7Vcyn9Z9yiy1HLbnXRdpJinsjXxvWqs+A2Y3SHVwbxnDcix74jBK+bZ
	 K88Jjgx/te/jA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 957E8CCD183
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176017019358.13511.6050567710639966852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c1e652c160524f784bbd0fe974752c0ba136f14cb0d142a4f67c5ed5bf70035
Date: Sat, 11 Oct 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760170193
