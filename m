Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F73817BB0C
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 14:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726842354; cv=none; b=WZIz9jwrcusDqaXhLi20VQx54dEv/4kGP3o1LgLeLiPOubeJhSJchjShc8A/DtkVWOEYOwQLMTXD1B7q93PlBsW0Qq5yIneQpg1xMYii9syh33BgnrpXfGJgx6HYL7QLqbPIUHtD1NjxU8vS+2HEWSs/t+xcjLIaSxT3b+ZntaQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726842354; c=relaxed/simple;
	bh=cfQWp/KyB6x1k7zYHcVAnfv81HqMHxlq/WWYmGOSJIM=;
	h=To:Subject:From:Message-Id:Date; b=M7AzQBD+XLVj0N8y7ikMumyqciJjIhwj7QKFyYuLlL+l0Ezv/+tsLm21GrScpjswP7x1dNKe6dz5CT6IPfTycm26CpVhMaN7rhPJDQNlxH/ydZgz86IPZ4vf2m8f14tZ2mvBSre6jRVeBgYEOiwU/sHadAQ2+shGg3b+BzW8Kmc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jZZLjqTp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jZZLjqTp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF790C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 14:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726842353;
	bh=cfQWp/KyB6x1k7zYHcVAnfv81HqMHxlq/WWYmGOSJIM=;
	h=To:Subject:From:Date:From;
	b=jZZLjqTpIvO1q0wLLDvJe3A/jcHZuddhgiy4W4/2s2C76f8658NxvYgx0omBoITI8
	 KSk89Du6ZqCxSuD8nUS9TnklbERGwTzRjLqCukN11bIbM2q9Rg1m9c/Pg7v7ygPMYq
	 Xg33Ef8SQuflBiD7RjJAlPwYqcnLcfHwv84uvoYRvQdPbJtvYm0D7niTZzwKCOLBJG
	 iiLfQGIAstbmFYLsKp8B8M0GmZq4xjrZYlpYVOgUqRSdL0fsqesgAJtRTiG7tAKi/y
	 MMUC7KTD/XIYeiNZcq7oFq2Q9+HKtyKcHekr6CviYzjKvX2aK+/eZNTH16JREL6L9H
	 PMIg97iEz1cwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF52BC78853
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 14:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172684235367.30777.12594479903548873960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75fc2738e7cfef84a9188b92e1c9f7c5df1c49ffb7f2ad87a4a495a4a34a5b68
Date: Fri, 20 Sep 2024 14:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726842353
