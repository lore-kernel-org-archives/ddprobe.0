Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E15D170A3E
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 23:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729120554; cv=none; b=OHiPe46XkE4PEBzEUxDfTaF07LvYY0G0OcvZJ9aD1bv/hVxRyFXveVTHPC8Hq65ULTkw2JzmwBoqeXU20JHUK4BWTvyJWvM/NEyvlV3yzmhUVEsSnFZdSu6F6JanydxmFVXH6UxqG8HIa8DFOweSLeTaFh27iWkP6HjMhS7dokk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729120554; c=relaxed/simple;
	bh=a6o2lJE/n7Rsul/51OlddK4KfV0RUjhT7nQ+3MdYiDs=;
	h=To:Subject:From:Message-Id:Date; b=m4UJge+Ye8D/rUE8vNoPg8hK05IWyofUlsiJLZMCTE0JfhIdZIujYcTyg8Hcon3hgDRtchxcakAjedrCFwIjpU1mMSx6+OiBJQkfSxUCTvCww6lhuwA7Rpbqr+4l6iIjR1yevNM0wXSRXjDm/MMblebGhQvmkCrZKWA41mIA/DU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GWDdDKaK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GWDdDKaK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A16C2C4CEC5
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 23:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729120553;
	bh=a6o2lJE/n7Rsul/51OlddK4KfV0RUjhT7nQ+3MdYiDs=;
	h=To:Subject:From:Date:From;
	b=GWDdDKaK+eBGYxoK6x6Ql2ug8iNJ+O7/cL1w4bXY6zC9QUeHguHjt5UVPQITmiSG2
	 VsVV26WbmeWDcMwGYR2geUizAJT4Ezx/RDmgPYhxzL74BQtji7MXhPG4sGOg1EWVWh
	 lY+aPFRlfVHhrgu7OYSFRn38MJ48Oi3itjPbj8b+jNh0SqlFZCtFgc91c+xhEDhWkq
	 3o1WvPETFP/PIBI8hrLt5PiK2CPEHxuSIY8rQsPkPLqXV5eVDFBatzNeZIFTCEBwjm
	 WutS+QV4hK5mMiTytoSdZgdINp7B/LG4CEMwRpShNR/7cOsmBX2BV5ip/47umNM30K
	 i96vgRAL4TjlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91846D2F7D2
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 23:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172912055358.31739.9159897239183715337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca29bbfbedfcca557bae2d699b89efc1e2327c53c801764e7898d95e018daeeb
Date: Wed, 16 Oct 2024 23:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729120553
