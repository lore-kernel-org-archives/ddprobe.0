Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37D46849C
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744678794; cv=none; b=mpJxhLRyfx4LD0GT6xBL2vgXPVUcKJyt7PaM6qnC3abv/vCLqzqKbqrK3nHZSwP9E7nCgXSzC6W9xtB2sr3oR0bcf0ewEm4tFn+fwnP6MregVXtVX7pFK8dAG1FIjuk/JJc3usQmiSjOjQMPCrQ8ugcKVNrZpmDp0vgbzBykghg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744678794; c=relaxed/simple;
	bh=bYgjIR+mY/u7Dk6ohdOEgvBPz7ZFyWRIKtqRB3E34BM=;
	h=To:Subject:From:Message-Id:Date; b=HhL0ZsCBh+mM5z6vYzPP5gmYXj02FhsxtrBW+IDoiKALFwxzhfXdi8DzNNziRUPwVRuZIo2Yjrw00ZLdl+OrjrM7+K8E32XfLZ4Dza++b6Dz+Rtt1/FTXOpOOJajh+oM8PjATfbgIyu7DfzQvcEvKVBQ2HWf1rZMwqbRw988WPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a/+yhvV0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a/+yhvV0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B35F7C4CEE2
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744678793;
	bh=bYgjIR+mY/u7Dk6ohdOEgvBPz7ZFyWRIKtqRB3E34BM=;
	h=To:Subject:From:Date:From;
	b=a/+yhvV0VKcDSaPCr3x+GDbbkzySdo+tMuhjb8rx8BAia5ePTKBYkb2utOw7XR7aO
	 mDI9CnURsrAN+eaAqm1JeNsAN+9qIA9+SQmcUIoGrWsWBLUPGOwUB5E5G180hZ+y1m
	 3jyCUmwuQdZK3/6KkaJubxxTTWR3II+mgynkv0JtxfuiQMNXV91ejaI1VY7OpSREHT
	 qO/HP009By6zN0JSARSRPvs/GoNZZsRMSUCVc7JzrdC1nfNV7/UZ7/w4YrWIDZC3a7
	 cPERiS9wpkAf9zyjla8507vEBwQ8DzJcI5GDX9+cps2K0U2s8NsYBmCLXWIPazvUKp
	 lKondVVC06x4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CCB3C369B2
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174467879360.13122.3966929295043231159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a088c33f7b4d3b43a2eb9114053e43d28da38e4a23fd5f368cc9ae2c058d4d0
Date: Tue, 15 Apr 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744678793
