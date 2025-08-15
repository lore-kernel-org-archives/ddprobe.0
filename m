Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B78314A8B
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755229794; cv=none; b=i7heiIMwN9LSp88TowVTDlghh4Sdeu9nI2KTQTzznYQS+YxSqBbxnlB+YoP9VkU29M5qMgheVf6pu71LS8NVDzz/egMcsVDyPJtzsRxGZ8kzQxK3OJtTENX32FZ2+IYwc2pKoNi38IWkKeu7+z7FKE5uwTlQiB5hdTmzKxbjtdA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755229794; c=relaxed/simple;
	bh=Iih+YiyV8wDnGdCsSkpE/6+dZMiCkT5I7Qmxn5fwx6s=;
	h=To:Subject:From:Message-Id:Date; b=P8b1YxKyfuMgdXGXJQrVgnfJTwefhjX4v7IY8dDFKYX9lltXZVqWaO4kCgZR6nFpM43pJ2g6lZGlkrAwy4id7dxsa0MQvtLrV7O9uCtZ2zG+XBniZxTHjfcaFErzOiqPGpZegbO538QEe5OEy6nBogNGcN70fgtJnEOSwZwK8rs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=osUneejx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="osUneejx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C6A3C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755229793;
	bh=Iih+YiyV8wDnGdCsSkpE/6+dZMiCkT5I7Qmxn5fwx6s=;
	h=To:Subject:From:Date:From;
	b=osUneejx3OaAZsMa20E58IReKG+t66VgeTq9f4ylMZITu7frZ27OBQKod8AuXcKxS
	 /7zf0Ollx/5vJLOsj8P1LnfXDb1Coo0dfniTMK8kDQVFVS0iHj2POCj55UaRUOwxSw
	 99ABXoXgJwpQRGJvb4XiB8j+cxAOCBlQNWIKAbWm5zn9RnPJZQq88sixWIC/nWtkVt
	 R6SKHnetlnfz4CaZxmjL0EGOEsG3/e2DdlyrCANJP1zqHgLVobtz381UJEiTw6mqU9
	 BBFxDwTgI0/4N776KNp3R/BhBP9tQsyOPMMDaTgem6FSxwkfGkL3zwsN94zbKPV49X
	 l6u9ar35TmdWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5FFCA0EE0
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175522979357.10925.2236787806077543344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f928b06ff0635a8d80299c76fd69b95dbfb5985a79947de6539b821dda8472c4
Date: Fri, 15 Aug 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755229793
