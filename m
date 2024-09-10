Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20B0419413F
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 14:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725977754; cv=none; b=FWlK1MIHyiIUIh/eO+AcxBG6408mBs+Y583CmqWgUCwlwzw2qw9nPbFJZwCdUezTT6ixyHsIgTt3+rmOuBm06FF76Wg5DX+aB/Kn7soU5mKFQoeL2u7RfncaFkpZHSBKNj0QmJOfSwieGnHJtXqGUqrrZzrlZlgpnOWaTNVrLrI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725977754; c=relaxed/simple;
	bh=pktKkpDQ3T2bRUBj2l8EAIjMqktD9CzXsup0JZRxj0k=;
	h=To:Subject:From:Message-Id:Date; b=GqDPCOvDgF2xswP5jA2d+6egG4dpT4cGBNBCFkkHrbQCRYcEN+Lz6LUTtOt5VcBACTcm6digDWslIMfHnzv9l5JyvtnmDvAJ1Yn6yDJs3E06Uo/wDYOqbCF0okTagt/zX9ErZXyzA/iU3BJ/LFjojAhoWy2ao47rn6B6izERico=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LG/dxNxZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LG/dxNxZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5E5FC4CEC3
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 14:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725977753;
	bh=pktKkpDQ3T2bRUBj2l8EAIjMqktD9CzXsup0JZRxj0k=;
	h=To:Subject:From:Date:From;
	b=LG/dxNxZLU3vWi3MVkeZMZskPdbBsfylWnXO80yJep3n3ySLgVUczWyxTD0cun7VL
	 kQW5YsypQkkefVwDaaxeyzQ34u7uVr5VaXuinevY4MTS6PTf3q9/cUSgvqUVTsj9gv
	 68aHWkZFZtGHgtjHnKzXk5Zxjdw38b4v+eadoZ13TJ/LUBmtGceEQ4j277EAIb+pyq
	 pOM4uSeEBWTNq2Mbz8Q/Rf3UoeApzc/UwuQY3lIX0VNhnuMCl4dgaOWUoMjNP4qcCC
	 J2HbyjURYiaNzIeCVWu2ZqcEuVZ7wd9mxQou9cCoNtiOzrdWOQI9FttMNqMpcMd/oe
	 i1AnS+bafpOWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0C2AECE564
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 14:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172597775364.25257.17050980251943330666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 927c049a7d81510053010b684d41d9454964b9e0f2de753e334435571e71487e
Date: Tue, 10 Sep 2024 14:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725977753
