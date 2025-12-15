Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21736343D84
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 16:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765816974; cv=none; b=TeBbBvohn1YLU/dBGVbBp4WaCDKPwxqQqp/qoGDLwi27c0BxEdjgVkIy9bzZP7qnVK7xt6dA9RDBWgjgM3BCbTOfuSitbzzgVCroeeNAHraoPbvpTq7AteG196O2Lb11ah1Pdw5lixgqZcDiokDnHqmrhHx2jsefFcHHjZ606rA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765816974; c=relaxed/simple;
	bh=2d4gvCtuXf942YvURa1NDug8tJvPOAoIR0SYlry4fPk=;
	h=To:Subject:From:Message-Id:Date; b=KeONyicZknNYlLCdT0izlrjuR/sBlbxV/3JZFr7sprx0ujpbP66ISHXEGFP6SfrAEHTN9UFCsi/K75+MTgZ81vK024gdU/nIxAfGEEKg56xSnUUT5g94+ovgvLgNcCYLfUB5heGpdFO8M7bNH9AXeMZEnaE0ShE+ZY22ssLQM5A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dGt+fjLt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dGt+fjLt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABF7FC116B1
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 16:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765816973;
	bh=2d4gvCtuXf942YvURa1NDug8tJvPOAoIR0SYlry4fPk=;
	h=To:Subject:From:Date:From;
	b=dGt+fjLteHwTnGi0CGnQ2NiA0obidGW7U5U3zIBW4i0lYmc7YsRJZWk8h0OA2oro0
	 wc1Is/XtRNtQcUXTT5FvtWSEkt0HoRP90/oZjjlYc2kDh5ny8xPIsu2ooi2z5kPjDE
	 WihJQKapkDKawVE74Uv1dtU+feA0oV5tOfrdRNf4ogtop/ftQ8lRlbw4HbvodsdOTN
	 5882ASmkyXMT4z0XJmAU16d8jSd8MKGBclbiXWB9DEf3zNPQKQajtJ4b6G+Fn8OH8+
	 mAxXf5O89nZhrdVbG5pD5rB+EQW1hhagwlWIrMNfHlSwWh0m4SXiybLykOVJXAd3z1
	 y/spRL8PIhaQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 954A4D5B84C
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 16:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176581697358.29577.9135947870417902117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: caf6cf0863e984a9d982a9e048231878603989c3ef561eafbd2f1d7fcba12d81
Date: Mon, 15 Dec 2025 16:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765816973
