Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46E37181D11
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 15:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716998063; cv=none; b=ZmVNeH6AwC3tOPRcafHfXbm95Q0fR4M4tFnz1PNBxPTK752Vzw5gNDxjzGGfILMqyt8aDmga5C5/+diJXm7VM7Y6Ewwb1/LffuJX9rqu4AP7HpwjqR8T9is8v89fxXwdEjp/Uaba66m9KvYRrXJKP4GjydJnmvAmGGZik9i+y+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716998063; c=relaxed/simple;
	bh=jL2FHrdlo9rXmMbL88SSJDtzItqY8Y1fH4SLD4M2QkE=;
	h=To:Subject:From:Message-Id:Date; b=jAB1Dsfq+3dC9J/Ogy0HxHB7v/iDqZb8iozVek+YKWC8e8uaLl2assJZFQ+k3nH0XkUOL5IhzJI7YCGkqfdhLvd6M/rLGOh0qR/fEidf/xwRPEMSXd8boqwvzIiiiMbCpu+zVigv2IHssU37WPD0Ufd9hk4f+Vl9lO5J3M2LZZk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oo6YtuaO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oo6YtuaO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7F3EC32789
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 15:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716998062;
	bh=jL2FHrdlo9rXmMbL88SSJDtzItqY8Y1fH4SLD4M2QkE=;
	h=To:Subject:From:Date:From;
	b=oo6YtuaONWfvAAGhhMQPC5H8LwjTH/ZJ80ms5oRpa3HMQq0oj/YeiiRA6lo9TV4YD
	 iVLIxEIQf9Tm2SrahZiH2V14WqYidwLOneBrzfmg9f21i9odMMeI+oK3n/1QU4LptN
	 4dS+/lvNESfs3Pz3ukBUPTYlugPRwW0t2lQxAepYiC6+26HJWQVP2oZdjIDLxFdyr7
	 3Q+MYig+/2QssaWuxY1GW9mi2uahrw+kzzc0nsa0iECsDSUXvpcHubAROgJ5fAo1dr
	 5QJCcne02a4vamOetVm8M80AkvP+/0901tn3pNZDX+/NA0A8C43ftAv//weBxxeHyz
	 B/TGjCat/5pug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4B98C25B7E
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 15:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171699806279.14463.971088345274365463.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab04c74fe844ba69d8b89379972533a0c9c2bcae831745d3016ea7e697d8b008
Date: Wed, 29 May 2024 15:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716998062
