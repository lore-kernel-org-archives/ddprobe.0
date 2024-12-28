Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 339FF382
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 04:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735359354; cv=none; b=TXs/l3F8yjq2Ykhn8fYLaCyb0SgJWeuaLb4O0FJIt8Ayy2a08H2qqeWhstcJGEmYTaLzzp//c0cvy8aItN2clJeze1yhA9o+gfyGydwkOXlXMuo8coN8k8il8ZSKvazuueipdJ6SdB2vE55hAp05/Zu26wjsJfuHvHZ8WEHgkTk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735359354; c=relaxed/simple;
	bh=OSIdNrFeTu6QfGEQid21YdjZ1O3IbF3gBHVLWi+TRzs=;
	h=To:Subject:From:Message-Id:Date; b=N03MwlxymDa2luGgAokYIGFnVq7ncpsa0C7inmzR19Cc2JA25m+DopUtnbtz3WdE4Mfqci92vTcU1olWkPGydMVC2X4dh2aZYlUWURVBQE/fFjczxxlfcQUvJeMRd3+yRlUyOuj6JzqdjY5nd6be7iISqNTAV/FKJpBKTfnpnv8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bd/5JX3c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bd/5JX3c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA642C4CECD
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 04:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735359353;
	bh=OSIdNrFeTu6QfGEQid21YdjZ1O3IbF3gBHVLWi+TRzs=;
	h=To:Subject:From:Date:From;
	b=bd/5JX3cue6NHS6jtYExu67pW9/F8E4F/eZQUBmNRSIY6ejpuh70iCzYPHKxct7hw
	 U9Up/QgcpBA9VWnypBCVnzMf1y9mmjjkqzGGzJSCDqalgYVgZUaAINGPipFTKbu8Q6
	 3eaFk/MelphuRYSbw9Fvt4foB54ppZCynN08Di25jX0xMFEa4WfYC2kG5HKPfkhyry
	 y7OR2TCrfw1bF/7I8IcWiaPbsWOJDoVfd5vGjwjlna2OggRW7HiyK7S2nepgcawmJP
	 2amIUH0rruXwX/Gfbyuq3Ry9f/tYqb1F9a6fSQlRZp7d8EpfMmQH9koOwDXtFfGta+
	 udYEeK5BltUIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94AD9E77194
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 04:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173535935360.25027.4789049500286745628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4bf9a3de218e161755d8a95ae2c0a9db8be3173676bf953ab1461c5c2cd01c3
Date: Sat, 28 Dec 2024 04:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735359353
