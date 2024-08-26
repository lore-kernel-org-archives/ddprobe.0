Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3489019412F
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 17:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724693754; cv=none; b=HjeVLCnqGo5PyXZD1kwNv0q8xgvmiu61q//bAWUKVZOpF/BLan2tBokHeRVxaOykqeB77gZsISAPbS/yK83mbN01w527qJp01bQYPs5HNjJR/vFTgWfVBD8jI58oJ03M9ejBELW0TSruRWZa7T2vTHPLnnl2uB4JBFTMK4msKiY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724693754; c=relaxed/simple;
	bh=wJt5Yxw7/cp/5n7IaJXnOWRQoRvOkXBixLYjtGjcVnM=;
	h=To:Subject:From:Message-Id:Date; b=rPGRGspxfkbxfVuh6Ncir/XHEQXPS0Ki6O1KosfwkoVkmQ7HrX8IAxE4yuXIMPkH/OiCslp1mqqTJNijGxdCpx4tAk2vkC6xq7gSfe2O8r1CP9Bf7tim626H2mMoQCEoYRJOoS6q9BwAJLkVjAqKNXxMSHoby8QYD64zedJCeew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=noaEOsXC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="noaEOsXC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7C3EC8B7A7
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 17:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724693753;
	bh=wJt5Yxw7/cp/5n7IaJXnOWRQoRvOkXBixLYjtGjcVnM=;
	h=To:Subject:From:Date:From;
	b=noaEOsXCUkEfeNQv8gMoyWxaTVGLJHyLI9dKxogw2XbhqmaGlNjjRQMxXys53Kusz
	 JCELP54so7d356gaayk1BpX0Ah90t6toB/yvBi4w1PX/oxbMbxIx+LnYbaQkIp8IyG
	 LVpLhhLIv4LBg6NlefShSUfqZGXQPvtrbFTztq5Re4Uov/++mAfpmmjf+Iccz22Qp2
	 DralDmminHm7vMwQ69iO95Jq/i4kvd7pYNDx9jInZs4ziZkFSdyluEgtY/uBr2fESS
	 tQfhilKUWgwiMGKQbnh2hG3lt4HUJTiHsqXAdmrdGoMi4k/3dgRC6E/kdGCcorink8
	 ndTZScRJByJYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C8F6C5321D
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 17:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172469375363.7383.11172837806711192095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 139ae77da95ead531b6d33701b21d332399c3c9f61bab767d9566d09219508df
Date: Mon, 26 Aug 2024 17:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724693753
