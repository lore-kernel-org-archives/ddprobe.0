Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FF872E7BCB
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760345394; cv=none; b=SXr5gmiejZPtEfz1hd255VH46qiAOORvn1d+giFf9Df7Y68d0dDWqgBlhbxL8/zQvUum3eEY89c7Ip8KpeLhSRTfk/BtpRMaKTN6z7ufTLUz0i5Upam5o3rGf+9KiITuQ7YoX+UXe9vJqtMhNQm/RYlwwOoQF/uw6P2AfXKPvsU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760345394; c=relaxed/simple;
	bh=tWO6DAYv8uUnO6t2aODFT5cvScp6GJry1uYIfcRqLBk=;
	h=To:Subject:From:Message-Id:Date; b=GvIgzUVhOJ7p/VASTYKYbC1bEvcwfVXFnt5R3/o/sgLZxpO8oDsUvIirKe2CaDdkg5MtQZDryLQT+vR4nWMFiyNYOI/BPn9EaGNFopf8wgZOTLSbxWL3NabULvz8/WH4lCKtdufkcD5wc04xS1zIRqFEkMtIqQ/Md6Jzh6gCwRc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GWwYb8Ga; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GWwYb8Ga"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EA40C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760345393;
	bh=tWO6DAYv8uUnO6t2aODFT5cvScp6GJry1uYIfcRqLBk=;
	h=To:Subject:From:Date:From;
	b=GWwYb8GaRaZV1i//QAcS8/cSohqJ2MDIUMURY24/89n240nw5SRg9EiFQ9Pk27VN8
	 cD9pzZ2E1q0qz2q+gwmWxG1fTiyWfWdhtGHyEjVQpleq+I2pkNwG/e2XjH/jVL+Oyi
	 tRXKMofTnVo/QpjLcS7M4p1onwjCWMVgusGYiIc/D4yZooKEufq8Y/Jq+/dUAb0pBC
	 urliB5uCuYIFBDqSaeJ6aWmcTz5vVNUHwBqEGgiQCLJOmt1ScBnKV7D5xqW8BzDW4y
	 EyC0uIm38RW0YkjfFd9eR2mru9N6tMQ1pK2wA61NtwSloSwDEaO5vPbZpHZIpfUK09
	 32FGntwcWsQuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB3ACCA476
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176034539358.5956.13383861440279110037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d528ca94a0c5063d2a3c18c1d0c9b4b20baadd2f0da4f60f47861284b8d9a31a
Date: Mon, 13 Oct 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760345393
