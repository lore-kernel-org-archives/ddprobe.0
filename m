Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 233FC2045AD
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 14:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776350854; cv=none; b=KeIZVxxBLHq+55r6sIX1DfSOQe31jPYLVDkG5oyL5zyIs7kUSaGH0Sx4ohE7tWcRq99nKH70tcrIQ1Ev7gcbMqndcyc4TJkF44+bxEoWOckUMH7+LiBgAS1MRWTNypp5FSV+KoNMctfBOrcp69CyGdJuaoyKaaTkNErcXImWfQg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776350854; c=relaxed/simple;
	bh=prsX1FTnkuGMMbJMm4LTUZPuS32Pk4SE8llkYftHySY=;
	h=To:Subject:From:Message-Id:Date; b=teib32LxLN0Ev+j9bZAyGwRgLjzd4avsvYhPeHbaUIKw3WFn/UeE8d7oX6tek2X9fcNB7EQSWXsCN5zjuvnXcCShL73kJ/J3Ozbl468ejY0SXgmGDxMgrJvYRFkz5WGKulb42czDSL7TsHBvvH7YlYUsITSzIuX+IlUuPxSsnF0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=trlRzeRV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="trlRzeRV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC769C2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 14:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776350853;
	bh=prsX1FTnkuGMMbJMm4LTUZPuS32Pk4SE8llkYftHySY=;
	h=To:Subject:From:Date:From;
	b=trlRzeRV2ffc97WdnJXXjs4sqrolvXIPDV1QJujsdi+f9yPpUZ7/Gn4basKUVpsZa
	 KpOGnhHp/CQkUUP/ovC5z1dL8QoLwbfVoS1b8usJ0dek3cJPssxDySrfgvoc14VZrG
	 JsgCaEdPFfE17I66cYCFMRjtqTeJr18BM+fLYHjuk0vrVmjOYYcOkkTzD/F/ugZJ6P
	 GGT2WWWLfZnYQyNaXaLl1rQGIXd8sT7BPwSV0CZRwd2gafdPitBpfSt9ge3FKbzfis
	 6aSinQS+BtsXviYX5324himLNQe5KOYYRgP1HIYkxWMCQ17Q8aVN0HRnODnIcFuDGm
	 FeuKC1DvwkFeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA9D1F8D750
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 14:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177635085369.11033.7028817207607144773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52fbf27624ac843ec385415bf39ec7176e1e8f87f9e53da8b136f011897e2b8f
Date: Thu, 16 Apr 2026 14:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776350853
