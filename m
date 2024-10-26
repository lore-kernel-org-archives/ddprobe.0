Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26B39101C8
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 22:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729980354; cv=none; b=EkoTXSGmGJtsjOFt+swMd9YaRKCEL/cDuuZ6cLKZUztojvTSZ3xE7mR6pIbXFZMZgQ880nfqY6CbnWk10+Gwc9t+5E3emF3S+dgXsaFbLpJiPHPLO2JMBHCrQc3FJVvZi4jDFcz5I1pFbTtzynBupZOPJ0Hrk0Gu4KCz5b752M0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729980354; c=relaxed/simple;
	bh=DN2a/2L2rAXRqP4YDJ9d7mJN5y3nekm1mZRza0XJWN8=;
	h=To:Subject:From:Message-Id:Date; b=gMH9HFyUNA6SvkM+3BdfmOq4I4SiGEkcCxARj00OLZFVAauxxsTIt2eyAzOUlA5UsspM55qB6Rjb4hZ5+TyecTVVl//f8VlmroW1r+iFhqTMlUz8jfBiw6xLxdfMYouygu1emhe+MXOQRE1Ls5N5KvJZ9BuIOWgsC1N//9EF2cY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=exoA7Xpn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="exoA7Xpn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC7B1C4CEC7
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 22:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729980353;
	bh=DN2a/2L2rAXRqP4YDJ9d7mJN5y3nekm1mZRza0XJWN8=;
	h=To:Subject:From:Date:From;
	b=exoA7XpneJSMg8+giPfMylpeFPUxev77KfiZ9nJcWPFhWp4RAlSs3ouFzICz7ULVC
	 JFs0+ochFfHlfyVBuZw7WVLkgGHHAEgEfFo4T/enK3wGPbuY+MrRu6I+KjRzTHimwE
	 GLLhus/tcrEPTeTmqug4HraPRQ4NLJwcU2rQpfnC641Gz08wgpWP6U7x7jpgF+IOse
	 opAdqWk7+7JZ/TAFeIJQRMurnh2dsesLbvgmUbgykjY3GBqpBoQS1YKopo9TzZUar2
	 UGM/xXZtj5rdTXO67gxHjHq+o9hs2jiXuEL9Vo20hLp2iSY6ZxdkRmjQT2mYScA/YU
	 YfaBnLz9lh5Dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96987D10BED
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 22:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172998035358.26845.10380259768202303017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c800964b8f76d9b09e4708c450fdc269d6406dd65327a528c19bf02d1bc7c36
Date: Sat, 26 Oct 2024 22:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729980353
