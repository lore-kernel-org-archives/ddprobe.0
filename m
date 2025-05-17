Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F1068C0E
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747444195; cv=none; b=F+8PXKxbgl01jB8gAgU+tHl+EwgI2Qeu/CePNsR0bpsJTy+VA15liKUwMxsoTgbIA4e4eg464h8EEW4z1acL1T+CXk82ufOTy4Mh83NJd21j/g4S0xwQz8wCXKSovQujMqPT3xIyuAs2AWkSfw4AIl5cyFOYhWX/XXUKvsaa8W0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747444195; c=relaxed/simple;
	bh=Z0rHqVYx8ZTk/1jwMGRVS48dKurUYP/jvj2q+SXcBK8=;
	h=To:Subject:From:Message-Id:Date; b=qiFDWUBbB0fBLZXi+/QBh6Hzue7NAK+rhOTppVWGVGvigV8eQwTQ7JcS6Iej8U0vlHdwuwJwIKBkusrEXN405rOPavQJeaM+BULRFyAnqAHCgQTHY2PdsIT5zp74ecAdqML6SfwOljTEnGtVmBiLvBmA6vC3g4wVMcIZTUBHXPQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nr9W/mjv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nr9W/mjv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DBADC4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747444193;
	bh=Z0rHqVYx8ZTk/1jwMGRVS48dKurUYP/jvj2q+SXcBK8=;
	h=To:Subject:From:Date:From;
	b=Nr9W/mjv09HQvOqPS5k7qxwsdJ72eEGMLY7k12t1yx13O85CP9p8BR9uq4mPHduWD
	 rdo8GdtCW1Tl263enfiHDJ/r6QqfvEh+9D0usBOUe+GFei4Xoc0nF5X0ROerk1swkY
	 2AClC7f16PqkQAzS0qOO7TlD1lQArNvagdcfn6PqrxvL4A9TBw5cNSPHjhfKSqzDVo
	 bFFWwIlc6peQbcv/vPFKuz8wjdmu6+k+/6ZmFPr5/cVqJVTIhbGmkloEHsEe3P95LY
	 Z/5fy+jy1QsWRAAbh9dlgS0QW9bxYOhymiIPyATHn2sUaY3SIjG0MR828duQlBFqVo
	 2sraPmGTxcfdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E4D7C3ABC9
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174744419357.17475.11938396045839525625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1779b5a847fcab9c65e917de0de8d69637519aa8709f089eb3f78ff864b0e104
Date: Sat, 17 May 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747444193
