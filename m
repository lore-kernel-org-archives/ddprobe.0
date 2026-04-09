Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16BC017745
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 16:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775753254; cv=none; b=eQJplaEvh4957ONlcgp48T0ddmpIDoKKy1dsmoloM+tNnOcDU54ERYM11D5JmKYhbmUpN5PqUshkkpqK9MsaOb6nyWYtDSXa4vwANMyzh8f70yZ1dwHU28zHtp8RRmZqIW6qWNyanLSCBv0KsNTh4Qw9tkhhVBm3s+xb43hZick=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775753254; c=relaxed/simple;
	bh=Knj9nr1xQwzwsZ0D3x5ALHq8OGsKYGhR+3D3Nx/sayQ=;
	h=To:Subject:From:Message-Id:Date; b=IeNqJnkXNNy+zk2QB94/88tP09XVYDN2014CZ6dwRRQwqpVjH/X1NdWHPl+X5NXif75kW0H/6TZitTAmRLs+0aqic1xDOdUHSXXE/V2YAJB9gptp4MyDzbnyBangshkuuVifRgzjKmCtOOhyE8CUpJyd8MrVwhddglArZeInrjE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MNHr+EKi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MNHr+EKi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C09C2C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 16:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775753253;
	bh=Knj9nr1xQwzwsZ0D3x5ALHq8OGsKYGhR+3D3Nx/sayQ=;
	h=To:Subject:From:Date:From;
	b=MNHr+EKiYW8ydX7vCOzwCLyzlTikgK10QVa6N1TTsryJJr81xgQ+tnfgXVos8TINu
	 yuaMuRj1nEFesG6Okfoiaz6/n3p+Uw1PJl5C64BRgA5k4Qn5KDz+N0N7UROyrXDzeR
	 Kn+vEccI9j7WizDl90VHIZA1bD8n0y+VLhtcy1WydPYnbKY8RydgPfadX911HL8GWb
	 tNerdOA6dNm49+JUNUVikhT2FpEe/NWgd7Wr5egONDrB1vfZN1rGvvb0bOQzmZV+Z1
	 Lc0ju9iPB1s/sey9LEGgIRFeyAsppy/PKc+kAzhH/7jn+bm/KqyJVvh89pGm3aOtDi
	 DdNKqy4seY0cQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B14F0F364A2
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 16:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177575325369.22152.17694367621374918158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8dcfd80741eef29c1cc5d0f03d009c239fd25c6fcf9b846ca20b3667fc81ffa4
Date: Thu, 09 Apr 2026 16:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775753253
