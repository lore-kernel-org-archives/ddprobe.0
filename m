Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 485B65338D
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 20:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716842063; cv=none; b=WEteyEKZ8dSkiMnyhk2ml4p9rsMQjjh33sUn7RmkOSiRGYY2+8NjEOIqLD7QVsjiVo8ZLlz6tyu0EtoTHmrVGzzqw//Sh9Z7C4THETOSECyMqCaLNEm5SCd5OBwb4api0w5uGA9nbf/pDwV+ro7GrzaAXoFXYWZitrEtMMw2lJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716842063; c=relaxed/simple;
	bh=GU+oAD/eOO0c6Nt92mmel3GCaXZGs+2omYSabQxhbrk=;
	h=To:Subject:From:Message-Id:Date; b=oi6P0JaMfIcdfh9HzD3PQUN+KdgmUTCjRZobVoA1qp3/HH962iHQ8vbojN4XxAlgyYEwDwHAid0tyVs6XOmUiJdk0BhJY/zgPrK+xHhiUswRLILCHvqPD3pFXgowWA3P+KyrWj0xCG/bulFUO101xdMLMrRXU1nmh8d2SzetMmI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GH0G8sMr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GH0G8sMr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF6C7C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 20:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716842062;
	bh=GU+oAD/eOO0c6Nt92mmel3GCaXZGs+2omYSabQxhbrk=;
	h=To:Subject:From:Date:From;
	b=GH0G8sMrnlwGxBEEA9a5ZuosZIm1vOtvpH+SFPoH2CftSbB4lUcEvEM+yUxlVX+aq
	 3kEXZKee2FavVPj99Gsl56o0nGUqYdDdDjY8CfhcqkrfqAcPLuI4ObqDRMicDjzrJg
	 nz8HH/CVCb3e+xuI6vBWdhLZyLxcUuE3fgJk9cUxBt4dtz/YAyt1/AjkGNAP3GvJfF
	 N+OzvWM6xacxwebsvLT1B2SstG9RFRM2Ynefd0Xa9g+obJ3Ll6fKVMc6jKtKIMIzyM
	 T2AQ7RGvps5/0xv8F8GAh3NlPEOF5SSs7G/+qbNIB/JzdAZwJY98I66ESUXEnYfCvK
	 zwg+2olrv8NNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8E56C25B74
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 20:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171684206281.25345.8341791543109951496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64a7356b2ca7de8524e604b51bbb0eaac3a4e56beddc6c5a762da07654ee127a
Date: Mon, 27 May 2024 20:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716842062
