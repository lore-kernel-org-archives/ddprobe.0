Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50BA733ADA7
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 04:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789275034; cv=none; b=GxvTrZKvepBdbRlKZVRTl5BqI0/1CUJ7NAxdIT6hKr1CNum+/17mOvr1U45lseR07FmrpNBAiMQ+EtpMLdM50nEgYV2nlzHd+g2Yn9HNaCConLdGK5pJoBALDVgT3p0X0PmgR1Coh9HeNEUS2EUN4gGC3uvIrBA+4GKfmCkTmko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789275034; c=relaxed/simple;
	bh=wXz62I6GeIg+JK48gWvBt4qHThgD2cpV4MLKXRjL5Jw=;
	h=To:Subject:From:Message-Id:Date; b=mBNkQHW18r11RZb1QFqZnjptUg+Z1nw/4NJ75halnffk6AataOgwOQAPpwbZgMCQOA2pTIil2HX/7Wp8+KCLSkEZ7vl/62JBoLvFpLFcxykSbSJ75oLPjxtGc/upgjE/m108hoVhKSHSfZC+Gpfo50vIVShziSlAKW54LhI0/t4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kSPSqOiP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kSPSqOiP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDB18C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 04:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789275033;
	bh=wXz62I6GeIg+JK48gWvBt4qHThgD2cpV4MLKXRjL5Jw=;
	h=To:Subject:From:Date:From;
	b=kSPSqOiPWgURFlMJ7Hfb+98SvhS4ITcEbQxtMkObBYqYiY1LVIkMjja8IpUI4zeKg
	 jDHm6DxkqUIW0aJ4OSaC5kEJbf/6WP182btOLsyQfL6pUf5nGRi//JPExnc8G/ScVr
	 5/IS/Iyi7ri80KOQjJ+rJDzvX3t7m5V4EEQhn2AMKAVG20m6HZCiwLk9zdGkzJHxcq
	 fom/3KC2Ur8VhHjszbx4hu5RPppnoiih4x8S46iK5RV3M+2dagr1Q4amLvJ83tQd8w
	 +gWJOwv6xoKrB3za18buEXnFKeJKETqpXuyuwoRBp45urvqmDhjHL8SZQfb4LnXvPj
	 xEeg7rjSOiEjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA416C88E40
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 04:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178927503368.23376.16670022244243604439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35d20c254fb2c9fa288aac65f0c0bc70c56074a01b9d5e5307b3525f92587e49
Date: Sun, 13 Sep 2026 04:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789275033
