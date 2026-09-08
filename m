Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60812599A4B
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 18:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788891034; cv=none; b=PvRI4QmRagNm7CNcnfV7GN6jkvNrEdbNCwGs0SdrWvcONRApyGmpNQF7rbK9o3oiRB2Z/GALEtqvtYE+u3GlCajv9wKjdfvcG7or3mCscrRrH4Nqo2ThqIdHHRAeKAa5w7RpO6HR4JZbSCqtCVBoDQKDM8C2PU+PEBV4A1uzzbE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788891034; c=relaxed/simple;
	bh=+7EioV7V/uYeJeN2kYuPcOtkJxnhl7ZKjGi7bjVr+cQ=;
	h=To:Subject:From:Message-Id:Date; b=g9JrGXHjCbsMK7p3kTyFeO6H3g+m8lqbgvPrzsch1y08xGrjQMwqBJ75RbtO3+JC03SL3AKnzkFQuq/9B/onCpjnxcXvYGdCbNOIoRIneVYXxGzOhO1C1CCAbF2q2Nk2+RtE/r9dqSzVQxMPhlo4HrVK0835CPSQj1HC1RhtnWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UoXQn3uE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UoXQn3uE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4CEEC2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 18:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788891033;
	bh=+7EioV7V/uYeJeN2kYuPcOtkJxnhl7ZKjGi7bjVr+cQ=;
	h=To:Subject:From:Date:From;
	b=UoXQn3uEAvWoBaxXuFotuQWbyirwcNUNkGuADbQlLuk22620JqdKBVATBGb7HMjRV
	 r2AtGG6y0h6JkNNO8SuyA30fOKdncxET8Rt3lC1l5Sg7III1i2tjXgMd+3nl2oyL5S
	 1UXqKN+E5GYhJNZ+rAF1vUG+tZCAVn2IY3cDyIJqlzO09DESFQcBobZmXtV/wZtfV0
	 lTuSgKq7zJI+nhzPFvO4JU89V5i7AW/VTBc32OIcAtgFpe23ObZW27HYnssj4/Lcx3
	 i4UIpz3u7fkHDmd3e+VvTyLK8Uk8duPabnBK8tTbeE3aQOwlALAyiyXIVfbglOKwAF
	 FivzrXPx7uWbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADAB7C79F99
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 18:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178889103370.10555.2410082813326815258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca049455f0a63cce8b47839f8aa6dc3fd67ccff529ae5754e866182d06e37770
Date: Tue, 08 Sep 2026 18:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788891033
