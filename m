Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2D0017578
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747118394; cv=none; b=LeQeT46mabn1RbcF6/c8xu2zs6C1ph+Mnqo+8Y5CZ4Ym6Bb3+4vaW8imG3c0rp78979eMQ5WJY0m+W0Ffz4lANbzdk01o71tTe1UWUDcOaUgx5Xu++EIrrZaNKRJFO7UVWRyGWosuej6s0+3ul1sWW78YtPu3UGheszjSzylW3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747118394; c=relaxed/simple;
	bh=H05fSdAafQwys8adH5rLie/RnD2Zi2Uhxjl3SFY3jFI=;
	h=To:Subject:From:Message-Id:Date; b=bP9ZfwTQl+MiExtLSC0mYI+pj2lQMwUf5d6V8O7zC95mTqSQ3WNHLVu49ojbWpZ1LXVFF3YAfO1yJnu4eezpftpWJ9re0hv/WDt9lxFsAZF9iH7ZkKP5avfFQmYmN/rg3TaeHAepdfeewGgCh0GKgGblerYRlSLAUqcx487T7xo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ejoxi8Es; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ejoxi8Es"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3BF8C4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747118393;
	bh=H05fSdAafQwys8adH5rLie/RnD2Zi2Uhxjl3SFY3jFI=;
	h=To:Subject:From:Date:From;
	b=ejoxi8EsFAGkSBsXUBSndCHhAWdF1bR5DUSirG5J2ZuQ1WkFO0eZvD0ou3B5PUBTv
	 I74l8yxnLi+CoIj8I7pSxr+tRtUMeJrv/As+fGoMwVFpipu4AFNfFhu3W/arcDIVqd
	 HJQjwe+gT6U8G4MoCfdH4Ot1rp1iAIwKnKZRLGXL514vpc9fb3ysQfrjubkFawmB6O
	 4Qt9aKBXJsTo5nBIgyMJAJVoW//slBK62ryu9nNfbqmwxhgod/fpW4ZMPkvSjcUxrL
	 CiPBm6rQI+DBZCs8Ak9heD08R2QNwGGmpv0+YyytaHQDdFlOqv3m26BpO37DagRFSA
	 Yt2tGZ3clAcew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92AD9C3ABC3
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174711839359.32406.12401672707437254713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f94888c64c922d8bba960d468eff23a64ea5e67e7fcf6bb7b3756df50e7fb254
Date: Tue, 13 May 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747118393
