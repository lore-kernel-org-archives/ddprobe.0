Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35A7B39FCB3
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 23:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775776054; cv=none; b=Z2TLMwpRM6MtVib/xRlA15TiCOzy6sFXJDDpoHrWLmMRgItPTakOT1VhD2tyB2CbVCqT7pt92KRtZkNvxjZh7UTnsT/mLxziQqiI5zUoUvTNgAA0vEH9un6c1K5MoCO1kas7rUF2IG/sVFYvsGNEkin2Ix4uurs8/jiZdeD9hyc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775776054; c=relaxed/simple;
	bh=rq0e/ctVIbZKqWDkQsc/JvQKXSYNkr/yzjr+2veiI0o=;
	h=To:Subject:From:Message-Id:Date; b=fNvvcr4M897CcRalowJMSxg8jZ4tijU8PMVhWPsuaIrmbQwT7DECANRE8c9CjMUP4l0128ZRAqWnk3aoCYG2MtoceTa4OpW3dXcErBmYaDw1JbWTmmKrg94rEPSRYqRyoaEVeIF0NFdwpRhKqfyC5pylVi+DcJvAeCGD4edfg3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eGsEbyWo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eGsEbyWo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3B62C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 23:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775776053;
	bh=rq0e/ctVIbZKqWDkQsc/JvQKXSYNkr/yzjr+2veiI0o=;
	h=To:Subject:From:Date:From;
	b=eGsEbyWodle1Wn2VCsK0s4KXi4Q2PCrNp5rTGPuPJvZmM25JJ19ZaV3l4dwGIX6hX
	 uBcTbjnqmYiMik1H2iJk+Z9UhEg63f5mYq8InSbouQndyd1Gb1PhpZegJdjDpGUu9B
	 YRYKj6OqSLIYNbfosl3NC2kV79baGKVgvqciHGOIWObGT6Qso4kdmoJ88Hc8fopoDM
	 lTnEmDiC7daLza0PM3pcFnm7G8uL56e2Yt2sSwlOFghyCmlRHNI4CB0bF4GAWRwcO9
	 egdBu/f7E/qI7ydHlMaxqnFeA/zwHqxZ7dIpIYJ/X7YavMRony6fUn9KzVHFq/aBP+
	 5LqATrOZ859TA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF88DF364CA
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 23:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177577605368.5880.16734949831041533767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf2f814cc66b27864677980591cfc6f021fe5a6708505b6af9fa60c7eca11206
Date: Thu, 09 Apr 2026 23:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775776053
