Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A8692F37
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 03:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741491534; cv=none; b=liAPQwASyAJH1yMxag5NYw8sFtNibdguP7gDbRjemjVxDZ1A7Do+2satpIP7/KgMjgoC3BpNI4DXT4odVGqmaUIZGu0mfqHWCkgjZ2nIk+0WlYKvMkpekNhVUcYpJS9aDf/TCuoQZyiWH4aeEIcHoColeXNMHOV7EGzzQDyp6ZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741491534; c=relaxed/simple;
	bh=6erqMjwVdFroZ8FYxIvimImcT3Gh+ReZrhKhhKS98Ro=;
	h=To:Subject:From:Message-Id:Date; b=EDZ7fE8n+mygNgSeQdNrnBvzmC3N1RrXahD8FPYnqzjuQxV9W9FaF3vw03FO03tF5IwrOBFa5Mwk6sMonlHApma8OmNBLQaiwW8Y8L/yoGwhaGiqc5L72Xd5PIJT7hVUCTBRjeeduiRDt/WV+cd8Z5TKNbe1fzT7rJxp7AFnWZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=snywtb3H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="snywtb3H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADD35C4CED1
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 03:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741491533;
	bh=6erqMjwVdFroZ8FYxIvimImcT3Gh+ReZrhKhhKS98Ro=;
	h=To:Subject:From:Date:From;
	b=snywtb3H08ba3X7p0H9joKOp958pVBRp++TYEkgwOUtS2PkU2YDmB43AOg8gZrW0U
	 4OYdTm8Crzac+09mqD4b6Kx8KEogrKBV/hP4LI0b9I79Ip36eU2LjrvfxGkMG+9rGH
	 ODwb1m2b5RYQ4G9iCYld4vTFy0lbgeGazLtAW4rVo0iZF8U+LmT4t9hDGDd9Ia9Mgu
	 YKZYdVe8T7em8++j7+qXnyAjZ/vmmp/mwcl9apPIbMKEdyivk2X9pmtYBc75LxJaAy
	 WuDt2+ndruK6+v57zWbnK6WecDrNwuoeng3UvwUdO+3iqW6ENwJ5R+QoeqdhGwZGNs
	 F7bFVTq1kK21Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97366C282D1
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 03:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174149153359.23401.5669639659607076387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eeace7dacdba75a6777b73294698829c5dcae20364306c4118ada38114d6cc58
Date: Sun, 09 Mar 2025 03:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741491533
