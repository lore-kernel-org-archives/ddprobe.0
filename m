Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E4ACBE46
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748654394; cv=none; b=MIZpS/LGUK17dc/3Mn0YrLRCBkuBLNHeVFwV9pDhiJagS95+0k0sWiiiJlyU87mMdKze0XH6nxVJgfjmlRv7BoQmMYbSA7LCROeMnrzmM8RoFqkLIa0QEpKh9tlz1yQf1T3bl6bohEERdNuKDPKD5jorvp6xKBOGjqhbt6XGn5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748654394; c=relaxed/simple;
	bh=iBbTgVA+UgCk58ltlO28o/AXP8TBHnNW2sWDNTa5uww=;
	h=To:Subject:From:Message-Id:Date; b=eHld8K/RIJDxaq9WZ2eZw5q0LOEBoQiINkVMMFu2VsUwjzWsM1kkIo7Rci1nIBNo7oHTymeI6WgHQxPBR60uvSIjaV8TDyd7EW5AflEC8THc/O2FtSJ8PGqMvp9YAtwpyq4Xp0Zp/vJWOoH/tMp9B+6mATMqykr75m+gYoamRFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eVZhiLNf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eVZhiLNf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D5CC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748654393;
	bh=iBbTgVA+UgCk58ltlO28o/AXP8TBHnNW2sWDNTa5uww=;
	h=To:Subject:From:Date:From;
	b=eVZhiLNfSDFMk+6jGkS5+NZmNPxvyTTMFMkiZlZkCqzgB1sPYlNXAEre2mgaznH7N
	 Ksu3ljFBwTxLdhd8bC3PrAtgL74dxSqhHjWnyR1jwax8NbY8rSOpT16EmpsfYdV5RS
	 KYz+xtnWPQetKHy0/KZYV0ap17IM/Mt58jc4vPKNBgwyw0Bo6175+Z1RiU3gwwFbGG
	 ARs1fDBgImBY/iweKgG2gdcg9nWVVaUPumfSDqDpbTR9DaVKxQ4eQfqHZ0XKOrqR5X
	 2xuaZocSAxCTY+S1CvuE+sWM4UEC4HX90Dh4qkqU57U9oUuUEihuZf7d57PK6vJQ8X
	 nwCQQ1aKiGdmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91667C5B543
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174865439357.18784.1027252552293410161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bb78f3314c9ef92d0fba75f918417c43a7797d50fa015ae38ad80bb1a9d8741
Date: Sat, 31 May 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748654393
