Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13FCF27FD64
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755756595; cv=none; b=XgxwROCxRAY9t0mL6iykabCHo4eFdS+a2vn/LvK4D5FdFBSfSmoU5yOsbqEPIK5gq5+c9e0pT21c/hsdG+GNNkHCGATvSDsgE3fSn251qaGA8BZ9t5YovzCBwWz5VDhxVASq3f6MMPVFG8q6gNOt7Lw1suJXrw6GElhG/xv+nVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755756595; c=relaxed/simple;
	bh=Rvm1h3e7FAL612QqOqCcpk2X5zIfFLT+FWsBtFzv20o=;
	h=To:Subject:From:Message-Id:Date; b=A39PB7MyqnKH8uDAO52O4Oh7v/V5yxk4jsb+ZZa+bepN1Hq1QqNlKU+I/0oQ5s//u+EKly6k0c5Zpolf7LnjGGmt0dERWnwVNWdo2ERyvVmwIoyTZwqhgcXpfGYB7d4Dqqjjsa5VZlgJauhakwIkkfw+ougK+L1nYrxEQcwzpsI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l3uE8M6K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l3uE8M6K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D882C4CEF4
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755756593;
	bh=Rvm1h3e7FAL612QqOqCcpk2X5zIfFLT+FWsBtFzv20o=;
	h=To:Subject:From:Date:From;
	b=l3uE8M6Kwfry5Kk3Y3AKmKuoIrdRPPabpE/9sA/XelYfUHEbyfiKKczqbuYTldvvS
	 x/Eg9OK/HaV6kHQup0WuAMNhI0BAsxC5RBLl8xqC+W2JlJNQCBM8O7eqZmUsWfuXA3
	 CMSHPhpnB4Vs46meCxKf/4hSWSz0Cwend5i2aKcU31UIJk7kveP+aEPmE0VRHhc/BG
	 nttwxM+ChyoKT83zQTOJc6WBRIVBWz6Nk5QWX6us6xSy/khJ0FO3TEgQsMU+Dk0u+N
	 2hIsGIOXwzZauSamYV3rRwLealaH36aUDtDF8hzqulLRkToXyTbLaO/qVk6FLoo4z/
	 aS0ucFNAomX5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAC5CA0EEB
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175575659357.28910.15436063153643666539.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b4dbf8ad64e58202c589a589a80e75a3f647f95baafe5d071190550779ec910
Date: Thu, 21 Aug 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755756593
