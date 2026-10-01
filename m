Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57500352C54
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 04:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790829034; cv=none; b=E89yOZP7UCiMMWcyrU4gEqckfc5pGVsS5XD3uKrdCWnAvtrM3f7DvUtvxna6DLusfFRrHT+8DexVvAbcomLRb1vSCKzdSjLHRJQJFsr/A1JnTnehom7APqLDHKISabp+zmjzU+eW7AzCh0qjLyU/zaEvx28i611M4dlp1lp6TFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790829034; c=relaxed/simple;
	bh=t3FQEp6N1jq2GV+nCeuo/uZL25LZ/y4IqbBuFitWhUM=;
	h=To:Subject:From:Message-Id:Date; b=l0+JkjgVIjLEYBXcrL6WyjBoLnv3nRJuGYR5nmdSkmzwm4ElSgZNXrNdahs3dBmr42dZywx47VMcI8qYyfpmfDv6n0UF3KF4hZDhzx6rKkMyrC6JyTMW3hoVmQigcS0QrNCwJSG6K4MRAOb6DVJHCMCC4N7v9y0HVF6Pe3wwVl0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BvZsjtYE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BvZsjtYE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6141C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 04:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790829033;
	bh=t3FQEp6N1jq2GV+nCeuo/uZL25LZ/y4IqbBuFitWhUM=;
	h=To:Subject:From:Date:From;
	b=BvZsjtYEkrV4ynGSxXVPW39BM6LpE71vuF4TibkmcueDVip9E7IfrsWCOamddXGDx
	 eEi9a3xMCOJazMABZnVubPr7KOPaqw2vVVOrlJhQWD9vyAtEMsDb/CQxKs03tk/qTS
	 qtdEXFczmMQp6J9dKTtmAxPqQSEge5zqnRFDt6PLyesTmzqrQHwLxm5XT31QgD4mnc
	 z5mTjbZoPSXqPLqpgrkU5rJpTf13alOT0QeuiKc6k/S8OcAqKyJAUhKoGCFV8gsWOz
	 VQvuFBUPgAXgAWEKC5cHB6+oKZJfuGA9/pTzaQXC8XEQKF8XBPkzsZyx2OU8dJWjIw
	 STNWphuhBy9Xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC906CA5FB3
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 04:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179082903369.24592.478228194159220795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24ecf8530d13db63d682f0c2629ebe5d1c6a0f308753c43742024b1142333d20
Date: Thu, 01 Oct 2026 04:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790829033
