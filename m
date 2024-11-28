Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36E59143C7E
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 15:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732806356; cv=none; b=Ty3TQC0SQIqYbU0cE6+ayTTYMa9bgg3vZbvBVW3uK8az9YRjPElkX7vGRzDVYm2pm5QCx9kU+dsNdb5xGJs+eQd4cykKR2oWzZ7peEKv5S1Q6L8XTpVfYJhOEWQZVX2bVW/4SmvOs9Y1uGuEfpLk/6v+AOq3OONvzXTkoqEDrTY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732806356; c=relaxed/simple;
	bh=qjQar4zUgDIh20A1vg/nD1P7TuN432D8IJbN/skAgoE=;
	h=To:Subject:From:Message-Id:Date; b=G7jTGGCfRiSBQWbshZkUMVzLrIvIrYEWHsvrIokD7LWtwmRKB37wAqrJzYW2fYPQBL7ILwcHjQXbsLxVADlZmLUgp4c3H8PEi63YISMULge5+oVcjle/j1kTXud1HEtSvFswBoZ0yDouyiXY6GKTYuoAgGqtPIsRy6FVnONgong=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qa0GyAkI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qa0GyAkI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5A5CC4CECE
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 15:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732806353;
	bh=qjQar4zUgDIh20A1vg/nD1P7TuN432D8IJbN/skAgoE=;
	h=To:Subject:From:Date:From;
	b=Qa0GyAkImBklpnu/ROEzB32K+LbKHLZOMv9PkqsGihEjUcNyBLJ8r71j2eeKPmpkZ
	 yRJfEPNv0S9EnIjajRhBVCiHaWIKpnopku+p0wOJUvw9MCBlcx920IRQEarUacNBY5
	 fL/6qX5XSuspZhUAY9+hMtAGZz922vLo/RLXXX2RWMrDpwwn0QpN2l72PI17lfWHg3
	 Xk3ApMh/oz4PdZLJxx3iZS6Iy58aQtGWmN6XipFagS3n1qZL044wMZwCP5u8JM/pgU
	 siPmTBUdoFighoNNtaEPl1l7orfPw3UktCFe+zRRp59+eenNuS3Mdi2nzt0rrbigYI
	 xdAQmvQMBZiLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFB54D69113
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 15:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173280635365.13263.11693326417453700986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70ae4ddc1c30b8eccd28e4d3afedde27f3b398c9a487ae56e66fda689011d314
Date: Thu, 28 Nov 2024 15:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732806353
