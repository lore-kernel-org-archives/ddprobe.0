Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DCC2657D5
	for <ddprobe@lists.linux.dev>; Thu,  7 Mar 2024 08:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709801897; cv=none; b=eA7OUDfX4DtVmF48TnXsKbhmppPD0KPGaOdIxlZfgcZBwdG2HS8qTvXjEMJhX25MKloj/YFKQXcEzRuJhtsVMhUUU8+Z0PUcw/gexpYwgIy2SkW+/9iY2QeTT78jVILsmKcxTeig/EjEqnPCD5oN4S4HYVQ+eooeucrsVTdTTMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709801897; c=relaxed/simple;
	bh=TuD8aCeSy6UMGCDqcACoUsMUGuDg+8DEVFAnJOuxWAA=;
	h=To:Subject:From:Message-Id:Date; b=SH15emYV9mTvfnYoYH7Ef3rbq7GdprLcA5qDkRlsbxQPRuDkKO8wybRP2zWfbtPId4Qu4cQSZ+MM3CRzU1KXZ3zCbemIA9ITLLj+JYv/i6dDeag1sAVuX+64zeEHnE4iEj3IQmFFY2LyF9XoI+MB0egarsboCD/y0ELqxvA+OhU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EM6FKh29; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EM6FKh29"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84AD1C433C7
	for <ddprobe@lists.linux.dev>; Thu,  7 Mar 2024 08:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709801896;
	bh=TuD8aCeSy6UMGCDqcACoUsMUGuDg+8DEVFAnJOuxWAA=;
	h=To:Subject:From:Date:From;
	b=EM6FKh293wnGiX71kh3XwLNNC68ugKo59JxLdqyMqxMrcCDsiGW3JJBDOHR1/Jztl
	 BO0udLEvEDpHLwxONX9POZRBWVnt574FBgkkiFQrIpcQAJS56BNizNXcbnP27wOLV8
	 UJwAphNfJZ8wu5NpASqizPROurf1oxXICqOWBO9ueGzCFzQjWyDHsbxK8C9t2Swieh
	 cB7QUWu6pW0JRowaU15DME36JMz26YnmWeip3rGSDpu3mn4fWpTPB1B5T9s4WeeDdg
	 OxkznstaJXMek35SQF1Yc1dkpUT0qd5weiMABdj2X8BXJa1dbZo4lHTysE5tT/eP4j
	 84a96n9pbIcWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67F94C54E49
	for <ddprobe@lists.linux.dev>; Thu,  7 Mar 2024 08:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170980189641.30572.14827002199344390848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f79c7bb4811117034428c7169df9593f65206af63d1a6256b57b355a61e05213
Date: Thu, 07 Mar 2024 08:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709801896
