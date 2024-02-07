Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 007DFF9C3
	for <ddprobe@lists.linux.dev>; Wed,  7 Feb 2024 03:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707275297; cv=none; b=fT27y/7SpOeQTGYuMeyg3SF01cINh9j6EdmqE6MXkbWXkPDLG2RdlvteFQlvr1bxUk/j6RnVyeHwgdkd8XOJji7uDoonNi+FqdrTFxfXIK75Njikg9G8N8AtBsf/Ek7basaK0r56fwvNzsGh1Je265KQQKjKbQhPZ/WD+h7gZ5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707275297; c=relaxed/simple;
	bh=9jWmDO9wbCZVpIOFK0jZJpcDQMbVP1fCb9HDqbUGayU=;
	h=To:Subject:From:Message-Id:Date; b=VouK8kaf+j8lNpRj2TbUm8Ru0GDT0PCkn6Kp3o/HIaQ7NjyJ0n7dQJjtC9UhAMfKd9eXoLhCyOOkTME9eWCBqPF1QYXn9Ds/yIhMMMPVhObiRWhoKFgzwlPlLnYAzJ882WI1KCFhbJDeZYy/T6yrrESxaqVjDUEIo+iojSGHVPk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nsx2e30i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nsx2e30i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8CB2FC433C7
	for <ddprobe@lists.linux.dev>; Wed,  7 Feb 2024 03:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707275296;
	bh=9jWmDO9wbCZVpIOFK0jZJpcDQMbVP1fCb9HDqbUGayU=;
	h=To:Subject:From:Date:From;
	b=nsx2e30i6ZxPbH1DTvKyEq75BpuVOQpT1dG/C94fkW5qnbdX5z/mGfvENiSKMwr5a
	 +cabHl16u9oy+5OAvuNmM/SFVBOPbVXaq/nAiwTbFDcZ6Kt6GpfhTc+2NzldjQPZF8
	 1ZIX4ByzMT4NVxPguVrTJIo7JyOUAtqfDcQ4KQS36EJgpshSxzVV6Fj+lMp6SImu9p
	 fXRWHDN5jMBHl685JY+wxBIzqHnUOdimAe5JsoNrQbN1Opsz9YMwGgMuT3yZJ/pY41
	 FflLwFY4aaMF3DtFfuh1rV+QqgyzEh3CJDH0PPP9WhC24vVzaewpp7gmmkznOvQDMo
	 1dvKFyrW90l7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7532BC48297
	for <ddprobe@lists.linux.dev>; Wed,  7 Feb 2024 03:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170727529646.29226.3597689627920564259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4565defba02836fb7963aaa21fcdb836ebeaf644ef4aa9d24f303a6783faf2f
Date: Wed, 07 Feb 2024 03:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707275296
