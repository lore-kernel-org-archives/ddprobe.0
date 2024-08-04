Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24D241ABED7
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 22:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722810954; cv=none; b=fVlF69K5OHNcbS3FWJVLeVhtmuXtYyJkWrYcCdHzsVu41DarSfKNMe/B6fIGto2Trti7/6mTwuI9vX1muXJbAzLYn0uD9FXywRdKATLCRQEBI9GEcMMCgFrKo4PGKkhy27ozarOtQqDcT9Kxgqj5+EBuB8KVujFUDNZu4wrvPLg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722810954; c=relaxed/simple;
	bh=HH8sg0a7nuHoab5uXBLkJZM/wkbLG6J1MGVZjluf3vQ=;
	h=To:Subject:From:Message-Id:Date; b=C5o+6GHvAWuOD1rBISl8G+TUHrqnY4akueJ1ijk6GpH9oxms3BDhw3aMLQqu8zil4bnNMOCD97pKsj2MvTO8khz65ftN8t8kWC9/s/wud/RC3XWq9u2KipH6lVa/RiNLHCuU79q91E+m8cI66f2fLiErpgN4kb7trq2osUvMLyA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZbDRTI2o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZbDRTI2o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B44F3C32786
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 22:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722810953;
	bh=HH8sg0a7nuHoab5uXBLkJZM/wkbLG6J1MGVZjluf3vQ=;
	h=To:Subject:From:Date:From;
	b=ZbDRTI2oGI05HFDkn6JIqCGMY4fDBlLdEjM7ZjAb6jooCsRXRXivVrxl84+LvzXMT
	 zXp1vvSsSxNrtPSy2UkREIteWCWqkjSy7TpiOb/v49bZdsIPdDXXnnEVx8Pme1aqdh
	 1HwbrETTeq9KBUXbPG0jDAzbZ2/dC6kENSTrSPIRyON1jRigBaCAUsFRRfUWUN1KvT
	 TjBjBXcEHHS6ZcFnDanLuX/9JVkn59bKsRU6l705RGdbWa2Aa1IVq0fl/rkstLUPnr
	 oKSvhG9MubPoF+SobNsuWrexHnttlaJGSODRu7sLlhQFlIaRTpj2QiFanc3afYBvUV
	 qBC/P5Y//b99A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0890C3DA7F
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 22:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172281095361.8959.1854973826973882393.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1a7b08224ce0821c03ba9e730e67849a62144504954b75d6faab7cdda32affb
Date: Sun, 04 Aug 2024 22:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722810953
