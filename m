Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C9C91DE3AB
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 17:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736184354; cv=none; b=giPS54BWYdv2cJe66P2tpvS6z/nHoPPVFmJZLUoAyD4iHhsh0VFm1QPCxb6XwFXszR99VJ+v+s0GK28PmrZuSIjWK/5vCdC6PaLZRot0LkiUkKFH6KIwQiPYXpTKqN5fWBfXVTJhxD1mSmawMY5B8Gp6CfOBdw2/gP9XVfAAm9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736184354; c=relaxed/simple;
	bh=owRiS+bTOG4kYj3i45mjRv/Y4ML7uLE0oP8uHUQJlWc=;
	h=To:Subject:From:Message-Id:Date; b=gEsxKV67CT66Px89bjFMOdergVhj2kAzxihp7KOLC8XFx6bAF1p4aYja5NZ/XvItyI6plZMN8VYTEbzsWwSPRaeCaerZHxCwb46tAZpnWl4IMCusozgKuuORrCKUthueRkaXMUEe6Y7eEEPBjgCGpcQzgM8Zk9Z+m2kInzltuic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oOL1JlPX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oOL1JlPX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A333DC4CEDF
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 17:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736184353;
	bh=owRiS+bTOG4kYj3i45mjRv/Y4ML7uLE0oP8uHUQJlWc=;
	h=To:Subject:From:Date:From;
	b=oOL1JlPXUn6nSc6AmFEVOpaVMtjF5n/mpeL+lKau5RlpdvYwG8sc7zYCKGlJolJYL
	 OONN6TpjrqnkjfZcvo4ElprfGeZe/Mu3+/lnbMY1rS138pZH6pUasSuupptWsBSLEi
	 DzaiKRPehoEV702+2bHv1U65x5ItdZYiX0qtzUe0jJtjEmJIGNnX+kMkhvdNeXFHUD
	 yf7Fwh3/vKTdlVaT+2CU4TK5yaaUVX0vp6OajZRstYrqjkoymJzI3+iEOWnfu9dkEH
	 ZMlIyksIEWftTCt4zGXqxOuFMXaAqWNVdAU9AnAVu6DUtSTqbogNN43h167ti3g3Za
	 bH2c+J3y6v/hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905EDE77188
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 17:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173618435358.9812.13516876396628401713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7e69b3cf0b0ade9d1c4ff274ac844204d984511ad239906fa42823c6ed2b17f
Date: Mon, 06 Jan 2025 17:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736184353
