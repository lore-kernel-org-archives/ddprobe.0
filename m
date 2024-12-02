Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CF8B1DDC24
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 21:45:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733175955; cv=none; b=E/ygzUgG1kik3ghC05LnqsrA3J5atFFlfFejg22z9b+AyFyV8KtYiBsYoKcB3Mxw0TznP9QBcP99x9R5m/rxTz0WfrWcmA4Xtdyw7zunLAO42QEQSwtD9iMyCGptebw6D6FX+b1bdqlPWiHUZbF6RqLP+zDUO78sJqDeO3zHyuM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733175955; c=relaxed/simple;
	bh=POzAynISQduqHQcH1GK1pOGVsUItoYjrIKIzV6KkNhg=;
	h=To:Subject:From:Message-Id:Date; b=r0w+NskXRAkVdwpHwsX978QBYQ5PVoCGWWMdG6lxOthX2034M0CuM+h5Ja7ccRHsln+q4yOKooQ39PCAjQddy+RD+Z3kupCwrRmdG1C1SIVhW4zjletdN+pdUgZMHB9pJ3MhN6I7uvkmGqaknjldX0+iv16O9iGAdXjyUifekxw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xg6HLgk4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xg6HLgk4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B611FC4CED1
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 21:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733175954;
	bh=POzAynISQduqHQcH1GK1pOGVsUItoYjrIKIzV6KkNhg=;
	h=To:Subject:From:Date:From;
	b=Xg6HLgk4AMnJW7uJK1N9TMNRAlEuL30k+HQT9iIBJ7F6Rhro7bnEJpJdbNglWyVxu
	 anfPix2zJSkufUvNbWKfJs4ef9N17Y8vPY9XSNwg1l3mDhjMfqaCEK4huUTkguuP0W
	 Ao8WZSKt/SmF9zCWFv1J/VWG+XXI39Xmhvd2Gm6anExJHXY6ttMrGFxWGL88hc9Iyn
	 2sjzlupubk3HIsFcMkCATH2nLqxGh8uxwSuEqGdyLXZz53bnuATuhD1V4UEixanqMM
	 hF0+b/XWjWH7vJHaGCdl7kB2BgFV5jYJmh/xZqBxswTZhlaAKwP4DMLwvWT27RAqhq
	 Q5yv6gaRn0YJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C4A8E69E97
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 21:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173317595363.8248.17034260114125410820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: beb27d6a8b8c3c0c44b77fc537be754e3fb23720c0f55ca3bf7b6bdf386f254a
Date: Mon, 02 Dec 2024 21:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733175953
