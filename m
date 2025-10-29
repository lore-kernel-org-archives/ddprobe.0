Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4060B33F361
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761761994; cv=none; b=CPK4ylmSVta6XdJ8ZxhPT5RRhYVwruUa97J/jKodI+cqFr+M0DItQ7StzVgBd5yq6E7DEPcWoonj0G8Bt3zYY1D1CRFexe93xqimsiRBrvCTnOd7Z4YrrNFLBYbwGS2Ir5Rv6pwF4sPrVRK4PkCbEdEHkflm2SLV2sDisEfft3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761761994; c=relaxed/simple;
	bh=dPWHkbH3eNVWahiSSJ2cXSIyuOH4bRI16duwlOURAsU=;
	h=To:Subject:From:Message-Id:Date; b=l9G4g2YiWRAUyC4h9P7aWXxlqPn0emX6rngnKU9ES0Wx4JSJjtSLyN/0siQlMH6eqbypNf0G1qazAkvN2KwQ8mrpvSQ6STt3jjgWkqrN3UwkKSlij0DOOiheeKKn/yO5BcrN9GgHuJGEYVhGXhE5Zypx31iEvO0j65RdiBbOFGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tNimMdWP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tNimMdWP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1604C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761761993;
	bh=dPWHkbH3eNVWahiSSJ2cXSIyuOH4bRI16duwlOURAsU=;
	h=To:Subject:From:Date:From;
	b=tNimMdWPTI2zek2ADNnyDHzrrzmptWZMcMp1j+FTqVAtNz0yV8EBogE7BgyWDHVyi
	 QAG/vCXdBA97GO0IaxeUSmhjLqgS+YqmKETE5YB1wnzQci7lzAqqyp07feHgSnmjDK
	 YEsatPkvxEfVdoKM2kkCXYIKbBjUia8UQG4sQ5eixgPkIqnI8wb1TnCQIub1n2TZXZ
	 +XhUq26LTVRMH/suQTzSpMQJiqY5k8mHIVR8iuriEF1ZZ1y2S+Hb9XOoYjTYqSRBGT
	 sVLFuEzoo4S7gdcK1ZtofrHoKdFUe4JFyqNJeFVK2WpXWrLoCDCntirEthbJyd/i7C
	 27pHqMBmZ0xNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A233FCCF9EB
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176176199365.3413.6808588494284843512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e825ae84254884c4d5b0f4be70b7c0f1fd5643d6d9fd7c8b0f9235b515566267
Date: Wed, 29 Oct 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761761993
