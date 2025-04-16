Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39A741AE005
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744815594; cv=none; b=eV2NELDoznhJXMBYty6TF/dTfpqFPfihlf8YHHjVsnOYq2/oFgaeZ5r/dLiEzI7oTB+0dWpp2XvXViqQY72oXr7rXEeq/hPM0vG/BJMlhbSjZnuT1pmRFJ2pBUYMSbv5uONlrq/JMFC5/tdv6w0MEa6ec4vDIrpDsbZK+oRQAPY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744815594; c=relaxed/simple;
	bh=smiC6hzpquRDYZLzJ/doF5kD6NQ7aA9Tr8rAzEQYyvs=;
	h=To:Subject:From:Message-Id:Date; b=shW47ti03nikS9eCvgS0WDULRqL3XLzfU5J7UlU09okhsuvZptoR8IqPYNLKAM+McnDTHm/N8x5eBt88GDtMDz0Qsced4Vk1I8eus+7DTdpWEjRqTsCj9F4CP8ugW2POD2HhcaW3IWAzpzEdI+naXOCSVx51lpATBmnGVoJB3g4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=enuIbwWo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="enuIbwWo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC918C4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744815593;
	bh=smiC6hzpquRDYZLzJ/doF5kD6NQ7aA9Tr8rAzEQYyvs=;
	h=To:Subject:From:Date:From;
	b=enuIbwWo4AXbJn1i4E7cn5KnXmR8zgqZw6vSAPo8eXQ7/oc24TVBIskhP8TOG1o3X
	 1QqATPOowhYmCymd6vFlbo/o2EcWZMcqz/32Mzvs3isWmAtb0jSdBHCEDfZEhqBslH
	 eLpAveqcAgxug6ZSZaQuAgnr23q32k8y6WeWmWw/3gmNa/2uf4yEm25ItzzezCxx9T
	 1pmiVdyPRjN26HA57VPNsaPr5BIZ67UpLrUGjM0lPOnyfHFGKVVL7bwXT4vn1rONrV
	 5IO7Mh184k9oPLGjfMeJExHMQq6Pe1U5ANJ2yAxPo7IT0yWB0AxIgredTrOmwc2t+8
	 8EJtgVLMDWkPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9715FC369BD
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174481559360.24675.12126949040025494897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7026dd2e6e86addd40379cf09eb1cf89b6355299bbe6d297f00a2499efa183e6
Date: Wed, 16 Apr 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744815593
