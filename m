Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B1AB14F70
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762575594; cv=none; b=IQXrV5FJt5VJmd7eeqDHnvdqDP2TUToAOxHKjptmpdskngwkjbIQPLw7JRKehsu6oinMj/h6A7fuBOxtVr00LAIsw2ZzlcNQa1NEPF8qhd7rVl604W8DD8OPMOqiIltaTN64MCKtKSfjyGa0mhDVWvxhLmfHEFTqzPJpzaj4z90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762575594; c=relaxed/simple;
	bh=uIZywX1kmuMI5t6YfH2N5AMg/l3rIeW0fpuIBzniolM=;
	h=To:Subject:From:Message-Id:Date; b=ceOC6V0JyqU9lUkJoUAEmODZBfTNXH50dcVHNhGfhH2nCHDN73W9iarYlz+zRZuv2b2Thhx34D4C8bTdQKueyciwYcPXvl5/GY5wm3bRQ+K5duYlKhzwv7/5bwSc08RZc12pODeysl75x4cFGkoeKSPwpytIi/a+37R3O7rI7cY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H+EdgAuX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H+EdgAuX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B714CC116C6
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762575593;
	bh=uIZywX1kmuMI5t6YfH2N5AMg/l3rIeW0fpuIBzniolM=;
	h=To:Subject:From:Date:From;
	b=H+EdgAuXYsAuoUrXOoflZPqxaAIWHnpdFofjeJriYAr5PbZxmq9mAzlOMPG7nWoBF
	 IVJCAAzbDbLcJL45viBSsix77Zb73wMp9qYJc6MPAGlEfGbGMQ1Kxq/rhPfVK2ersa
	 YF4k6YYuML7cw4vAOSNeRInEu5rgYikeB3s+4+UoLszP/LkbhfXaoRPkAgzTwxvL5i
	 QWqaDhnaJ/fPqRJKID/TEAd70gEYYlabuDFpwqZ6tQ4nUyfemgEXfY6Qh25uTSoW7E
	 oOaPM3UGJtuh8Hx0ij3iDU03wE4L5LSc+v2NuOZJ5O057XCuGXD2qdq4ZpQQM4x1p9
	 L3K/DjoE/2x3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3DEFCCFA0D
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176257559363.8074.5569923920257393582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49bfdf89b9d01816b7153a9d29e81ce0af33acc1a0f925e23f1ecf94c60fe2b4
Date: Sat, 08 Nov 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762575593
