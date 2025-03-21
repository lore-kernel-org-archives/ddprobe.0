Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48B261F0E49
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742555994; cv=none; b=mX34yveHnQvih5+eWQ85aZqxldG5HbFlZThq3NTlMfskCAcrCyyQ9MpUgP6hfRq0jw3XI/bWqs9T8JLs32/xa5uSeZ3en7sF7qLtBduc4N+TAER6T6m/6zc3Os9QfNiNCcZiT7rt5VpHw+b1HeztSjTyddxZ23i0sGKfAPHT1Ow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742555994; c=relaxed/simple;
	bh=L7p4yoXFUAzGrCGD41zg/TtkO6TvoazfBkjd6nRzj2A=;
	h=To:Subject:From:Message-Id:Date; b=iQT1VvPhIdJvIIt8duPf12F0pJeD8DtE8O3cF7QHu7foiuweZL4Z9+ZjyFqJPv/NdudLOGMTA61ipuSMiDynVEfLaD2bgNJfIdLKLYRdvRIphxIGj107S9rtjJD57uUP4VoTeje3ZBD8tlHHuN4z7YhWZJn7KtsPbehfCvpwBkA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eoACN6Qy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eoACN6Qy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C18C9C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742555993;
	bh=L7p4yoXFUAzGrCGD41zg/TtkO6TvoazfBkjd6nRzj2A=;
	h=To:Subject:From:Date:From;
	b=eoACN6QynbgT0t3l+uUH7MHAN0oUHSpBYSYF72sJoUo/2hMCuQngWQpy42UHC2qOb
	 TF5SA09d+GoBq/dTiluqlL/QosKRzDz23/TIDIgiELttHOG70JFEYCX1qss+vmAWga
	 h+JImUauWXiPrY5QijV9kxYio8oVuVUCHNDXhWG2ISQQkaBE9YVZNM2TnCPzds6Vpf
	 c4iCtQcDp/gz7SgBRNhrqRvCOpWZ0jzccQbX8un1nSMsHq/b7ZhqEya/6MCCc+8qzg
	 jkT59wX8u+tPb43aXumQn97+iDvPXuvm65hcUsVuF3igECDqufCKzhCombCoks9DOf
	 JISPWZg5G8AQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9650C35FFF
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174255599366.19635.14319307594075591593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20543b20b85ebb73c18a20976e7c86bcb5d88b2ee4b9665732721885e6ad1162
Date: Fri, 21 Mar 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742555993
