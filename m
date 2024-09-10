Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1260E188002
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 09:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725959754; cv=none; b=evZj7HjJdCc9V0zwZkDM2IlL27NO9tSIcV/TvieKtYpcBY6E6DFL8UWTzrZGrY68MxowP1618e41FARWtZQ6EgIUxDwf4nRrosOh3NuU8tI9hrO40tqiHlL0Fjl8lIr+0riOJCNt0G4yxhKS2q0uIqBK7CjgN7CTDZj+v1SIBg0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725959754; c=relaxed/simple;
	bh=iN1J+RzTtkDIQOXEPrAE8G4NUiW8p9WzvibdTniRYXo=;
	h=To:Subject:From:Message-Id:Date; b=EQS8nx+AGuV4n9NXqVDsq3F3bAIl5jfQp7p2d7eSKzjPokezHrFzSRXd70z/+idk5PQnEBcmWQ/uVXNUXWkCduBH6E1T8ZpvhQZMrmvnuA++orFK1XaRtMWROT8K/ZIBpIbat3/DWbElqjoOPjjbj2mJvDkZgYSoq3r0dq7s3/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=on5opYDL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="on5opYDL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DCF6C4CECC
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 09:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725959753;
	bh=iN1J+RzTtkDIQOXEPrAE8G4NUiW8p9WzvibdTniRYXo=;
	h=To:Subject:From:Date:From;
	b=on5opYDLAYUzRw0FGZQORkOpQGLGL/4yk2TsgrOtMAA9MTsJNKUPIXuYH/X7aiLpM
	 RhFvnLrp6gWoaYy3xzO6ShV1I3g3vHHyUNuaOOc0mmJoo6c5DkLJiKigUXRjRWLDlx
	 ZMx9QfG4y95AMzjM8OULFgvxSJLz4ebIqdQpZg7067wQ6KQQ1Zo5X5WmJqkFOlpci/
	 r7GSqUSR3noPfZbBDDOQWoJ71kxfRqnUZiaWXVMev/T1pHg9LheQz4swYseYqSA1H0
	 ptyB1KheAd1orp/lzXpT/Y5NODwanfzqBQ5IJwZVAWcEex7ek5DXK/8vwVEMAikB8Q
	 JW6hPGDww+uqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90133ECE582
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 09:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172595975358.25367.11281432536649192423.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d26460fa832836b58a383015571e2bdcee19d153e47c34598f43261c4ec0d0b
Date: Tue, 10 Sep 2024 09:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725959753
