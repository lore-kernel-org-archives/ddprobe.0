Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC3062E419
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 12:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721391353; cv=none; b=rZsXuerX/NKt48kSnFPoUP+GupGlf7uwKVUpZhf+Nq43NHHOYvfGl8UHFSmY/fE43kgfAvjbEUnzjV1QcfswtKgFs1haVF0SO+6LV7uYlJuIwM+A4UvdfIOyAG0dxft6leYUFvCOqDa0WHz/MfjS6BX/hGNJfptkrnzEsOMZbuA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721391353; c=relaxed/simple;
	bh=W3BlmRWfTNmjzr3rre3SZnB6WxvmuaH7vAynjaM7UH0=;
	h=To:Subject:From:Message-Id:Date; b=koGSnvkgHQv/ePcHzpmtOZ0rfK8SUOHuC0h+bz8RUqTPxHxSOzHUnuKiq6cccNs6BfXTobdaws0bS4Gk1IdtFxrrNTwFEAl6kDFcbTBH9sEdXZOLmDCr4Uwt4MzKhuEwGGb6xRFRbcgnvLjK9x6dq0f+eXOHSwzaVnCQ0xlD5aY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iBlalHPA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iBlalHPA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA198C32782
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 12:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721391353;
	bh=W3BlmRWfTNmjzr3rre3SZnB6WxvmuaH7vAynjaM7UH0=;
	h=To:Subject:From:Date:From;
	b=iBlalHPARB8GpeORkYLBySLd9pjpU1KShZEn2Q9jWzI6XvL5XroQxgtO5MMleNY2R
	 VogAIDZ7QZZlQX6Q5hUKviTdVMd6NWEmFbGbWq0BZFL/zvvQjtlZPsK7PqaO2zRr8t
	 qw4G2kIys/0YvkOuRUkMRdsQAz7WBUWqWvDqTl6FsP+F01lfPIGUnvTYgTaaEgPYWy
	 u6p4Q/5Cw5FF2dsKMyrzjGsU6QDI45wcd4sEk4Nbi0mYLspnppPZhLiOKdHWPo838k
	 PngzF56F8Y4ruUm12b22q4ydGOAGJLuBD2QgHEcRepC5/z4oLMMtFqDjSVhHQJrxxF
	 pZgufNlstAdIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C15EC3DA59
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 12:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172139135362.9202.4470475867147182686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd1467e5b0c1dfc8132e6138782b549a6d38e553ba2fb506c480b79194e427b1
Date: Fri, 19 Jul 2024 12:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721391353
