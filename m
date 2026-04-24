Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1329C3264E6
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 16:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777049854; cv=none; b=Og3Ppvx5Rdtw52KtOyM92wsV43i4ro8lic4BsGesJVfZwt39IPT0Or2y6uoh3Wem55M1covkewJbHexLJdNbFrTmaYGanyhcrt8XRA09pBxglPLPHA/qX8gArQsS1oxx6y6UFhQsQmM+RSuZ12m0CieI8MEh1lMMBEZ1w/Y3fgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777049854; c=relaxed/simple;
	bh=phjrOkEe+8/eqaJ91COh6McapIkr1APB9KjuhjYfEDI=;
	h=To:Subject:From:Message-Id:Date; b=Nx6vVG+8XiPaBLrSXAt5+fTtRSJeSkM+Rfvv4aDpvgGxjcGlBtu0wFlExHL3oP9tsxk88m5eecQMKf0tfp3WSx4oG2XiLUe2xkktkhU0w3kVsrH1Ajt8hmoa47+Ghk9U/sr5P/5oGgpeAbUalEpHLuACs81HyOxA91bC+YQQ2CI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iM6aHaYT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iM6aHaYT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C46C9C2BCB5
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 16:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777049853;
	bh=phjrOkEe+8/eqaJ91COh6McapIkr1APB9KjuhjYfEDI=;
	h=To:Subject:From:Date:From;
	b=iM6aHaYTl3bS/VWRozD4nD+9tMMTzIQ1RV9OAqOcL63qc+sTBZ4bVTefrSqDBFFar
	 DwvMlmH628P6IcvKCXLqZPTjDHIsLGnopE/YPQ+QY1GDB9u3Cgi+qFTsbVdYgZAM+3
	 LllwiSu63P4eecCJj2M3bbgxWVY2QuDtg5hnVV1SE+pkCl76WyEfwy8ym/RrxDnm9p
	 qQLeKyXe3DWWxTIhKCkGaH472nHkcxVOHf8eVT/hSC2pqa5j6iz0lJgEz51mQs6SZJ
	 7aM0E+1mv1aTXbhPRmEAJZu75gAjDqnPT9lTV95cF6lUhcLsZhRYftp1azPqw7eYqM
	 5xwjf/eBHKAZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4CE7FED3F2
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 16:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177704985373.1645.6819031844527129260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67e45e3012e8bde79c50a1190aa706ca160b61edf99eec0a5e3e27d435d07ac3
Date: Fri, 24 Apr 2026 16:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777049853
