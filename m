Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 507023EFFDB
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 11:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782820714; cv=none; b=CzTblTvl/w7AxmA0qzrZysj4zP90ptXnd/7eZllDViUVaPPk+bDPwfZ6iaq6YIcBWAFGK5N8HRFlq9ouehcXCSDdXVE/B75yivaW2ycjeTzrzP+qGixcbJq2CMC9cSeslYmxyATjvotZS76dJY3lrTP6olIjHnmpRH8ukBBmpRA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782820714; c=relaxed/simple;
	bh=HVV5A9otZr49OH9NdhRPAeqkTyIcrywyhO3TUcXuZzI=;
	h=To:Subject:From:Message-Id:Date; b=Z3bMmxZe7/d8VPuib3dUrBlYV/h/2og8zFvuQsIuHskP1MOIe7YlkZyG0HjuT6fNN9sdaRQ0Ge1qKAmePTIdr0hEwxGtB7e8fuYs7kMW+wtEVQIyfYLJ7yX4FWHmInH/oLbOxk8a4sLThuHOod6t90zHSxu16TA1RSQxnoSU8Oo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NChEw4nF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NChEw4nF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1AE9C2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 11:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782820713;
	bh=HVV5A9otZr49OH9NdhRPAeqkTyIcrywyhO3TUcXuZzI=;
	h=To:Subject:From:Date:From;
	b=NChEw4nFUVFpdtBsZBFVBuml5orC2j3DDoCfo7A7nsIy2gulDxOeoJBZsGMxiTsVC
	 rG7m7+1w0bxISRddwf6pfqn27+UKGAEIUNwdP3uPGAvOCCX+A0voGzR9CKlp5hcbzi
	 Y3DvzqeRmJPMsrVFqlLwSLDetAOI4DmCy+n+OBEjcPj7w1eruxxHzDSk90NrUUYLiQ
	 1nOA7xzlmj9oxxZvHgCCnIxapldRd3vC41ZVdxclyRe8pP5ysfENXBU6+/o1i6Hfu3
	 2v6chs5HL0xCs7j5K0C76ao3WBA3B6d+H7vhtt284FydAPtLF4kIixocihe1lDzJ5I
	 g4MA2PovXh+QQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A85F9C43458
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 11:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178282071368.31659.13856746372215180013.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ae0f4b9b87b4810b7c33e63ff4fc5cb90df5059ad6c19d55e4ce3a7550943d5
Date: Tue, 30 Jun 2026 11:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782820713
