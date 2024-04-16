Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 394E5132813
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 19:59:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713297563; cv=none; b=QkzFYqL9pAwznNPzdQO2ysdex+1Vu+3APERo64JKxqsvCx+tdROTtc+7h5FMRStMsxCQk2DaXInw8sTP3Hlrr8WRODVaIMZgmVKeCrGkTHM4dELHxlhYQV4DH84cMq1Me54Ikqn+CjeoF9AwGVdvmp3IxwNprjZLeFPRe77TIW0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713297563; c=relaxed/simple;
	bh=QIiQ4q5m4Bq+MBymwgPy82b1GG5f7xmg1Qwks2mAojk=;
	h=To:Subject:From:Message-Id:Date; b=LFGqxO1/i5EwTYeRR6LVCPdHMNhDj4kLpxb32l0DN/oN9uoF20OzvE1dQjIGvtPb0my30ZvYVYdrXE/LJfI+Mc6pcGEtMxmh5LHBPEnF08vPhNsLxiGLDbQHRzsMTH5MJk3MgP3/p9bFyudi/piKhr48QpsxYMscSaLMLJqBqj0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dGsLSNjj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dGsLSNjj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0E4BC113CE
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 19:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713297562;
	bh=QIiQ4q5m4Bq+MBymwgPy82b1GG5f7xmg1Qwks2mAojk=;
	h=To:Subject:From:Date:From;
	b=dGsLSNjj5Vi9hOzSe7B9cB6jiSUn9bO9ZtRRtAhJvz+tEXwp2c85tumE93Ngr9a7X
	 eTo6whewQ1AWQEFPMn7KoONrHSyMvQQQ3dNhTdAsqzTsReBxzm5bllaCTkQnjKXnH+
	 xP+fSgjs4Ry+uCQIgXHnWNmwjUTmGSsGtRE9MQi0HfAVexsl8mCs/Ctkd/65eDXMdZ
	 dCXK3vByu6aPKYQuvDGhshPjkOU8kIqJJSec6IYAOGsSPLMPVFMYtLjFrOG+Ru92tI
	 eqMSoj8THf3U0r1jAzPFfrtcm3eELOGzNC6eT8KpSONuBKSrVSEMbRjNvv4OV1n5Cq
	 9hNXPlnKVHcjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB324C4345F
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 19:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171329756275.3854.15159050299274536243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80dfd050df2133bd59460a6614d8aaec250246be9047c53ab3dfd17fc39aa39f
Date: Tue, 16 Apr 2024 19:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713297562
