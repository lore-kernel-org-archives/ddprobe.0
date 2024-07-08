Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DED918E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 00:46:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720399583; cv=none; b=ic/2VvdsowJFiDqOjU/1DS3sjMzMcbRWr3hS7Peq0k6dSs+zLyvDldLjkM9AHCnTDKm4LpYWVXd3lgRkeU9YC7sovlhuYx+fi4/S3Tr4TKjyS2tAAvd+x7Qj7RbnkYEXFhbdCK6sbIKLxY96DPaaTSB7u2CxM0P6I1Ecgf6NZJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720399583; c=relaxed/simple;
	bh=lPLTm1DKVF26qygVhlU14wyyv2OBL0ixS82le3OvxzE=;
	h=To:Subject:From:Message-Id:Date; b=NrcO8fqXKeGzTsDMpq3rar52l1xZ9yoJUb/14B+4VYA9J2RIb8hKhaJucmLVh8s+IXVSxTkx8FZqjqeOI9rcXuhSY+7Tl8sTNTukflgBM7BkI/4x4WcXD0D2RpPGE/Wb1VamTnwZTkCJWzdcXtS+Oeq8TCm07gsbw/NCxeZrzDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N24Gtdgv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N24Gtdgv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EF982C3277B
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 00:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720399583;
	bh=lPLTm1DKVF26qygVhlU14wyyv2OBL0ixS82le3OvxzE=;
	h=To:Subject:From:Date:From;
	b=N24GtdgvMPDr7sSsNq/nQmhChYTWf1uQUwAk9EHePgPineC6oRQPQWWEnizOAqVlV
	 mvRcHZq0OfLkfUjKaeL0R82yaejmIhMcCQ7GYBSti4Q7JSBCJ1tnYwAIV8HwjaZI97
	 zaJ7p5z15J2+5X2+6tZvYKjQe2URQPixngIaSD/Kwf5oNhCNn5DYFucikQn53SZSQw
	 cDLmpMupm448dmJe3eKW2iNcrqBL+bObxiH1ulCMzLvp3RWsoDmllgwASSmIePtz5Y
	 5FeXGTEHNt/ki8UVeI39Y6hgSeP9MIy/NteqBRIqMhT1hRY9bhHFfQIU7rC6DagJTp
	 XtPDUTr8OjhfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D79DDC38150
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 00:46:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172039958282.4762.5457430102015110440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee10565fce8034de9ab9f637b2c130b4372667e0408dbc37bb610570af072b05
Date: Mon, 08 Jul 2024 00:46:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720399582
