Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E0F72D638
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 16:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732294554; cv=none; b=rkD1vW2SW+WJjG0RmqHj6mbio+0AmEFnggUUVnimbfytAxh0C/mkHVkQRxnHcOQN9Le7zF+P0bvIVSy8+zoPe86qidUngHfUezxF8Tp2lS2d9KlwywcH9jOusdS7X/yJZY5iN9peV+OUBwDJPVJmU6waYAFrm7UAB2ZXfi9b7aI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732294554; c=relaxed/simple;
	bh=loR17Y3dERv8jZfO8AgymEq44CEpClMNjQ3E4szFs/Y=;
	h=To:Subject:From:Message-Id:Date; b=ig2WnVs00U/eM5q5Z4R9qNVBxGPKzru3QL77LMLnf0tmlIXxRlOYYq21RsnJryxWfhN9HsURFfuX/ub12WS6DACVUI/n0h/rhqVwI3RVeEFrJ6XUc1WMTsdVTs6Jsnkoyq7ZA+CA043WIE7dMVRo07hL9AqP2mll/G3TH96fC7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PldRQVZX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PldRQVZX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB7DEC4CECE
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 16:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732294553;
	bh=loR17Y3dERv8jZfO8AgymEq44CEpClMNjQ3E4szFs/Y=;
	h=To:Subject:From:Date:From;
	b=PldRQVZXHU/UZxd3dIFDrGlR55QhKQdGaBiL3HMOJoHCkVtUjU2subYHstShHScNQ
	 ady2xsKlKvsCDUHwWM8888BuNkGok+YiwxWs7okcdF/KlmCjKm5Sy1fES1VNt7tjSM
	 XL1uG8KbMnuvOiucSgKtwunGaXyKoqdsamrufaX3ItjIGp+wvljNsHY2yb/QfhQdSV
	 JddsyHadiZ9cdcnYFtLc1zJ/orm9SvcPZGe+4SPOeOlE6wJq/vWvN0Vkx183YXgM0W
	 TVUhLsHPzuJxZDOs6nTfkCA6Pz63EGJhw6RIBO0bx/Pt2A+YH2EZ3O7QPegUuIbQOn
	 1yTJg4AG2rgfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9914FE69183
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 16:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173229455361.19783.11029918120707753559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6995c2bb2d0024147b943f41d2b4542d87273bf3a86b52bb790bd049e10707ed
Date: Fri, 22 Nov 2024 16:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732294553
