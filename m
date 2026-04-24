Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D63CF33BBCC
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 20:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777063653; cv=none; b=kQ35yx5NTBpOdQj75SXzTI4kmlexeJ4qUkWnpJP9T9fqtqkb68Bmvn12sLHXMOONQXH9taBxEY731qxod1sSgXfru16/RRe/ODqS1Ub2u7Km4joy11mpreMlQCrik4mnHzgMf5gW4+eIxGpXWrxkdjrY+S7/HxpAEXeeLx/o4ys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777063653; c=relaxed/simple;
	bh=Vu+Vt3/Wr1ptNZzpr+jqXWbQO1+SVO2KGvnRZPGlH5I=;
	h=To:Subject:From:Message-Id:Date; b=kNa0s+a6fcFw2PQ3LGliAEj3DfZtiIzMihXvfohXIVtM4Y22StFUGwDgwxmGUBNAwz971uXuVYhP/cvOmeQx4CllrxZMpvholY2A/zXXsvSToxXR8f1eywjf4xzVgGSW8FWskmARw7Jo7uCfXh5Uobp/+vfnUGLVzUt+FhpHJ8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GR4opWgk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GR4opWgk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B96BFC19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 20:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777063653;
	bh=Vu+Vt3/Wr1ptNZzpr+jqXWbQO1+SVO2KGvnRZPGlH5I=;
	h=To:Subject:From:Date:From;
	b=GR4opWgkfr27fUS7/mUVPDFLUJ3F8fgHTHxBS7/SKSMFsiAtl1TfZTEWQ4cGbbD8g
	 FSw5F+9DN9ALPn9X/EL42xdkPi0OxTV7/Y2Yd9vXZXvuP7F0JpxOTwk7uMJi0ISFtl
	 lNeoYGL2GZwsaiH4SCd4VwRyH1oju9rw7DU9s61aqKkuSyf4OMm6+ZlIREFgy1vutY
	 69jJr4YGrLFoT4krR+F9vlWT4wGR/1hxG2uKOyvfwHhnVcnmx0I5Quyy50RQzDhoJk
	 fQIc6VgNCyb+TSdxlKs0QY60aotX7TzgQwncLkarIvHLH+bEzIt/AhZAIqGI/iRh7G
	 thKoPM6J6szoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA768FED3FA
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 20:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177706365368.6557.8088291270828643762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ceacc8f8a6d14a0f77ffc803b0e648d0a51fe38d4335ee78b91c338d1d443a7c
Date: Fri, 24 Apr 2026 20:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777063653
