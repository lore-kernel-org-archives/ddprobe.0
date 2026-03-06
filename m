Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08DBD359A62
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 17:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772816694; cv=none; b=qZbJTfk10R+08rftFZnV2EH9twjNqKUlJAVOzptcv0/P6b7ceGq3LstJSK+uW+3P1CSLT/ryruARhoyKCbhM02foFVbyK27v8rPlppkA4/vUtSGPxkHCRkvKxPE/4AXB3oZbUjNCjkQMOMXEzyi94h6lG+NutJDnuUh4TwBvLN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772816694; c=relaxed/simple;
	bh=FOYlT/xkWNrhcPVqopMNr5w4d0F6Es0y8osG8oku+gc=;
	h=To:Subject:From:Message-Id:Date; b=B7KprHJreo0LqmbZqeldC+dQXMPzmAI1VypzSBfkMeNeZ2HT1gYlZIqAlY0gKypphc+Z/7xgOwP6HrcCnLvVkc7MZuLlUSuLYIyXgL+cfEV3BBQVVSeeWsflfiTwzMbaQ3WUs0ZCyQ/JIZ6CuWr12sCeK3BY4SxhjuIjVhijdqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RVgfvUdJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RVgfvUdJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A050EC4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 17:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772816693;
	bh=FOYlT/xkWNrhcPVqopMNr5w4d0F6Es0y8osG8oku+gc=;
	h=To:Subject:From:Date:From;
	b=RVgfvUdJx3a3W9T6l+fPECpeOsA+8CF8LlyYP505NL30sSRaidz/4b3tmnoyraL7e
	 bhXYFyLyK51lO/pdP9LCuQ9Z88+aw5K40yBR+W82FlGAE06wGZEjVIPpCHUYDIYBiF
	 rKfBlWeVclJsYGQwedk14yMhAl+vZj3RsM+sdICTu7ARh75ECeEbPv//joD4IbdDNx
	 g4gF3CXCEalAZmocKQhN4xg2I2Vzj+DabVa1zmAt65+1/8K94C6Wq6ViW6RCpXIWdz
	 Q0/s6vt9wIj/Y9c1tUeX0SfqXZvREisabZWhRHAiJQdGsfNoo8nxF7OxMSkCvp9vso
	 uGLflNwJ2ErxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90065FCB636
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 17:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177281669358.13189.15847641243766098617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03cd2f882f548c6aa75e4692d36f52da719fd3219b8918a44da62c5e8c3b9cbb
Date: Fri, 06 Mar 2026 17:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772816693
