Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3972418EFD1
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 04:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779423754; cv=none; b=RoqI1jNdtTlCqEuf953DbPiArd3qc6wY0KxXMZvVKCY7mK0kR4cWwHKSs0ZSZqZv2K/Z4UbWKFExIlAArXG1hlzgg44CnqIZQMh6G5pM1vOdayZA5ioiobzp41YXD3UJ+VVJAKc0x/PoFTyEvNMOWi3lMa3izGZvHundAa1TJB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779423754; c=relaxed/simple;
	bh=qTOebaICnKLd93S/8bCm3kYez8yrI74hb7SiqyDWbNo=;
	h=To:Subject:From:Message-Id:Date; b=f+yFi1XoDEsW2uTEn5wYmsCwOyt5Lgdxak1OIL4bhmmAn2Y5632uDNB4d83tjMNYm8Jpeyfu8rQp9Z+qXkyNu0qy9tZYqcNJWTt9lETQfLnZYHYZy/DwHV+STQR9npDKfRAbpwpJoGs/54gvP/WmSF+CBqRhtKqN6K+PN6DbMvw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O4fgRk3K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O4fgRk3K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C78E9C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 04:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779423753;
	bh=qTOebaICnKLd93S/8bCm3kYez8yrI74hb7SiqyDWbNo=;
	h=To:Subject:From:Date:From;
	b=O4fgRk3KnpNK58/MPTtNLte7F+cyo/HHhD6TOXc2GKYXttPS6A3bjP+4caDN0flQ5
	 Fy/gbXUEnE4oj/GQdZ0Z7rEWVlc03Me8MKYAaUJo39mQWhMJLtHI3pS+5wDRliT6I8
	 6XSt89ma34wHfW/y+lbg4KEsut0NjkFnAsY7GbyHdDKncNqRGj+xBVOBIAU7ZjyhnJ
	 Pk7Ji0QBDdS+Ri1hzlKakAxuQ9fEXyYxStIyQtyK5EuSpkCOUXg9IMgXE+flxiQ0Hz
	 ZqVQAWEoTaH4kohLRdNkJ0r42Mtt8g2ybkXsIcEe4LsQ9+DUeUfn0NWjgIiryNaD+m
	 3G93h9TnGnHXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E03CD4F5B
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 04:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177942375368.27695.9817493306733190185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e30abea809e9af4c5664f59baa1952c8e1730528ad4d45052f4f2f9e209643e2
Date: Fri, 22 May 2026 04:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779423753
