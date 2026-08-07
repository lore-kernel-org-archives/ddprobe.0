Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 522ED3C8708
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 07:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786089034; cv=none; b=Dwu55yS+lTV8XTEiRsOH1Lp4hWnrUT4fujBokHtSNQ4442UJUwR/ToT+lixq4A6menl1OxNaXtlxTGkNqLWiivsoh6YT/evDqPmVHJ/a0cImBg3pf3P5q5F73Lwx22IoFa/8uj8lq0Vpd9+TWfaIgllnS9z2nzygxmtPAw6RTTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786089034; c=relaxed/simple;
	bh=WthcVkXXu0iFjRN72dYrXXUcyCE5aleCIJ2oLsR0VbM=;
	h=To:Subject:From:Message-Id:Date; b=nbmynmarHUBr/ZNZsod8XgGeF/YRZso0+N0Hnx04qfZ0NY+bDonFX5mdWgJOu03o0FmiFnk9IRc2MLsb0WGZUo/effX+nCzojRBqgVK+KH2OHcgW5BIefJ140cGcydA5CeCKadSMRUUkCSkZur2Lj2ZdYdlNNbeD0eP01V/8eVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DzYv0UAi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DzYv0UAi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D323DC2BCF5
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 07:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786089033;
	bh=WthcVkXXu0iFjRN72dYrXXUcyCE5aleCIJ2oLsR0VbM=;
	h=To:Subject:From:Date:From;
	b=DzYv0UAiGzR625tpY6sEkPNRoCGonv6HwnmdndVyW6Yqv3yciyIiA93UZOYGY30PC
	 Nl7ddX3QLORj3kFubLHworO2RDA5+vWrYIsP7ugwQX82vlfWyRNIJBlIBLI0QMkbzw
	 Jl2CdeikmMO2j0bA9G7e9h7dxilhWK3AaObxqbRoeSp6bo0pET/nYQFCBmGtB5E9bV
	 OlBY3vvg0tpvb/PMNOfHK9Q1JhFGrTomb3dKXIBmizjO+IVW0pyp1qEUDPBZ9GWPJ+
	 9hQSM78ysV2SWJPh6y9GQyXeBXcDLhxxTLk1ADBrGzVurgq2gS8P1BUoC93kaUqlG8
	 +1iSd4bM9VDOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD2C9C5AC7C
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 07:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178608903369.22107.11645412960175952715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef5bed6414a0fe280871f88f76e9ccdb8dad4c4df58b67dd762897286258c4e7
Date: Fri, 07 Aug 2026 07:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786089033
