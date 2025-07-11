Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4360C3FC7
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752200994; cv=none; b=BqitnOJzW0D7wbv7ya/0QjBAlvUGPcnEiqLResJk34EieCsG2ttb716zwjCeai4rG8G1Sm7daQEpZbRi8TQk02JlTQNuE25EYdwhUe/FeM9fhljyafVjhSN92otYdwh9ZqI2qKkG9XR0huo8ZUIGQMnzhV363aqlz/jpwN7eJ5M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752200994; c=relaxed/simple;
	bh=jsV2VJuxtNvqmjx/mhEQNyfKMSnAvl0yZMe1iEzY8o4=;
	h=To:Subject:From:Message-Id:Date; b=oq6A91mJ7qk61CChd/lw9pJd79qs1lI0jYjspLa7stkSUYaF3KNTpUDs/dHuZCQOgzdTPUDOYQ59EfEK1QvCX3sRdYX91uHr9zoHdfa1HVOgu7Jg6AEBTBrYPEfgdMUxncdZksFUUcqDZpgegPygFshR2Hdq3zVHp2suxUgujOo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GVOamxv+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GVOamxv+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A609DC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752200993;
	bh=jsV2VJuxtNvqmjx/mhEQNyfKMSnAvl0yZMe1iEzY8o4=;
	h=To:Subject:From:Date:From;
	b=GVOamxv+qbMDMu+dQJaoQlMZY51HiYWXAc1jmf57N9h7qvDFRR0DFtvLa8MusYVqQ
	 Q4/x4NvViG6ogqr+/KIkuZ7d02Lq0Mf3gcWOmFUHjO1RWs31AMa5N67lCLqLL8E8ZL
	 BZGPfmmm4meG29TI6hWhl4nJl8Eo4aC9yEXyGjqzosGATFNpsUggwXGh4AdHeF7KEZ
	 Sc4ck8Oas+68Y7Q3FmkC5qwP4XOwKOwElhxgscJKOFgpAeDsY1YrL0huurMHGyuuYe
	 n0MxfEXSskn593P/1sWv4dfGcybaJpFcTzHQmhE2I6v1vgTEwB2H51FTQ9MCGt5Y/2
	 m2KIHXRk5MTFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9316CC83F1A
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175220099359.23801.2928306023215579328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9e6efa2ca814db5cd685d6d74a5a5e359d0e687c975b6e3237e5df69d0fae45
Date: Fri, 11 Jul 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752200993
