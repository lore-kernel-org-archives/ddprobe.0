Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19AA615E97
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 22:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767394434; cv=none; b=fePrhTW47uC4/Ud0xvoWajTM2xHp731ltXCOJXoVaBumBup8/JCjkNHNXLHWLhBxFkS3U0KneRSA/4fjvT/kW536q+ZEssUT7861Cbs7zhmgh/pzSo56l5E7i0/40neNi8R+EfaRxwHMGteqJSAc9ilYruqfVqqkEn/ga8PUtBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767394434; c=relaxed/simple;
	bh=k5atDy3QIdaRdVEsk0IXviWyH0kxQYvjFczGYC7rJvQ=;
	h=To:Subject:From:Message-Id:Date; b=lyaPXRYjIyIKmjQd3aFPhlG7Sf3PzmeK2lG2bA9QNzyr3bgw2XV3J6RL/PdgefhkjRC/wZjqJJjNKfymQ+15RvpIjGDvkEkcuO374gQT4P6DDzmy2YINM5XgQk+hVNh3EkNuB2hkT6Ofyssc0ba8RF/JglYYRNGVyHvggGIoB/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X5dpjVdt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X5dpjVdt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8BCEC116B1
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 22:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767394433;
	bh=k5atDy3QIdaRdVEsk0IXviWyH0kxQYvjFczGYC7rJvQ=;
	h=To:Subject:From:Date:From;
	b=X5dpjVdtvrj2fXiJAeABrWZzMCCnHmJhq6qSu2DBE6cVw0MsmXvsERWV0YgOMdqg7
	 Wy8MQriecb5qLGqVLvB3aYrah8oIRaeroiFE6bJiFasVvatRyuN0jKXSPUOcxJwyF0
	 Ba9y4g0hitE8wWipL5/Yt89o+yF4ArVCnYsGi5xwLGdAvClkrBi4WXm+9z1CZ7zvAk
	 YAJIAGwYfUSTeQzGwqqUIhQH15nSYKDW/Mjm29M79xKHYCLI7TsJOJuTXIuvTyTf1g
	 +V3kQ2QfxaO+ti23QpceO5OHVznBdtdiXntbzky9p/8j4XJx3CQ9sNsKfS86oqbxvf
	 IE/72EB+sT19g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 936FAFA3751
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 22:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176739443358.30301.14295933142098509533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1822cfd39b1ee528308c6e491ed53cd58d1b6ece52ff411787d620e2b6487088
Date: Fri, 02 Jan 2026 22:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767394433
