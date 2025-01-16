Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12ED81DD0E7
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 12:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737030354; cv=none; b=cpC1heuTJJQrbK+zl/K0OQo6E7HkiDUK7r913efncTk27Hq9fyREOCSyWUFK95dFzXk1+b9+crzlY8Y0BlCjYh30qvdx8hFc26joy5I8ll2CNwe6AOZjL7/FC5s14/oLl/iERg8gIbyLl9ZhPxP6eBmBu5NyB29KwVFSrAqzqFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737030354; c=relaxed/simple;
	bh=I/AZwE84vE8en/ZqNn3jlwlK7vbvGtzXpU9d1Br+e58=;
	h=To:Subject:From:Message-Id:Date; b=MWzQUOdsAKYLUm0Gd720guQ3PqStwiEjQTqqKNFJMIROU5dYzJaSFK2OwLOBM8UkceezghsyYoM57P9ulzsdydYEKXdiqUnK10anVmx6P/J3OLDnGF9ogky9UAIkHvfnI3kwMZhiYkHOO4u3ZyMM2NbbWJdOv4HTTk+dT9XhFGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ftdpMzrm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ftdpMzrm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A02FDC4CED6
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 12:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737030353;
	bh=I/AZwE84vE8en/ZqNn3jlwlK7vbvGtzXpU9d1Br+e58=;
	h=To:Subject:From:Date:From;
	b=ftdpMzrmuMj9D5v8voNPE9I1CIk0PuvLDy94strYrf0eMTUNpLmiAb4vl7rW6jqR2
	 Mww8cTbpkDXg7AjcPV/mKieA6WxvcaLpoHQB/U7STx8dgpolhkw8Y9ywFFBZl5+jDz
	 fri/bgtemH2Q+uM0GuILvlg3cbWTutHq2MLTob28hTQU2gukzJXPv1yaKMh/gp38SE
	 ctfUvyipi/ZgIVF1ap+0W+x2EFMfaCdXIvNS84GGmQqF1iywvLfwOLdldZf6duy2Nl
	 jm+Vc7PPqr8RMcvP33qJ5iDB5qPLTLO1gkevKqrCMWnluwru2ddUj4RREd+koDTLkO
	 Yk/1oDhDrcrBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F33C02180
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 12:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173703035358.29894.7551829595102732031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14b39df97289b9cbc074363ef7de23a6c5def793faf2cca6a90a664cb1f78504
Date: Thu, 16 Jan 2025 12:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737030353
