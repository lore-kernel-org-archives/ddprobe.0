Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2300E22F16C
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754286594; cv=none; b=oA27iff0O+1mhxsynWhrkLuLYg1HQHSXTy88Aw3ogUafn+E39UW693FNM8JF0szHTEGxpEclPIvtB92Ibt6KhK+RJZQkgNbf+zCrNxpKxNgi9Zf8XPIMuSuusRE3HxEnhtPJ1ue8zZt9PhE2BbQt/0NyUonD9wFGmhZL5Cs5Q7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754286594; c=relaxed/simple;
	bh=4sz4U/UroYQcHk76BMkfbratig/lmAxwmLw2UdGw77g=;
	h=To:Subject:From:Message-Id:Date; b=t0XSVn9mkit+Df3nR/pLhpawXguW5SCVeedOexd8WkIOJErSQIgZmJSh7DOzZ6yyfTF9MI5/cUYuZ7qOmbTi1LvnawiWZgrHuGSehNoXQsoS8IXfxeX4hjxinrProzSgMRCvrA4/zkY+HFBy/OqesvQAUBSDNUTxdOY2elCA0Is=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ni9Zl1iB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ni9Zl1iB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A02B7C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754286593;
	bh=4sz4U/UroYQcHk76BMkfbratig/lmAxwmLw2UdGw77g=;
	h=To:Subject:From:Date:From;
	b=ni9Zl1iBz4OBJ6C6Upv3rlkYMLtfuiDrpVYx6ujEhcgQW4XDtfpJ+Ai9FH3L7qJmV
	 YcwdfOtFZ8SWAExWsKDf3DN86sUfup8sBjwvLbI/MlHa4JLXGb4ejzh51X0kK2bt4y
	 vaIl5IniJLJsh2eJut6rOAvBo+NijH65UxDdDUZigXdsurDuciaLJDPf8/k0N0JS3o
	 2urzvCokP3Fz7PHR4Hy4E4jJwCnRj8OmwVp7MdPF4zK6IEe/I/H1581eJb0rbcxzzY
	 bOVGLBakpcLpjqz1HSh+Eu37isiKvpDtwQ1nus0B4gFk5fNaxCS9mEovYPiedaPEQZ
	 iID/lcXW4kj/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDA4C87FD3
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175428659357.25119.5541127076167761360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e507f1dd80ebcdc31111020eacc08f6e44a44629878d6bce42d5ace98101cea4
Date: Mon, 04 Aug 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754286593
