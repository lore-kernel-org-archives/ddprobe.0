Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30E3F28F1
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745381994; cv=none; b=fOz7J4KN9eG6xMgeGyAnHxRKuB28Md/GUaE368VW3ohiNGx9HwOtam5x+4SFRTKe8HTUMcSClubSjPzb8HBhk2XR/x0XyX8Z3QQogPd/h3BbJfsUZuJoNDeeEPU0q1yOwESeodmLmdBTnHXgiX6v69XhJHSLAUF8qJOZzSuZqy8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745381994; c=relaxed/simple;
	bh=9LsoMczDWKeiVW1EaoNBnMOdGnvZDlxX9Hut4zyxCGQ=;
	h=To:Subject:From:Message-Id:Date; b=SOeaSFUZmXSuCDssmNgwo70/OGo118xBN1ppTDfBwLo/nylcthaF0Yy1RzD+VrQgP0YehalCI6OAVXz3dEqz13pkUVigNjfXj1WN4eX6Ge71c/04K2+gado1pxxEYS0cfa1MCswxxk7e23c5A9XBfjqftVZOMU2Ra9BB5bpt55o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g1VPqc95; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g1VPqc95"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B16C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745381993;
	bh=9LsoMczDWKeiVW1EaoNBnMOdGnvZDlxX9Hut4zyxCGQ=;
	h=To:Subject:From:Date:From;
	b=g1VPqc95zl1oa8FqrgHjrut0DCruVLi75VwzLnqdX+QjF2F2lZh3BOPJK07j4nU4L
	 Nu/x43ytW6YHocsFAu/YqgVv4blAi8auTKWglwyEp3iwOiNltuLzv5EDvghvjShUDd
	 4QXwQNivAhx/lb40AmgDxGeBkgicMMGqO7SQOd2+PEWJCMTyDaflkuPHm5KiiEigZv
	 8Uo0vgB16sLjzOrLGMXYl9KNwZ1mKpy/Eyx7e4AyVKYxC2wD8tmMSA2HFG0AWBupKv
	 9qaGsBUIU7dAw4N+Tvvo4KKTxcg2RxWPo+vfBcZZgEt6g0115blFuxk7o2rDyS25iC
	 NVHVbflrkC9oQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E72FC369CB
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174538199357.13033.17523985287382471679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f91b0d200482f4175402481cfff1af7e4f0cc21496c442ded6072184befa891
Date: Wed, 23 Apr 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745381993
