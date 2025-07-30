Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1013315A8
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753843195; cv=none; b=nad2jaZQEz29FKqLLLgoiXarCN6zy1bRV7gy1H183uh7OnfIFZn+rfBf2y2+DiooDL6rosdrRXi+FWZNTGHFDgpK4qpVSxXpCf1Tiy9jM/l6AnOu1bdNBDkAblJ6Yg+LzCHTui2qeBI2h647XrddbcWxtcLZ/36PV9oWFNrBi+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753843195; c=relaxed/simple;
	bh=D7T0CwmYhWs2SFltn0QBjb25MeUcGiXNLZBLgM1dDUg=;
	h=To:Subject:From:Message-Id:Date; b=mW3WxiPyXqcwcawTaFslrV3TCOda87t2gvVvLZhMorhzSLrfcD553LfBE6m4xLTtfdjXPCf8zwsMc8cGPT0JMIS/pMBLQSjeBCUB5ya+4huKDfFfOp2dn+8xVAiXHxq80dbBx0PaxM5M1fyEiDGQi4PDRJw8ka4GkofeFBnNntc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rjZQG2aJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rjZQG2aJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A10E1C4CEF4
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753843193;
	bh=D7T0CwmYhWs2SFltn0QBjb25MeUcGiXNLZBLgM1dDUg=;
	h=To:Subject:From:Date:From;
	b=rjZQG2aJU15YBa8zDKPj9iE2faPDZR6KXAb9tTncwSJcGjwkJIes4VUdk7fGRPWsC
	 srlfmSEMYHluFHuCkWW7tHSry8C47O3Sm8mQHOaHv895eeT1JNflqqvM4JCN4YnH9g
	 g7624y3cTJ3+hWRH3UX3CKwfdjWxPOI5ohyq/ynRdFSiawxBfVgqVTUHiB2vuFIp4n
	 XnbC0Ni4ag9MDL28l0zWP3bHBTWNzp8EXZ40sNQU2ngZGRp5FNc1V3uwE8WNHW6DO6
	 T9aDiiN58LyyOZk3cIb5UqDG622BZQKuRT6WP/+mzHGaXbG5wCbRQ/doQY+efEvlCP
	 YuKWgyM98Z2fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE55C87FC9
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175384319357.5494.3825109315358805177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 220bd62a78a6f324aa1dead226447e4825f36e434e12de68eeb8eb4528a13e26
Date: Wed, 30 Jul 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753843193
