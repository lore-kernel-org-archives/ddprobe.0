Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 199FB22DFB6
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754044794; cv=none; b=OK4qt0mqDl2O7xjmn789kPuX/8Gp+kFXla46lxD6MbS9pvj3c9sceDyiYOYhSi8zkV3U3bqdJNAW60EW58bXIcjG/XHI64o0IF82uXepQ9Elq5oyqYikz9MGZbvXVrPB+B0ulIm+BGiN9w3LceaFqGnKSg8N31X7Tl5UsVG2v6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754044794; c=relaxed/simple;
	bh=mhf5nHfS54nsQzMXWC3+qzXCxw/HBYbT78u8Tkf1kL0=;
	h=To:Subject:From:Message-Id:Date; b=jfvmXeQ+FKBKl0DFvnmRY1j9zJ15tM8o3jIXXCBzzTm/a87mZY59mciuBFmN1t8zRT5mhEi1GuPyz4bwKdJNfJ79megjcCWF3prW9YdSPYjgakA9L0R3YOmJhUitQYuZtnRZJXzDAl7VLBklZ8Di5yM2ziPPIuIcMQq0e0cEn5A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NbN5msWF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NbN5msWF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3191C4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754044793;
	bh=mhf5nHfS54nsQzMXWC3+qzXCxw/HBYbT78u8Tkf1kL0=;
	h=To:Subject:From:Date:From;
	b=NbN5msWFLnMmROmI4OnbM6A6KXEaJiLoKfwB2BTf5UyLc8DrEiOJU46iyYmORmGR2
	 aFJmG+YuNQw2Z5vEKjDS/zMfsGmo806QbCz3yXcyYe27zo5XU1dn9x+ZSMVMFMFUdX
	 5ZlyqrgCap4a8miTkEymsHvmtFrsygfY2oESCrFULtW+oQ/QBRlxDTAh3j9Iw1P+84
	 zaSyKKc98cWWtlR/kmGWaBBz2St1Vp6sZ3xtDM3QGaAbAiaQGb4HW3tkIJex7JCZpB
	 /wCYnzLlgQse3z0/1eS6CGPgCYbQRyG88clnxgTiAYHoigPYn2HyDzdKbLAy2nG7jz
	 +/RZjWHDKrx7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCBCC87FCB
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175404479358.25184.17738856035211621437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e48be7805d6c1f68389af288018605acff68bf7dd29c51bf705527c6cf8d082
Date: Fri, 01 Aug 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754044793
