Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21043347C2
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 09:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720688843; cv=none; b=kjPnj0XUQVv61XDlVeBU+Bk9jb3VKTBT6SArKnEcRF5hJmw7v43UZjzZQHK0f9YjokbaWoSIuoqEpZylO/S5paeYxJbFlf95f7ZK3OU8OalERkRjpP1qiKLi+MKNSymN6E+dCN4Ig/3xpV/EJmvHxnXNPjEhifvdgeSHmooV7hw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720688843; c=relaxed/simple;
	bh=n8sc1N93qFsw3336ls/A0BG+OV1rwbkNzE8jhzM81Ng=;
	h=To:Subject:From:Message-Id:Date; b=YXMzcXbg1EdhjAD5wkaq8dETWTcso7O/Ksv4AqePCEyV8BOQ3tajKhrIg/bfPnv82X+5oYRWImh5bDzteW2WKB31UtzO7Ygkn72rmxzYShKXyRtg8O0z4uvemaHe0rtZuMvKjnhXhDYSzxDD9REH+k7pJZSqzXNR4dJqkpMh2EU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JriTxp4e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JriTxp4e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 00CEDC4AF07
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 09:07:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720688843;
	bh=n8sc1N93qFsw3336ls/A0BG+OV1rwbkNzE8jhzM81Ng=;
	h=To:Subject:From:Date:From;
	b=JriTxp4e7h1IG31bfhO/wQD1qeszU/vgFhSFneQ/CC5PoxF785KICExIsiGrrGaBw
	 hd+gh1qd50o2J3DeuwG6JHclcX72p3kakb70MOZGGJP/MexkMG56JmKbNuACDZP1uW
	 BdIw3ddrnAv/1avHR6M/DvQalUoNgSyFC9wJWKcbt6sXMNE5g/zVns+q41Omb4sYYD
	 zdNxduBArnxIAI4UiS0KbzZPXaJACSyQKuUKtFYgY/7k/vJL0RGB5PtWZjZlN8EnJ2
	 4m2gZiGuXQEK18ajcKppx05VNeTahZ7AaI9SeS8vcSjwtS/iB2TB4AYeADOLQ1gMz9
	 8tZHLU3mAfr/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6FABC3DA41
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 09:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172068884285.20711.12078912801093797093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8ac0a0d12ef86fe22207da8ada4f3daa0a76e41d20c859269b1fda123dfa872
Date: Thu, 11 Jul 2024 09:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720688842
