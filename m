Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EECC7E9
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 00:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716163943; cv=none; b=W3/7ksipx9dln+i3QfmWtoJHWIUh5Wgr99XvyDl/v7Rio2zs53Ae0IEOu0BClkOiZfTj/K1ZaIbcZYo2B35vI8cyjhuNQVultfN71ltuGiIj572NZOvDUx4j9GHrmZ2TIK0LvWfpFYBRkRdBNKOH2QyNayXShgEbLVKDhLcYBAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716163943; c=relaxed/simple;
	bh=EVvmL2eeqzt1l/YEZjBXIYu5BpuGaqKK1+U0xCjJYMc=;
	h=To:Subject:From:Message-Id:Date; b=URC/OauUh3qMt18+CCRjUn+luNMyA4Z+UAxJCL1Ve2OJsyLOzcG+LnaDQWpfHCCe1seuKPivVoypwpSuB/Rlhs6DMxbMT4CoJWhvy/k6knLGp6S4X7IWOKUVZm05cHGcPntW4Lh4PNuD4/AgV8lw8oYUpVClFeACJ3WtzdrdF/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VynUccMe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VynUccMe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD8F5C32781
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 00:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716163942;
	bh=EVvmL2eeqzt1l/YEZjBXIYu5BpuGaqKK1+U0xCjJYMc=;
	h=To:Subject:From:Date:From;
	b=VynUccMeI/Rl47GkzzcNnqOupEyNd2xP9XjoOblgsrR0zPR4Vgd55RgmRfj1pO2Ma
	 l3fr13FY+ajXHT4TDt1QQBx7sETUxYhfsoX6gn+mqaWiQIHqkK/rI7zmUtRYvXMpBJ
	 S6M1xgxJv8aFeZ24o5HlnkENG5MJLnznUwAgt66sxsVbZs0hObM87UMWG8QApP7tVO
	 qMSB2vf434jAR7Qs5uBxTE1dpOds2DRWXLsOesNuXt7mViJoumKY06sJV0WbSk9aKG
	 cdM/z5ZK2srLaOLuTyQtbffyYIvE0jdKww+VkFlfzg3aW5UVFR+uRRCcPIbysot+ws
	 ayOVUN0xzH0SA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDF5BC25B75
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 00:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171616394276.2198.16385416828158019760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b72b210c5aed4b00820d3e371c68b08a93bcfa00f07dc552db94738e8afb010
Date: Mon, 20 May 2024 00:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716163942
