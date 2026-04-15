Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1948978C9C
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 01:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776218254; cv=none; b=Rjf4M7nS4Wzcbtnkhi4CuHRUE+ePYGpMWePdG/8nHVPyqBgrXYikiDL0lSXvoM1S/b/hgk9StTFW/iFgtTAOaChSVWkYoIYSyQmRZEgWBuXBEYm6Nh3anZ1/TJv341lQVsVpgTs7dfYYCymvL5esc54pogwKALbHwvvuoL/9bLg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776218254; c=relaxed/simple;
	bh=X4Zfge2YLfipUgwL4Yed2KT5CpaqHxEjJTNAmh0G0Hg=;
	h=To:Subject:From:Message-Id:Date; b=N64WPLFuGZ6EtAyjoGuDZPDT9Me4pKvo2tHamg7QzMWojtJ8jgIMxiUPJVr3dpRJydre9aP/V9gXZvRN9lLYFklx51lF3ooqM3yGqnmN/n/ihzLSs2giVhzm24ukRJchFTU0aIPzWOtyB4upZt8hkBV/d248/3oC92cRBuaokfk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eM1BHtVO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eM1BHtVO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8EC7C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 01:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776218253;
	bh=X4Zfge2YLfipUgwL4Yed2KT5CpaqHxEjJTNAmh0G0Hg=;
	h=To:Subject:From:Date:From;
	b=eM1BHtVOD142sdySGcqdpXMpxcYI2deXx9S3I1iMIB+ozITs6elSVvkJGZ0vYNn6X
	 qwwwS7UB3HgLq7sY5UrjcvwT3ggb8P1xORXJBufCkOB/hHC3+jswd8YlmVibd9U6F0
	 65PgBwvRF3JXrPGIP8m5kxaTiEEbiOjA/7ticepInvSgEAXuv9iiLVmHrSe6BetEJ1
	 3lG6xEGgd4b/QCSgReqnOeAIkODNch6Ktnc4f8T1VM7EsTKEreek6tvU9KaOnYaJB6
	 WCwj3GXXJ7BZANFc216dJH8WOuQJi13YHxfF7ZWpqO79ycARIjzy8OzllDI7f3GjHP
	 Ya2/AgLRWip+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FD0F9D0FD
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 01:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177621825368.5664.3086574594355653673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af5cbe6bb0ff447903f1802b2739c149131b8ceba5a31b7e28f23927e64c758c
Date: Wed, 15 Apr 2026 01:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776218253
