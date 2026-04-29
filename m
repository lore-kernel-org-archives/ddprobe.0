Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C0A636A004
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 17:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777483654; cv=none; b=G6HqeyiX9fKxmMDK/0/Bee17FqRxtQA7uYLYqrvwTv5nodXpn45V98l3Vhy3C7HGMYFBWvTPy8y+U6wWJk6YLgQElz+6epKh9yli+ekCIUipCCEGVZBUOn4SH9SJg7WCG+2MDKMV+qvcSAaLc6+VK+uFxreUyHbjlBFzxeWmUXg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777483654; c=relaxed/simple;
	bh=gnjN6LRdBc6JEdLjsyjAglZylGvjfeMYflwUkWuElkU=;
	h=To:Subject:From:Message-Id:Date; b=bHRiPRnb6jEdhpgMJf/dyGCMEg5L/bFdwueFLo3eQKuM8lLhYrnNyt4n9eF+6XQqjs+ljOt/x9TxQ1FuYIUOEvA7vnOsLuRU5U71fmA9HWWVNcaXtEcehW3eAp03TrNiJCk34xJwfXxFI3KmmvG6XeTeCR/X8HnDDg8R8+ZPFjE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c3mYIj0Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c3mYIj0Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3B4CC19425
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 17:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777483653;
	bh=gnjN6LRdBc6JEdLjsyjAglZylGvjfeMYflwUkWuElkU=;
	h=To:Subject:From:Date:From;
	b=c3mYIj0YfA+Z5HPAB7grtpbzpAL11Zyl/Tj4rhsJYYmJ/MBNBxR2C50zfpQ80u+CX
	 HblWbxq1+KMP472/IwJbXrdS8hsvlSI73pbRH7NPw+2vkYRVYKcpVyvLjCgZpMQJFb
	 I1IBsRnvACMt6X0u7GVDRlSMDguhVRyB2s2KqwzeaEaxeBnK8CYoLvKdbwt6m369JT
	 3K2wGc2IQ9VGNpuobHooUAMgyzSupiPyM6AbsnFwtFUqUsYmVWc5j0E4fhuT5lM5m8
	 BDl5+BFGBMiGkv/MZij+AZE8H9pzYznEiyYj2v6xvs+TdOh4iAOclkVlgzQesoD5Uq
	 UNMpE2VThgFfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFC77FF887E
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 17:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177748365368.8099.5721739655445567899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ccf985d3db9b966386a56d977b21a43a2142597329814d7865fda3bd98910c5
Date: Wed, 29 Apr 2026 17:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777483653
