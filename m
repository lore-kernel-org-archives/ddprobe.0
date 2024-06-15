Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F4D5F9DA
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 18:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718477303; cv=none; b=ncccyWrpqgifzkVsXysxrjEWphvTj/CERfDHSy6Ht0Kg/taC53QJaawQxlTVIcmdmBNUxV6MdZ/cbLWIGopWa/Xf+ph8/GDqk04HpfAP35+1sJoqiS4HIvXs7FvBrY8bH8j/lC6mLz4UfKq8EFm35gXqtkOsRoARR+pCQeit63w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718477303; c=relaxed/simple;
	bh=/KlYgJ/r7nCMxUdoGmY1U4y2V0vutFOf1CUncXDeaig=;
	h=To:Subject:From:Message-Id:Date; b=hbNrXs5HtoDGTlmyLFyKR27d4ranXugtsV8NYJ+GmRWL0crN21aw/SnSsGEbrXmn+h9U4XGkBQCdwcqi2oqO3sYjnnxhoaNA3qUoOfnvnU0/Y2gpCjZdFiJRS2YnFPOxlaOma1LcDX/JpL2YmfaWj4edh6um9K4fzaqLK7tAd+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qo/7O5gi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qo/7O5gi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D64FBC116B1
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 18:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718477302;
	bh=/KlYgJ/r7nCMxUdoGmY1U4y2V0vutFOf1CUncXDeaig=;
	h=To:Subject:From:Date:From;
	b=Qo/7O5gii60Famn0RijapLU4WwMi5toWqE9A0kqUeAd5R4/MBsKjPskg1K1jSxgWW
	 f6HEZTQDpEl8MPcow1KiFjUOlxJHjk98Q2tzYIw/1iAGvPMB3PejHYUHwKxdNtv4Mm
	 2xpqYlb0BCrdVNopYklb4upLEzfgEjqHbG7FtOL4DIvjYFH77O4g4Rj5OfrOSrTeAe
	 rirLh/v/EpeW8ttDaPsz+/GQ1edtfKyopNsw4ffRomljc8fGhrSPxAQMqwncddzhFV
	 A0TpV9pmC00dyx6la02SpXOLorMxyGK1iZ4VbBsWQuseOMzrBs+z8i5ZWfZUafMGmo
	 ONTtXcSw4NEnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C21F5C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 18:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171847730275.30317.16888933064511733187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4aedd8eacc2ad26f8b488ea171393780eccd6ee3bcda449b6f50e3a3101e801b
Date: Sat, 15 Jun 2024 18:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718477302
