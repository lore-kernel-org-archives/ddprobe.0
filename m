Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 063728F40
	for <ddprobe@lists.linux.dev>; Sun,  3 Mar 2024 17:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709487497; cv=none; b=LZco8lnMWHQsKr0IKwFhAnmuQvioHGERWVjRNOEITTHdXlgLFigKYLHtxOT2Ev/1AL7tTxb1oX+uXIzHVxcv24peh61xYAbPNbKxsRjxzRoXkz4uawm8KK9FcpMKDZuv3Y9RX4zlcJSokRpitnEWmM/udPWFLSdgYro6ETy486k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709487497; c=relaxed/simple;
	bh=0jePgmE704Npq8bwKCS9wyQ7uURVITcCA8iP+YVi680=;
	h=To:Subject:From:Message-Id:Date; b=F9P0wv+UF/RfAH2u3nmI9mcmBGF02ZEBimpn7zTpG1kTjGpYPsw5OX1/uGe3dS6an24H0ba2SnxZwjUwo6PDKksTbaQids18C+RBGFsEC0KWqWD07y4QjDX/rookW6a3s09Lf8gK62nEk0UE4zUfX18kcKfR6quFdNDi+DEMfoQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gSBNUIkr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gSBNUIkr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DCC8C433C7
	for <ddprobe@lists.linux.dev>; Sun,  3 Mar 2024 17:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709487496;
	bh=0jePgmE704Npq8bwKCS9wyQ7uURVITcCA8iP+YVi680=;
	h=To:Subject:From:Date:From;
	b=gSBNUIkrzMOZWSYZz5s9SLF6rsE3XF8OIbu3BvUlPANRvqOhbt0ASGtcRgQ4UvHpu
	 gPVAup37rrRVqnfRXNjFFxyYijybk4VpUGNbYR6p7dlneNJ0uwUmQ1FIS/9/F0GokV
	 jhOSEPyN9M4RG5hTZmwOBUCHzXDiGcVvARBJYNAlbrsvu0CWg8sNMNiVzbAAKwykbd
	 bEXHuAffdA28YDkRJ6QjNVeX1zWBIj9K6K6q9Ts5shPN61Vyhdxh9ozYKz+myYQ/Rn
	 6gH9ZwAa7huSFz6cFulTCfu8NaBrn5c3zP5S/ZvHAPEY7jyEmlLJYfg7bQqrvNrM05
	 1f+g/qb6CUBDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63564C48BF6
	for <ddprobe@lists.linux.dev>; Sun,  3 Mar 2024 17:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170948749637.8769.7351964162141597352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40e6a6c37e6c0fb4c421bd7622c8cad071ddb932187364b2a9682f5f61dbc9a3
Date: Sun, 03 Mar 2024 17:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709487496
