Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0539129A78
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 01:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736558753; cv=none; b=cAspxlL26lHMMHBUtolu8AoL05CDACQ0o5uDoVBvp4U3jYSsH/363TCuKVK+ql65j5In2b7wLAW8UsB74eUvK0cMhYtNGTAksoohwdPfwHoicMWfxcaAQesA6Kjjy1qvJPjCKWWrIEZU34VO5MtYyZUq46Ratcit7UBWbghQ+Y0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736558753; c=relaxed/simple;
	bh=Z+lXtHAWuywW8NE7ApCFslTSsv6a9hwxSBynwBIlQYk=;
	h=To:Subject:From:Message-Id:Date; b=Mf8J3YDCgn/fcLVRlbuaxtaDBrrxCrwLiM3DdvrVmqOYtWKy7vVUGd2gP8/slIMjg3BeWhRs5Pk+nckcl9wA1zd9oLxgWZAPqZQReRltn6rBpSuoiO29IVL8qxY1AvW7CvPTw/AT0n6Mb8ITZLIo6iYCD/G7b/3amsq+PFRHX5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OWziAvgr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OWziAvgr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1EE4C4CED6
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 01:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736558753;
	bh=Z+lXtHAWuywW8NE7ApCFslTSsv6a9hwxSBynwBIlQYk=;
	h=To:Subject:From:Date:From;
	b=OWziAvgrh5WMfq+VFAwo9joLC8ntG3elH03HPg6OX+N25Yd4w3idpEYh4ET799nId
	 zHeEn5AnLmOHlPFkxGTqY8jgdthJdZsNfQYNZhMD3uyYobgmnrz/ndOL0oqRWCSjbD
	 iC13C75bQoh+GlvEVlPt2QEW7qXiPjUVQKkhb1LRJtJThufqE0FihwGU6NG+fzH1rO
	 kqJrDyGcK9U/2a8ZLYazEWscs73zg9gERppt2x0bMN+Ag9iLCsd8EucsFlwd7OUt0E
	 90roKQN9D/Du7e10Qfd3jT3pR9mFOqzOHTajMlf7BnUDDR+7i5t/S1+5nXp/EqSOG1
	 SUqm1p+SgEINw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E24E77188
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 01:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173655875358.5592.12270136460467151958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7870ef94ddbd9608784b24a45a002be6b901759580dcfed2d8f3d4c3d1222a7b
Date: Sat, 11 Jan 2025 01:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736558753
