Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 113F221CC71
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 04:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768191234; cv=none; b=N4r1sguZQUshlGoro2lYKEWi2B7ubHg7IFR0OoHUGvZAs9mXpm5fNJMqPUNgENltQ+tcbzFzQsOLs/nekcSE6DAKko0Y49h8D3Tar83BQee1RwKmuIZtjwtRpYUlJ9wavFSSe3oRgX2Zbj5InxsHtwAMba+y9R8l79zI3VTREYk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768191234; c=relaxed/simple;
	bh=qATfH5CZPZgLFdWwv5p0V1MSp8n2lzj61JhwND/THVA=;
	h=To:Subject:From:Message-Id:Date; b=AE2wi6DA5Ke5Q5Wi/+UfMEJZXf/oZSJyMcUDhUbP2Y33ag9Mm4eodmbtNDfgZYQoI5c0TYjZASa7GZThSrQAWLOtKUUsIcOSCAQrXg6JtFkzC1E3T+vaeWzSgYSUL+4OAVsg1CDZ6Uo344o9PZAe58MtOKimV67Eg3CN+44Q50g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PUeGMsY0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PUeGMsY0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A58FAC116D0
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 04:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768191233;
	bh=qATfH5CZPZgLFdWwv5p0V1MSp8n2lzj61JhwND/THVA=;
	h=To:Subject:From:Date:From;
	b=PUeGMsY0Yte/nXwa9HwA3f7E634DefplO1anqt7Ii2fWhtUWujO4CzwheSuKcAT9B
	 lVZ40kG6Zq7lyMh6u6uW7K9vTyU1F53YPkHLF07peuTbLZjaFeMJzYiMcw8yqUlkpm
	 NcRFXp/O99EIufTaPorkmjyFxw+ubWaanSA2+tMoq1hd5NBTS0keW4Oh1+d+SR/hsY
	 FKObZ3NfpE9ujJu3TFXWi5ntGQGSxiL/jDChWRUr0eIK3ZOIEibvKdAw0mnxA4xka+
	 qK0mDcg1R8wDUwNVQIDNx5twTgoS3tvHngknDtSXuUWC7m4nSqJYcy7TujTvN5IlVe
	 bTKyjDReW/NJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DD4D25030
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 04:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176819123357.13613.10958943925287812909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b4378840e97ee7426006479a54618b52ede84951b7bf63c7aef854803abece7
Date: Mon, 12 Jan 2026 04:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768191233
