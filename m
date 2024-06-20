Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A7A11AB91B
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 15:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718896823; cv=none; b=FNESsFulfKlIkYJUc0AAfeVNjVsIUYivIPjQV8oXs4rH+8pUb6YkmAShNaVEYMOsFO1xOJj0axX8fCvGmCdPj381pBYwT8xGHogl4r+hu83lLDwuuB9QLb92coP7tAKQ4aaNa4QUZls/1qXkbAy38/bIFLlIBqfnOjnu0+cCqdo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718896823; c=relaxed/simple;
	bh=K4iRK08Gfwtx/hcuTEeLxB7Ak5o6xDm1qjBsN052SMQ=;
	h=To:Subject:From:Message-Id:Date; b=Z+FxR/xuiLolI6Q2tUrBGecMMujAfVvN71srMYf0glKmmdPQKZWBZ2Ybb0VWHqheAa4b1AiNl6tAzdOXHeKQgXolLxYvOtNgi2u6y6koPAfTEBj5iCc5svajtYZnn86OQNOnVxhUHocf/F+6dI6n3K3QL2qY8GEj7O2CbndSHfU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mkW8Ky3w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mkW8Ky3w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1E32C32786
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 15:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718896822;
	bh=K4iRK08Gfwtx/hcuTEeLxB7Ak5o6xDm1qjBsN052SMQ=;
	h=To:Subject:From:Date:From;
	b=mkW8Ky3wM1hg9s4TeayoEOpjsqoM3QBJYy/YVwfh63CmaufE5yHjE8ECAl7uCcKBG
	 suxwZQ1oPfM5uYtsC024o03d01uw1C0/2zYxjNQu6sC7a62tSXdF+TEer/ckvLrl0g
	 EiGAA5bKoRlGnn5eyCzrgG/Hi1QlelUyz8DFQrYFliEMQtMBFDcdNl84DC9gzSshCm
	 fL+/m4qAzUno2Pitib84MvjyD/y0l308qYYrtxDeeFeXagZ1MDP7CJuhqJupu2Jq79
	 qmeTL7dNU+6QKWd8xwPLl1loo5hFbrhi3hzji/30jjijJtgC2JA0fi2OAReJd9Yf1h
	 Rt++II0xGP2yA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA73CC27C79
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 15:20:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171889682279.28144.11576998069010623750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2b7bc0b374918a788e1136879469af0d977cd3aa1dc9c597c92b9cf3ffb5354
Date: Thu, 20 Jun 2024 15:20:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718896822
