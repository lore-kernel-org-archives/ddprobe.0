Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 238BB349CED
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 11:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779708154; cv=none; b=fyW/xBPXfCzIwat69ACPFbZ7lTzxyR16lLZO7lcG/lOXdJE2kMXXBSgjFanK6xMXdKr5jjWM/cEbR/Bz0cumqNs+ZfXmztAKi+DNaPAZ1P8YeNFoyltW4/NW6TEvQPwnCslFFlI0Jy5+CsZ7xHvZjkebmREKNkurhg8nxDfIv00=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779708154; c=relaxed/simple;
	bh=1X4Chh+KnQdo5iNSacZsvXLe7b8bklp5YRQZmDDSV+g=;
	h=To:Subject:From:Message-Id:Date; b=XTpZqnlX1lY8HL3NpQ3fHdtq3ftx6sCS5qg58YDlsg32iPOp9ve1fLWMxX4HThH1HYogAj9YSlo24S2WTx4j6FWP7uBFv0l9CvrwKzvpcbTKOHKtVLQw7/mWpdj8ee+r+I3scPhf6CxlCfUuWiahDyCCHOhk1B9WXpl5+h74ha8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DwEf8tmx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DwEf8tmx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8680C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 11:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779708153;
	bh=1X4Chh+KnQdo5iNSacZsvXLe7b8bklp5YRQZmDDSV+g=;
	h=To:Subject:From:Date:From;
	b=DwEf8tmxp75BLAFQYu2uXZigC9dX653AJnEm/XWbpQRDTS/U8riH3bgJmkOoFF0qa
	 /ZY9KVyOpwmL6eGsnGXj1/p4LnlYxjlVz15BSkcsG3klehzurynJbbIfTVwLZHbYgo
	 bq1DtEfZx5BcY1SiNOLcIYqwXQPV2ikfPHccr0FKMk/emjeHbNY1+vrXyw0gqQTbAD
	 TQtPILoJLqjXij04IZyhfNgrUSVpuHmt+V6HENLkc36jEERIeeZZZJrSVCmiSqEppE
	 7e/7dbRsbwE7QFzmckZ29I4QAXz8Cags/2PtFtecHgRnmCmIi3jdZZ/ifmATog6DxA
	 06+9SDk7c9SbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A99B9CD5BD0
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 11:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177970815368.31589.8078038464191592652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5443a9b58640f767382fb0af80887bc4086782f92f7cce8eab2c1c75b6a6fafa
Date: Mon, 25 May 2026 11:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779708153
