Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5623E763E4
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 23:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714951343; cv=none; b=PnZuwy6Z8VNx1R8mol6pZYw5XCZH9TR+yY76UqiUE34CcsXz4ooXhE969M49b7YYLh7QWAeVSlE+RN0PgFn+lXECW9aqM4ptenN/oiBniwjg3FQsWDVp1kUft2FjqlmBGRRMdfHaxpZIkf4fUNy9jn3u1DlmAI9E2Rf8Er2O0Rs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714951343; c=relaxed/simple;
	bh=nT3R6axHGPLiLuaxNfpg5T3DmQ8sxHsYsPQmT0PiTbw=;
	h=To:Subject:From:Message-Id:Date; b=PkH/+d19e4I5fx7D1gJlA/kY9DSmvTDUQ96JmG3QwDmaA/n8JvXRqAbDa1iBb2n+tjeftMhvAB2YSXJcN+XS5CZYEAUIYRKaMFszMJHRskDU/xw1ynSiSbxZ/QxYpSo9qnq45ep79tMKeV/6ICPd/rsymDc+5D06nP02gEFwt3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GlFbbCuM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GlFbbCuM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5D40C113CC
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 23:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714951342;
	bh=nT3R6axHGPLiLuaxNfpg5T3DmQ8sxHsYsPQmT0PiTbw=;
	h=To:Subject:From:Date:From;
	b=GlFbbCuMa+5+2U5iRuM4lmt9yUNieCBAyEs2iUZVPrWSSBkrMPIlNlFbFVJohor7G
	 nsoQib2ypKldK0Ts9ATevx2lK4zY+2pLWH3tdzjomYYj5EczntAUsbbQResEuyUOI2
	 Mrb/3NwdCygwNTWwntw0p9sRDVPTCDjf3Iwnqyd30khrr3+Zg0U0fF2U1KzPMsjkLM
	 9xfvQT5+etQjm/EOptD6rTCMmq1VZq++6ecKaBKFQIBEgB6hbpHUlO+QAqs+PAdbAq
	 9c3hhIDOdMqR40Naqk+6wWPaG2JqtBMJe/utg7YbdJETNQ5E4lDOiz/h+9pqtjJHsX
	 muzZZ+jtiY3SA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C282AC4345F
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 23:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171495134276.28578.1948815294692894354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a8bbd93c50a2b010c12b0852d7570948e9734d25d27675afdc978dd9f51be18
Date: Sun, 05 May 2024 23:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714951342
