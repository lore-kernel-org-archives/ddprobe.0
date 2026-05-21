Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31C871E4AF
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 00:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779322834; cv=none; b=UKfl0eb28aZpeKxNmW6qre/n5knVryV3ewqOxAU3yc5nBF7Ux5pBHWbrVSFfV/p7V3FeyRLaMRLDyKSZ0TqPHPACG8SsFPHf11+0mneC40bK9cQ97zOhh9NIehwiBhUpbwLHk1s7cSIM6wh0HhINVKTS5m+d7JjofYwfJgVGts8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779322834; c=relaxed/simple;
	bh=QhHsjhuwCkK59Xo8rFl/GogqlNC0pE3Kr6EveZe7WWk=;
	h=To:Subject:From:Message-Id:Date; b=DmLTlUoyaYv8iXJvxK8VK5o853WojQOnwKlbZeMF/PBMZw/nwscKtSrMX1r//sUHWT4zkpHQVrtObxAvJWx8eAY1/PHQizmWbLCTNSYxABhQ1mBmVCxO71v/ZLwc3rx0uB/H62HXQhG7rkvwNVCmJ3jKQjU3cZT2pARcB/7NDsA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YvZvxpeV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YvZvxpeV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C637FC2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 00:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779322833;
	bh=QhHsjhuwCkK59Xo8rFl/GogqlNC0pE3Kr6EveZe7WWk=;
	h=To:Subject:From:Date:From;
	b=YvZvxpeVeHg2/5m/o8bTEGcGuJPpEUxEnKk5W6QIj/n3sMJygSA34GAb6z0r7xMBA
	 uOaSb2aaP7EXn5WWUpj8DG48J52pDjzRdFimFnWZ4NxIEC/NaEZ0kJ5BirNcudhWtU
	 agM7x6YsAXkI7T77F43UvwBturt16nzhDOY0xMfDVQm0NZP5mUBmuRVdM89/qEFiRm
	 raxoK44rFiPzMLosWDT+xWVhb9ANcLW/3SRaobMpyflzys4aI6c8OE1YwA24ZMIhcm
	 dXtg/baH/2Ksb1xxkFt6bBzle1y2h2VjrdMg3QCeuDVwZnNwHe/4ubrfKakq8hD3aJ
	 mOUoRF5RjqmpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA5C4CD4F54
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 00:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177932283368.2241.5757149723955648563.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5361ec4ca43e0045c4fcbd407e285c3a6a1085447f7953cf2f4f42200a76dfae
Date: Thu, 21 May 2026 00:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779322833
