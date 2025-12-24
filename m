Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1528C1DED5C
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 04:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766549034; cv=none; b=c4BHupC2fA9iTI91pWFoFQUWU6NzI3sceesWjgAcngakfIg/eM+hoRih1liiI8yDpD50mC1ktdxiYx2YyZMh41U0LE1bbHRDm1/OxWuaDOXLhZxtkkvOrPG4b8JgR2yocsag84KmfJDaX54l2t20bOvSGREghD4BumiAiWzVdVQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766549034; c=relaxed/simple;
	bh=gjQPtF88BaAMtbxYhVswI12XQKAvkQ5GDvWfyDImGM0=;
	h=To:Subject:From:Message-Id:Date; b=McR+nP22qGnLOkv+zAhkMnFZs6IXeZczTs7BUccCLfenagDwjcnKpDg8OgRPnGGOxNBbjTB3A9eeNrx7tXh6q+mETXTUONzWFqg4MF8iVpFBGqv+8/VS5mEO/URgeM/LcIDnKPgMtd+CXuFJFMupCyywaq1UcKoTzqgP8iOvCwA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UmgrU8Pt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UmgrU8Pt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1AB1C4CEFB
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 04:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766549033;
	bh=gjQPtF88BaAMtbxYhVswI12XQKAvkQ5GDvWfyDImGM0=;
	h=To:Subject:From:Date:From;
	b=UmgrU8Ptlgluz9fsHuHu3MsK1TsA4y/B65p4uyjkQ2TVKeLOuw9GaKGRdSqYWSSIj
	 XqRpEqgIjy5raAkvN92InGq6+d9YZOEdR+eIWppPLrAHRqgPyfHHbZbupkzWmC+QV6
	 LbezsqruoWJrEuEGKMREFDQmyhDzozbWFf4e1FQi5qsAUxfC2Fl6NXRYh0Kuy4gw04
	 HFc2mdHhsVVdIbQrmfTGiyK67IT3/EhmbumAhuRkG756Rlvc/EzbwnYwttf/5OBZqK
	 lixTlnIWoQm0M9QixyVEwaHIPJgb/ssnZwmPUA41iHzKO4pRQiCUy9JgsqgNy/SMQm
	 VcxxDUjaTwq+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B73E6B270
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 04:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176654903357.29269.11384210646235700637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cc973a0cdbf286fa9f039b73fe00e8146121d3f71cf3084666f845027f19c33
Date: Wed, 24 Dec 2025 04:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766549033
