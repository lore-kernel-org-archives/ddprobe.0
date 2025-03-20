Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 407341A238C
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742461794; cv=none; b=VZjfgzk5d2MJ+Fh8ceZvHkHQMfKuCt62DZNpacLxLLlSLxDRlv/Jhvho7xLBS6h8oJ7qncA7l9Y9j9xYjjfHR0PY8qE3kIouyw6bWEySOfwmXAbGXSGvX3M+e9HJpgR0j7ZK3j00O2OQci5J+3zEXXzVGCIgd/FTRyihdkgMlow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742461794; c=relaxed/simple;
	bh=Ijn97p2MS8+KdyDQ+YRv8SE7PU9cdd75qbglJ+l/ygs=;
	h=To:Subject:From:Message-Id:Date; b=EbleZZjtbh3s6IwVg5imWWGKPrBfhEq4Qx4oV9yj8tkhzFWkWbC3LJhLMNyfs8F6KfJOouMFVWHD2+wH1q98KhOlwNXNhEndgUxWiim2k++GhwJdTCf0htQdxNYnxwmn+jhYk+yFALuRRLwGP0965wRCZV4LmjzZXMBFQrboebw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GvQI4dS6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GvQI4dS6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA5EDC4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742461793;
	bh=Ijn97p2MS8+KdyDQ+YRv8SE7PU9cdd75qbglJ+l/ygs=;
	h=To:Subject:From:Date:From;
	b=GvQI4dS68bIr0Q3M5OrbluRlFm4EuP5TER/zWgmtk5xxS16fsr/9OxBcHf3XrNf5i
	 FyX0f1cVWBw5Vj3u9qN6KnZdBXX9xINiKzkGTJdG7i6Boy9iHOs/Kj14ervCmE8SZj
	 1vwUlE0D7QwrdBv+dGCWJxNJu2sPX+lc5ZsoJDAqnPO94u3bdgKb1KG5IQXW4GJeZL
	 9D0jXMT2UBX32RIXlEIrMj6Cgd57LLh0mr4XPBZznOoU+aIkLkMFGs2jIDjslOlyXd
	 vfJd541AWPxjq3SZoT+kT4WrYyFBWrpx+xI8Kp/mnf0fdkOOWz8mDSXLIrCiT+q152
	 SOVPTZIOz33pA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 971B7C28B30
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174246179360.11742.14019727681944613241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7a2af0b8b50ab50ec2e6eb5b0f39264f43af582ac333655579d80ecaa4cb37a
Date: Thu, 20 Mar 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742461793
