Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 194699443
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 15:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774710294; cv=none; b=JmpW0gy2zL/JeK1Ywg9dmN5XzJpEpOR7BNBgHKTEwulQ++doLTWi9Dcafgn6aJjO4+0vp3/9f6Avy/4eYqPsjN1Y663omin2Cgaz+ynkO4WLqvvkTMRl4AZKlnxMa4ZP3sJ0bbsTNfZh7RWCMSivb3IRTDvVviWrg/5QUsfumgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774710294; c=relaxed/simple;
	bh=KDvjZL7u8SyEXvReg5accYMBngP4E4a6NNyYgNs9RcI=;
	h=To:Subject:From:Message-Id:Date; b=SRzh37FGdB9u+gXwLGb33l4VYw1R+N7miYzbvjPcb5x8fq2StaMvnm3FPddVm4mgge03gPO7GYFX+Tw6j+uGpFRmq5iWDEkTvsd973GnWvQO7l4UggloQrCyukWIRcdtdo4yYt9eW3AeUiAuaH9Hbrm2xSOETLrzBk5crPcI02E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J7K8nLuM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J7K8nLuM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A82D3C2BC86
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 15:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774710293;
	bh=KDvjZL7u8SyEXvReg5accYMBngP4E4a6NNyYgNs9RcI=;
	h=To:Subject:From:Date:From;
	b=J7K8nLuM1A98SCloT1qNw9jOOrBWFRDDWwr2AGCUe4bS8NvFI8U7WV80dIXTKowDq
	 anCcZc0G1cEpRl/fBG8RSwCOjQJ9Q/PjAulaxV8IEjFu5KbhKP99a0jBV2TGB8E8xs
	 HAn3Q1HgWofx1BGQEcG94JNK3IPhUTlwsFpCP7RL56qg4EEQ4TYFvmk6GvfWP0cQxk
	 k93cdKDljHxUnxiRBo9+dJkx/GWgZZmPYRbPmZHF9bDuP+F8GgnoPBtbGisckJWeOg
	 zwQtr9tupkA7XzLfnfpz1MOmATuN0J4Ueu5Yu4wdJEsu3kOD385d1sofrR9CHN9tux
	 TrxyZgdqgIM0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9856E10F3DE7
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 15:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177471029358.5522.84396902397589610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d61ef596ecb61d0a984ccc560bf8d8fc928485564130f819fb1ca87e6b6d43d5
Date: Sat, 28 Mar 2026 15:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774710293
