Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B5052980B6
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746044994; cv=none; b=VMoSX2/sf/ihqced/Nal1UuRUllB3ItYgOmvoRqXv/yYRp2QZom1bmZT/jBD1dzaoCNc7ba2jw6P3Oh5KD89RUAsLNl3EvZDg7zf25bAv9nzllyMg+gdpmzLqxKWe9tN9XrXmeUt+tw4zH75UAbB2L8D7IZwwnRE8E3ptJYdTM4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746044994; c=relaxed/simple;
	bh=HXnYJfKBD/2XXOT8gua7k3utnogG2xqarSw/6r3wkrw=;
	h=To:Subject:From:Message-Id:Date; b=DUJpHlt1ukeMatnQ4EbHyvdD/+Byam5E3b67KWLAKs01T9B81C2ef4xvPWe8KLky2tV6QrLfAKiQTpAXjHy06pWX4Z+JoZJhoGV8hHZNCK7DzMRt9Y265yrl5iF5b9n6x+Zc+z5nRwfhxerzeDd0uuB0dfkXmzHkPo5NDd7y0Vo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rqWSI7BT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rqWSI7BT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6548C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746044993;
	bh=HXnYJfKBD/2XXOT8gua7k3utnogG2xqarSw/6r3wkrw=;
	h=To:Subject:From:Date:From;
	b=rqWSI7BTKt26RwPD9h+CX1N3kLh2NNJTBEkTLtt8efy266T9KKt3oR8FsG7ZB+s5y
	 nYTMdZwrEh0Dh1QohoUPlR79sX0JTAiPeU6lrHyaymWG54Ap5EKukQC1hv48D5/7S3
	 vythoea6Oda7pMCGfvLOzWJA89PLUE81YMYKeHkzG7AIgUZCORERP5o8R6/T1dBAHK
	 z4kxzIXsvHGsTCLPnUnckOy1W3FbTzddwhtzniWCgyZmhMcbCsf/LZjirSASTnyHCJ
	 HEIetMTHjt96RtwxgkxcyWB87Qg528YrjAfmx+X1GK7aOy97UGjmZGvD+2iyMoAjcq
	 Tyv/iR/dVvliA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91578C369D9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174604499357.32719.6503312587127389483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4aaaa8dd1295be0a41b4a234c792c9198ab08654a721f1d1c08647079cd5a497
Date: Wed, 30 Apr 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746044993
