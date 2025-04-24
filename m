Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 350A47FBA1
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745538594; cv=none; b=kXmqHYUYTqM9oce9ZG3sicUgomI05rNiE5a5CWzUI7+o0AwiXlAgqLKH/7X2fCEa/WcdSJU8mQQUX+yhoF1gbj09yxhCdOIN9X9Ar/xxA/DGBQZ5CwTJ5Zpgjist7p8hZ9aPsmSNoKkzTyoutfTHd3TId25vNNll0w3laP5gAXU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745538594; c=relaxed/simple;
	bh=BigYgMoNPugnrwF72I7YkPJe7DVKwcoaG9Ft5SEXhrQ=;
	h=To:Subject:From:Message-Id:Date; b=IiMPXnnzqo29SmgvQukGzo+7UHPas2VpP4UDJifY5J3/oFKvImTne3O1RvDskJLpPY9kyBQ7fP5n14KZXzFIe8HpzUW+sthGcf9LYCBjG8G1OkXZljC5QBwdUWSjGqrfYJQnMc1P9LB4ZLnX8uBYnPxq2OTH06DQz/qHtqKGUOk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mgQwm0Rn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mgQwm0Rn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A64DFC4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745538593;
	bh=BigYgMoNPugnrwF72I7YkPJe7DVKwcoaG9Ft5SEXhrQ=;
	h=To:Subject:From:Date:From;
	b=mgQwm0RnU+AtQ5k57iCfsHw9PVxnXQKJA4bOIjh+RMVrOeLO/buiY9Rkb72d4QwXL
	 l2wzah6EaDquZeSBRWnfisJSyM365IwuexqlHKQ5mrG6iPJ/2KwK9oQgOjhdzow3wW
	 gLPWciEDd0djBqZGD/W9tFLn6061xsciFPIzsa64Bykov1RRS6j3hQVUxoo98mq6n3
	 Z1GGBYA4vA1B64CT3o8XnlGefzIZ7192gEDQegLnhbr1iTjxhgUXSaZjKqsuYBWqtn
	 HWZ1VfFNYGUCxxcNzWfN8G+8K/Kn4cZc+QBvf7hGWhE6iF9iA3mA4VW7jZ94/x0dWi
	 I9NgFgWvFfTeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 942FDC369AB
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174553859357.799.15927219686397502220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58e06c3b2194f748a067d655b32c08f8905ac036d3e5cc72fffed6a137fa5067
Date: Thu, 24 Apr 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745538593
