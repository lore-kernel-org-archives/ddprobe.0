Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BF321A0728
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763125794; cv=none; b=UlV9I2kAL15IpZrMtegECKc3d1eJf1j18qPoEakAf/UENXqxffTylVoK/HJhw/GawtQhE16BjX0aPuh0RoPi0Md/tGjW69R6lfMm1P3xJsSoLXCVag20Xi9rEm+4DYm/oICCqUDgdCrrCWUjvTo/C/9Z8U8p7XdVHAD75GyS8Fs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763125794; c=relaxed/simple;
	bh=GjUo9RQaHSN+CmrMnTUXStsdBqutl+yzPngMUOTgrGk=;
	h=To:Subject:From:Message-Id:Date; b=mKC7jY0mNW/wNMWURrZYl5WQuDtOfeg0z6Rp0CQBINGWjKdK32DvF9GAH2Vll6lJZ5p9hBTHzJGJ+tVPPCbxqExGW4wdai/FS3I3h6bZLIvlHsyUac6ptNtWcHoKyqnLRamIqQJbcI1CAg6w3+XAPkp2QahYgbcOKIiKlZb5iuU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PfOXcszn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PfOXcszn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7648C4CEF8
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763125793;
	bh=GjUo9RQaHSN+CmrMnTUXStsdBqutl+yzPngMUOTgrGk=;
	h=To:Subject:From:Date:From;
	b=PfOXcsznR+EFWjY90N6cC2XXFV/czaQGafUHx0VpQFgCLenRc8fPOYj7JWGDD/Bd/
	 tLklqmQnt8+7C9pTe8WR1qY8oVPC+LYGMpcOr38Ns5DmYp6fiffvGJqrestBcuhDr8
	 ATFKQFyaR3lbg0qJN+rpIyqR1UwZ0aODfwPP/Xxej9dp4U9sKPdcCxSS1SmMXOtpS2
	 3LBWYFz36ARAHRspCxyzUKVECqYpYh79aXIXHgxnal0VX5c6IDUOFwbTk3bWBDk4bx
	 C+Pr/wx/b63m9i7PFV7Pg9jf1gqqOsvOArMkIpbZ9GeXOCZXJDFA4/VMUpzA9Zsnhk
	 qSHTG7EN+B+cA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99190CE7B08
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176312579361.25900.2166546933209603042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0e7e3e16aeebad3d45e63daaff71a5c6f985a95fcbdd6fc1ae3766a6662d3dc
Date: Fri, 14 Nov 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763125793
