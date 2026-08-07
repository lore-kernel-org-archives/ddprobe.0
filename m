Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C7D43E49CC
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 16:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786120834; cv=none; b=KwFRMR9J+A7XuMp2KEmvra3+WyKr45ZEpwUIQ14zjKYZKXweUPoyefkL1lqtefNMbzs23SKUeWD0ANboFsLLfsmcG5oJQope3G/tTM65ixBWnrWy6s5YkvizWfzzXq+R3Epls22ffRTECDYOZfFq4B2eRAypQBah4MPObGmUxBw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786120834; c=relaxed/simple;
	bh=/OxrNN79PWzfXyouSW2y8DSerSFmqKVqtBLCL5K7KaI=;
	h=To:Subject:From:Message-Id:Date; b=tU9Ua+qN5fIYVQ1OcZubSVk+vTuwubzhNWD4hc4l1zWfH1CRNQL+PcrKDgqRR+zBhb7J6WGETa9na6vQQxWX1YaDUFVEW9moK2k4vkKNirOTK5mFSRMizj/IBd4t4D56LF+lwwm/WZxZTO2ZhlF2BRIfFEPOtEJFRvzXSXiSzMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iNPhEV0q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iNPhEV0q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEC57C19425
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 16:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786120833;
	bh=/OxrNN79PWzfXyouSW2y8DSerSFmqKVqtBLCL5K7KaI=;
	h=To:Subject:From:Date:From;
	b=iNPhEV0q/abGHwerBDIJlsk89PUxzBu1yln5he1q75o4cnLphTGoUTrOIke0YZF85
	 YwmHzyiz0NwProIHcGMO6s9YP1v4dVWz6oC4itH/quDB1ga9atTmimqrwLuBt7Vpvv
	 BmozL9ZJcqb/HenbTTRiNlYLu66LoHcsXAroLKkb48jOXvW84gQyHMV8r4nVJT/Hh/
	 AexAqecYGzsYAIv6z3PjidT0rXSxro9ue+52xGZHSS+gyophMR1ieIC55fXlh3pzcr
	 krEKV+MvdGCHqJ0zLckh7QYfsaimx6pe+daK91/yMaPsGUrM3IMS7/QvVfLKPeZSWh
	 ox9drk5s9SHLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AACABC5AC7A
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 16:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178612083368.24193.5714567622998206069.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e9988b1b1cbdcff1c6483d6864a16ae5815b883457d79a5cd55b675fc532be6
Date: Fri, 07 Aug 2026 16:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786120833
