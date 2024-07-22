Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E21F12B8B
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 02:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721614554; cv=none; b=OE69VUANc+/uSV/aRyzKrCk7xqHnnUzJ3w8OyxxxsFGB5vRJSisq13OLtAclxvHB6JPe0qMZhW70mD0bqAf1XBNaH7m+cg+Qnnz0oOTq9e1Bc24fxCR3bNGXIONZUVEq1WtfHalbkOgjR2Sp0EVu0oxny/EST9gsEz3oO/SqONU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721614554; c=relaxed/simple;
	bh=5hP1tA1i8+hGr6LWvCjDCxxX6nrBgGZcrqxCy0LaxgA=;
	h=To:Subject:From:Message-Id:Date; b=XBtVEvrYUZaXraZ0GMguLgEX/pVIuOWy2rbWranmHRmvkyMiv5CHOzLb/XZHx7EpK/cUtu+2GVgEsOU3GicsNKw7IQmmfERy23VIk69gvCUElcFXvshxkkj1joO3+XrXUO4+OFeer99PR0dFFhoW8pWto5n1FBtNnHBYDaio/wA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UuuaiFQy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UuuaiFQy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A16EBC4AF0B
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 02:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721614553;
	bh=5hP1tA1i8+hGr6LWvCjDCxxX6nrBgGZcrqxCy0LaxgA=;
	h=To:Subject:From:Date:From;
	b=UuuaiFQyUkuHpahr3yF0NSqDu9StkSquk6MLffs9leF28P0/LG99UJFrGe9zgJubj
	 0T84SuVOWm0eCPE1cD7GscJCh0Uzhi+Hgpdap1yWkD+s1eM6hnAv+OUrxIl2a2biLt
	 yOs0Yz7UUFc/b8cbtYTSDjSpu5IyskISHUtuOz53H9Nl45H1d15Gg32xvQ1UlGJkZ5
	 nHosyXrg4b+EiOC15fRPpKBQ/Aep5PY8Ubg/akbNcotOAEuPCQZHkW/GPcuDGUoM6x
	 LEp6bL/hwQYbiZqlK4JdgLi/g85MzRucpMd4WerOjt9CN69tbJRKjwtKYSi1EG6vef
	 PiNUGgdtQ3KSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F84BC3DA5D
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 02:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172161455358.12887.6564380846831195912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10127214705b4003126d753bf59dd5d495d0391e7187201623e6daa144401a0f
Date: Mon, 22 Jul 2024 02:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721614553
