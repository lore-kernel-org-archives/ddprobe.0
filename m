Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D065476694
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 14:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787148034; cv=none; b=U5L4xX7FzV4EeR0N6zmetKL0DtagAfO1ALxch8SSSNXUkY2YRxIK0P7DRGslGVPJXa7rH/nGwfble7U95MT9nKEJ8A2ninflROD7BGLzywFwfvyZzjL2uJ3OQHRFcCU+Ohcer4nTpWpbaifQzB2cKu+vp6+2oCtA9Wvj5vSgNHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787148034; c=relaxed/simple;
	bh=HTH6rS4T81+qzsjrFUTZDNg4zi0idN2OoKLeOr584RE=;
	h=To:Subject:From:Message-Id:Date; b=ZZtM8VxA11XqkIhNda7m3GBnSZfkVaHV7Tfe6XsAHccDdpoEWdAamACtmchNk7Klnlm2BJTNMPezGS2oUoFXQet4cWeF3C7z9uwVc7yFDC+rCsGIv48eKya75BamAAw8Yyp6p6nwiFr8qKQQ/fCpqq/hhzvVfDlnKz0zSplhjIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MgwaMhOo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MgwaMhOo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 032DCC19425
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 14:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787148034;
	bh=HTH6rS4T81+qzsjrFUTZDNg4zi0idN2OoKLeOr584RE=;
	h=To:Subject:From:Date:From;
	b=MgwaMhOoQ33xsa8ppWSO2PZLaQGWB8xVsK3RpiAwY+Iz74VyeA49Hp/CpoNhq/Hiu
	 bMC3VI8a3j7HTdvbypr5BJnADQHKgejA4mTaqM6QMqo7YvSb4Ur9+uoJ25pD+G+Pq1
	 Pt940wr6UWNUeJtW0j+sUvN1jC4sSZXq87EMpnyDbhp98mmXD9qP+sVyyeKUsxGxXf
	 IWx4yMIpCRmF3QjE6ZcebbHbHJrAFRFY9WTyWOrV8ue8TLPMGgai6DwY0qzWzoGllQ
	 rK9anLf0OTt3GqvoIeUxGwCam8EDimPZScfKnWmOREGBLdJKmkq2lPG/A385GqtPBq
	 aFsIhf6FvUcKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBD2BC5B572
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 14:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178714803375.20046.4849424291472715719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2aca5e5be04aeeb3a77748c905d6eecec4efbe2b93d4408c0a52b2e79541170
Date: Wed, 19 Aug 2026 14:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787148033
