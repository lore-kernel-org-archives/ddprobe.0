Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B65B271474
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752158394; cv=none; b=QstiISafyWS6nGYc2s4y3ba1BBN5tFQugUZePOcQrSyjEpSW0rPChqumbc/KfVdGJJOsJZdbNjeKtFwZfHC3i3xj0qqujWA3+g+Yi+tIEofFckC88bYsXMlMkfvSkdC/LYy+d2fJe99kWHd+2hp0YTaXhi44v/PJ8EMMGcsBAMk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752158394; c=relaxed/simple;
	bh=AD87wSaTd9DqCx9PKwIhTxhMVHO0YzC263Ux+REl5As=;
	h=To:Subject:From:Message-Id:Date; b=Z+o97ZV5sCyfDRxmU7GKSfFWqafq08TqVmNLM5GZ7puZY8TPRBOmJ3x67aOWvxRMsRtQImEM9bFZVOe96vpx9yFAjwgR2k4k03lljkx4nP87B9D0Fv+bPp730va7lENtu14X2OCul6FL4AUnYgCTkglt31rzY5QhlPusX0dCmJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RLtVNY6F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RLtVNY6F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D52C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752158393;
	bh=AD87wSaTd9DqCx9PKwIhTxhMVHO0YzC263Ux+REl5As=;
	h=To:Subject:From:Date:From;
	b=RLtVNY6FI3ACuO6ZII+qju7U3mQ+U9y2N8/2szEbQ8DUL3ivr6iiqwYo/o9n6I7kh
	 bhi3zn5eP8gc4nsbv7PQPhiUUJxlfAr6dpCkmlgwbeLOThmBzGFhl6qTQ2qdhTKP/6
	 B7JOJLP/f05PhgbztkaVEG2pj34INtuogQdAY2eWFvLNDvFMXFquo2AdGyfQsXUNaO
	 qbG2tgzGXdvdeC6KukPigMoWlOSbAVOooaM34YZo5QsLx2QyaxShEG39shmr7of+aU
	 0ua6ie8SRYALtD44VNCwhpEfHjFFRlFmgvPN9UZ9kgaZOXrjNPLVZ9WNueh9Pau80b
	 GK5AnQ4dEDotA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901E5C83F1B
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175215839358.26968.7011175095310498410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86e0071e7283d5908be5c1afdd5dda045802e763bb92e629ca6e3b7554622a4b
Date: Thu, 10 Jul 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752158393
