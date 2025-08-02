Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57102149C41
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754141994; cv=none; b=dpVGNN7tRjFHMyDKbIw2TOun4TMidafOQToSz4/21K7IF/VfrP57UtYWSMDy9ElfPDVXJBomKg1Zzy6iU/jHAGMc5LyL0/0mAp9yHyD2qUT073IvbNK6hfftwR6qmUciXiOJUHSItL/XqjjEjaCvEyHGV+GYGfOKsrhRLezhTEU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754141994; c=relaxed/simple;
	bh=NyjABlfbr+xVcTyXm616TaCgiS2U/wVOSF+W4sRaT4s=;
	h=To:Subject:From:Message-Id:Date; b=qT5E3n+1gXWqDRgQgX3et8X5z3jkdcrEPKUbucMDBLIPz+yg9NWYsD5h9+GOJUzKNX2Ya34J7hlUMDa9BEE2fTrcco3mXxPqo1PpYIqCeF4QB2anJeBnsMeOfx72xpDavTRJX2xNN+6drOiEoPf7OZzsnUcWHC3N8XKMguAnOYY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GAnfE//9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GAnfE//9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C8EC4CEEF
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754141993;
	bh=NyjABlfbr+xVcTyXm616TaCgiS2U/wVOSF+W4sRaT4s=;
	h=To:Subject:From:Date:From;
	b=GAnfE//9/JbkDu+XIL6AL4wZH9p5fHz7FIdeogHnYAorys8KPdKcK0qJxNHdLwuGs
	 Ibf+x9yuXo0tkyAhq8GwlHuWXNpz7DEJ6H0S1UmpFgxOeP73gr0RTwfu8hoKhyOiFB
	 CB4nsnNSOujJSJK2Zh5x8lW6oC+Mil2NBHRo3dgv/0Uj4+RcSJycckEgXiYALpL52P
	 ZU9RuDYKctZtZbHsO5QVCodUnvNY7YsPQLckIGGyndYOZd4ePmvSxDmxjdeYsx9ffX
	 DcshxeV09uGtGFHZq61ZqyB1pThk4zTUrUzVHVB/gP7bCdhd7hwj8uNL/EVCa3w17o
	 mF2jBu8OvyM1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94CCBC87FC9
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175414199357.8910.12340731237105264237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e794d31d003000768d94970f2caaf9eee293c20b6609973c4fd128d79bff0b5
Date: Sat, 02 Aug 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754141993
