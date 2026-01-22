Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 307143164BB
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 06:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769064234; cv=none; b=uENp41wWg0WxqHkEz0e5NiGpHNDdlYr9jD//xFX4JUVaHSh8R7WWSXjouFMQyp2feXQ15GvWR4wCEAtC9CtU4F6LBmOvVqbQYmKjZzFd1vRotTsLL6cVKdstuxWxBKTk14TxcWzwL7Bl8UKc0roJ8s4gJlzgDA1RZlCYZtFrksw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769064234; c=relaxed/simple;
	bh=eBWM+Cr5AF99a+QtTNeWhoLhEh0lxiwD5kxfiJqYySQ=;
	h=To:Subject:From:Message-Id:Date; b=cMgz8T/k2wmYtdBfCrhXIeuliRL/RPu8WwVlRYi1cdSQ4xze8xpqArMi4jsmcnQitKpUca6awbpv9ZnVTKDHEmOKMV9hDi8FxzROEqdcCDM7yZEyuvOpZ+LSp882I/zPggboI6OpOn1IB2eEs+mYaiSb2WSa1Ss+9ioeAfjyA/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JBYa5FZx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JBYa5FZx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1EF1C116C6
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 06:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769064233;
	bh=eBWM+Cr5AF99a+QtTNeWhoLhEh0lxiwD5kxfiJqYySQ=;
	h=To:Subject:From:Date:From;
	b=JBYa5FZxdGYsOWjb7OHWEsew0T3cgNywUzrjqWoJXqFU7/ZvGqR0gR/8nlnlVNuzg
	 VWhjk4HKho/h9z6m0CrBc6l0KcdXSiT6OlkMJMLJ/u8BgniEexW6Prgvur8iTesZco
	 Bm70sREIOIpwQLnRN0BKibF8l3nBxRmxhIpmFoinjiC9iMWQlni6m1BlYqokm5+MAk
	 h0/NDq5bwAbZe6/CW0i/nQ6lkgq2otwEnfsbHtXiis7zY7Tfbp6o7kTXFU7qVf+RgC
	 RF++L3PJaQBsZo1gflmStLLbCStuv0T2KSlZqkenNqg7MtrYXHe0aPQUDRmWRzj6fQ
	 AGECYVgKFD15g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A26B9C44500
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 06:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176906423365.21239.13340236888845953887.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b81cce9a95a63ff6cf1e07809ab33dc38892075101034cc0779c871f35ecd221
Date: Thu, 22 Jan 2026 06:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769064233
