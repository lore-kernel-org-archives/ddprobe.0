Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FD162882B7
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 09:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765530774; cv=none; b=tlBa0V7oBTbcYbn0foY2dCGRYBRHi8dnVo//K2AdI03ga8JbAbCGqSMVKuwI3WMt0TulS1WhOwBuJb614hzJzDtm5/FxZxP2GpTXS3GQaSmEIoTVgIHoZNufjhQwTf+OYx18lenUOI9urjvZuEfUAkYrr2F10vc/3VlUPYofECI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765530774; c=relaxed/simple;
	bh=WoIFrmTQbgTEImSVGnO7iAD9ZFniZ/+BiaSgrhwnrko=;
	h=To:Subject:From:Message-Id:Date; b=s6q0qjuhpGBnn0fXTW6mM0+QJkR4z/1y3lBbsZ1oMXZuPaZAiOmQ7S9cuhMmG3PRlm/78WxLQzvvjNgzpku5U9OqoCtjqpw2kJWDQMpCZnYWVEYI7fkue8UucKr0xs3njzb6W/IaUhrE+igAQO1zVLSPlnjlk4BAMlinSGRH6n0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jxNsT49t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jxNsT49t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A391FC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 09:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765530773;
	bh=WoIFrmTQbgTEImSVGnO7iAD9ZFniZ/+BiaSgrhwnrko=;
	h=To:Subject:From:Date:From;
	b=jxNsT49tc7zK6nZEC7G7CYjl+Nu9tfACwMrW3SrKFBEYv1qLlR2KxHphcMvXAaePr
	 gUD9zRR6k7xDT/hIrTKHu2wBVxsNJr9CuDcf28hS//n2A/YTlOsW+kw/UHICc+vFh9
	 c9SJUFgT3ED1l0hwINcqmWHULPT3A8NIAsx7lY2pzpn5deW/rhapjRl/aUGulCWnNZ
	 8FbecMv/leNqkZf4oIrBq4DPdFxm6A6XC1j/QCpRIx6hxh8BvZegqPSkozbtAZdgVn
	 0M6PhufUgTbZ8f5GsRcj946ylRX/JGMOprAK7hqNy/c9z48i91BoB0NY2DMRdyYqOs
	 GXAvk3j1RpcCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9370FD4336A
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 09:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176553077359.22297.4658144016619854859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 700678ee3a3452a441dc14f52c34c07844b8250f83cca1ae1fb0630f485b7bf0
Date: Fri, 12 Dec 2025 09:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765530773
