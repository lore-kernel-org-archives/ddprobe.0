Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AECF239E80
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754681994; cv=none; b=pHcIU+G3tHCbFk27DsOp3omez2Faj3YbNXWcrDhZG8oOFE2o7Hcatrme7X8VqD1FdEN2Z+XNfZlo40pbQXdrxh9nQp1Kjbpzfufhi5P8rzy7mT0sttAG/cjcONcX0MXzHYMOwbN6Pn80g94z8byBVXI9Sf2V3k43heV5eWfBHXQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754681994; c=relaxed/simple;
	bh=EivJj+Y25Ua80N0sWjfcVbKYaBQEGFhj+hJJNxFI/OY=;
	h=To:Subject:From:Message-Id:Date; b=D5wKH4HLPsKY2nBf96gkbBR7QNA7Cfk3erUfFwjlGRVLv/5V8oH1+0x5Yo2N3haCMvzNylLhzdsfLhfuNqekkiWXs3Uy96vKtzmdv9rbZRiJONywmaY9Z3rwHO5XFOS5tQXcy/Agcyj85nK3TgGW4aYyhxNAAL4Nm7Mzt/o5BZk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sKmsZznD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sKmsZznD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A22E5C4CEED
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754681993;
	bh=EivJj+Y25Ua80N0sWjfcVbKYaBQEGFhj+hJJNxFI/OY=;
	h=To:Subject:From:Date:From;
	b=sKmsZznDAFKpfgXWpsmRIqtEnqzc4nAD7fG5EPYVGYXcEl6g2+x+LnQkMbdbL9kHF
	 y2RPRA8izziRFywa668aNZ5NNJrgQ2rvAnakWQRbbHBsV98NXIFF7T5O2CyADOvKR9
	 uDSUdGHjIG4GSGmcVk9uAC1uLPB6OE0MlBkYFHz5dXzn/G24E9X/aKdjHk6QlnJZXm
	 LSaf+9o+DEBL/jO0+W5mKg/dQheOl0fs+N8lsVEzt92koL4Y/JVEJuZOMctwuKP4+i
	 YWXTt8CivnvtvpNaxp/I827ZVkhVAmixbuLH7FyVJZD/KTjz7K3NMHfAsNETS7VeqB
	 RQvNwE9vT17Ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8BBC87FCB
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175468199357.20395.10709797638503233372.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d027a889aa3039d863410fdf377cc4fd82b8d995df4689c2f47c7ea8b5b0b2c
Date: Fri, 08 Aug 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754681993
