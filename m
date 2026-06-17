Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19512375F7C
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 17:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781718394; cv=none; b=it44JTDW9HAaipFvT2vG/uVxpguUpnbQZt3abhH8/vGqUylY3e9JpjivRnCOeggdYWctjLHyUQoVsU63EsvRIyMU+Zu+JcAOUh+HO4a0Ay/vx/jqwB4KbGumfF9ckYU6Z0QM2MSxV7AB8YYqkmVgEi1LgIbLElOjdPSQc9Cpkc8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781718394; c=relaxed/simple;
	bh=V6SKCUycvtexE4m2qSFHbG8fCBVbeR2EHtvH584iPec=;
	h=To:Subject:From:Message-Id:Date; b=OG2AIKl77S/7OejeMQXlxxvF97NnHXLbySXe1cAqNDrIyUUKlLzzqltPb7fnTh2SaFWRJEkCKvXeiqaFB8S5B/61owBniocI+/yJlr/ACcOKd9k3F3WAZNfhrHWpt/4HhT5sndlzlAjBScZZb+bJKmCgix/L7bDZb9/DGoyc9ec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EBJ3Pt1X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EBJ3Pt1X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C834EC2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 17:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781718393;
	bh=V6SKCUycvtexE4m2qSFHbG8fCBVbeR2EHtvH584iPec=;
	h=To:Subject:From:Date:From;
	b=EBJ3Pt1XMZKbhVzwH1HrEdp89JF1BaRTGY6lBcuxxegCUV+h3bQ6eYG2xcu5wqSEL
	 NIb18/wbiGuMBuePG9NONFKV4ydlaOJj+Xoj4CZpiBfsNTEYBIvhBXKIWnzjxzcLFF
	 j1TzllpRtOPQxg4FRBWeTGC3HAmrx7STu6sHVd/Oq97RTjOViI79mSGtOg1LaMpdW1
	 Ec8kzJhM6xUXRC+3qFM0u0QpP44YxpT6KvkQcjinz+aY6yeSxkPTYhqDHle7XyK+Eg
	 PoxaoYehXLS6wFzYgj02iqne9vfVUV2AkS5GMzTwSdSh8948hUyiBvu+HgPc/djo+X
	 6NHqDgMIfOUjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACE0CCD98E2
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 17:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178171839369.9574.5183235310786210597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f685bff45c4648f6296ee62c7453e4170c9a5a4eee9899c96f3b36b22514b6a1
Date: Wed, 17 Jun 2026 17:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781718393
