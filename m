Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A42C328727C
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759671595; cv=none; b=sFM7pma+pZWqJ7sCgdVCOZI6AO3TH0FxYfNwJvnHEtaskN33izJAywmv8W7x2axaWiw3KTzJU4RjsID/b9podZfrghF4R9aMitEc5B6Oj4Uca0duhjaHV+dEqAA/fuHJVzpLFnWDzPcFl0Y0d0RcfiRQzidlRGXt19Kia4p40Ag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759671595; c=relaxed/simple;
	bh=q/poQQLmPB+ZOe3j1dtDu4c0wqxo6YlHAfZyClVSrDE=;
	h=To:Subject:From:Message-Id:Date; b=W9aJmQsYHAHub5Pd1IvpypmEkSk24DLqBDYokpfeAOUS5095TQWVfq7bF/Ezn/4o6UUj5NF+pG79kFY2YXh+TMG7syW1kfLHjBnx5yVUyhTFJ1G0cINwhm/CMl0ExOdTpezyd6ELnmmCwUFNBGxg9XI9geTtU/NVQdPmJkAxT/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n9JGeiHf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n9JGeiHf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6DD9C4CEF4
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759671593;
	bh=q/poQQLmPB+ZOe3j1dtDu4c0wqxo6YlHAfZyClVSrDE=;
	h=To:Subject:From:Date:From;
	b=n9JGeiHfARF8ffF+foTREye9fLNlLzKRuGHTsbgyoSvNNCIkj01hRfBGN2DG/LMkD
	 mBNsHGBhvChzP4mJLIirlXT9tNmKLmyaf4IhK/2+DJ4jICK+Y2KD8wGQCH6iuVssdn
	 uoiNCB2F/49vBXmLXzrhh/dVjv0QFIq2Kyd6CoFKEkefcyj21Puavfodw4CSyJ5qSo
	 8ch5NmAEZhoaNoyO7t8XhWG8MGrMofhOnMV6jINPnSScvAaGTzoZ984ZBRZPHLvLi1
	 1kQXnCPnes9fI2TwlUniy8um2kxx61yQQGB5t9kMUGtZ48kVpseqSbCEknXJadED7b
	 wRTJeFyEVdTRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E5D3CAC5B8
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175967159357.29519.11005571391478904840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6171d3195da4ac4e881e6c6691b86ee766fe95464a5a36a82380f74c6f9bf7c2
Date: Sun, 05 Oct 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759671593
