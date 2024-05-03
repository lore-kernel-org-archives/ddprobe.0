Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 610C717C95
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 02:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714704143; cv=none; b=qbMJacYp4kL4OiSVg/hGfdts6G9Qgwfc9K9SRZGu/lUhk5ZF6+kPnaKZaBzpOnnq07n4Ws6ShISUvzr/uNhgWtS2SxzT1wUVYwiS+i+pmbCXreaYDtT4SSm2UM9gP7Sju36mGG4FZLCg/jB/BcCBXfUE7tsxusncgSlQ/lpB6cU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714704143; c=relaxed/simple;
	bh=IKjCIXK90H4C+yZkgA2EEs98iH6y6rjfBAIsRzN82cE=;
	h=To:Subject:From:Message-Id:Date; b=G82nzkXRuUK0iknx7Zdt05ZLvWkznEBEdhR3MArxnSwBR/aONYb9Livje0mP1Hij5VAWXgJ/uHI7QrbiaCt6j1PoK4De3bWi+siB0r73H8RV9yY3mLrqtVKZcbVDJfNsiDS3zwl7NsnCzC0S2xzV+oyWg9JuCJnHj1fqQLopsnU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tfSxtvrJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tfSxtvrJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D90DEC113CC
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 02:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714704142;
	bh=IKjCIXK90H4C+yZkgA2EEs98iH6y6rjfBAIsRzN82cE=;
	h=To:Subject:From:Date:From;
	b=tfSxtvrJj4f32smz/ALLcv152zKctGgUwz45zfFOM5QAN54KERUspYjDAE5hD9Ypb
	 uepkCFOFGXMLt83zAEGGp0vXAEVtU2UNJdmL1OVBC7jwIyDL/4oD3epynihTpUtYqT
	 XVRbaYS3FNB7IPc8itTVdEjFdW4IddXcQLoY6GMuxTcOntgB61Cxhca2K9YVpE2DHt
	 94N49EiOKvn26qiJ8f7qf51HTAvHt3fctGNKlhQvXvC9lqfiuMgWVSqBT5M/l8kfKp
	 gqDIB5k4O6FDR1qvhfQ/L7Xs4k7nHrdMg6czZD6U0JR4VEoBZc/3bZ/EfrGROEQQiC
	 2xvZXxtnZe+ZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3C6BC4345F
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 02:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171470414279.1881.15546309624053081139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10deeed6f48832ffdb1b394f33eaff09906e860e6b877c5e9bbad87608d08ec1
Date: Fri, 03 May 2024 02:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714704142
