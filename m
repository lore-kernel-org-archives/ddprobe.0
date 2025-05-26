Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30F5313A3ED
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748255994; cv=none; b=hSi+kB5FiJbq+nzXyPr/a0iN8vQkjWs/0DP0kDAuqLF/VfKUEbCePRjlZvi5HX/o6Lyt74/VOvKTrEWjEE6QtJMwe20cDI8MigFwlX8dj1kKvFrUSu0XS+XoSjV5jnwIbPt11c3RQnIJqjQp30VdbobXH7cwWD8vyr0xN5Pvp7Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748255994; c=relaxed/simple;
	bh=x2DM5uZ/JAH8PaxnD7c8CduDxBGab6HD0rxoH8TmEk4=;
	h=To:Subject:From:Message-Id:Date; b=q6rVClLQ1DTkIeC/UmX7758Ex6keFhHHMZwqkVg9p4Ta7XtQVWStWh1pa1JNtNeUwCnGmtuyghgAwr65Rs7Pnzphn/1q/aL3Q//25jNSPra0LrSHssSn9BTx0TnJ5GMU6o+b/mjzr9hGnlEj+iiIdlzbkSlPnhDIPMDgXtg4LFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nSaJ+2TI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nSaJ+2TI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6DABC4CEEF
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748255993;
	bh=x2DM5uZ/JAH8PaxnD7c8CduDxBGab6HD0rxoH8TmEk4=;
	h=To:Subject:From:Date:From;
	b=nSaJ+2TIzgwI+k0ma2IKD/PsOcoUeQMsUmX+/GojI5xOAnzeZbYQpHjkglE5ne4GV
	 bo1XZ7sXX2/2HiWB3MqGfhajCXDjwSPsyOa8kw9z4yz7STe9S547Wr3X2TfsO9sZsM
	 bvQQDeDjPAbqYWmqhHJS5AeCPuMU07P1N7ejNx7bxPML4ydrDanG31ID3kbItuB1JN
	 kpw/tFQHdOi0I19OwOL0OAdr4A+2LHCNpxc3IAb7n9CXmmkQ19sm7Rd3v6XV43+UmS
	 udAq8cCeIKtmV80TmA0TKIAVMtHA2cAV2nYMglTZ647h6bXmjZWVYPj32NenUeKr5s
	 xfyR+f+Q5hvoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D58C54FB3
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174825599357.19931.2220745619438522651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92632f49e917b1e40cb770c28ee5e4ca4616edb33033f1129dc2fdd6e07c923e
Date: Mon, 26 May 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748255993
