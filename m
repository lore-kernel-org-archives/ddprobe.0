Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C9AF233921
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 05:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784353114; cv=none; b=fvP91Tm5L5aisJkl+b54POwZKasdmbgFeCNwYmLHyBCbkWXcvCvVNZBMol6nUS65MsgIJ9XYM2tvAvzqbIx+SsnmAlokxvhA24uI4DXbRhvt9Mll+BHbzet1LVwG16NE1SNiHIaVwDECxBI4mu8miZomS3nNfhJjT8n9VeZb15g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784353114; c=relaxed/simple;
	bh=t+PUd08Y/x0zcI4gXb1x/Mz4zCUdA7uUls5+zkmjXL8=;
	h=To:Subject:From:Message-Id:Date; b=KC16HRJqNgsumpQXkSM18pfqjZd2ZFeAHVoK052ZmsNz/1fqUpmLcreaEbAtP1emadPMoBIRCw6qRpZcDWE0gFLNte/AzoRVIZh+wRYmldhBhq+r50k7MOrGwpDzHKwzE0yN7ubpi7xi9b5sRXYZlHYfuYLJhb0lHULothU6RCo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mwNnqI4j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mwNnqI4j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF64BC2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 05:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784353113;
	bh=t+PUd08Y/x0zcI4gXb1x/Mz4zCUdA7uUls5+zkmjXL8=;
	h=To:Subject:From:Date:From;
	b=mwNnqI4jtIQV1KwzcsXZ7QZCfeSxppLuPE6fVKdnSlLWa/zXVTBUYyrpw2vQ0hXX8
	 C0XiqBmvoZu6n0DcJQIuE3KnongrrIBJ4hBhCWO6yS4lvmUV1vOwDgew994TJspJrq
	 C1J5uQCB76JF2RzZIxkf0RvYBWAuqzBBNGVtJe2u56jLsaDwwatqgjQn5MtVqEHu5L
	 U1Ukyn1Acm0L0bX2eNDr1sdE63XOzIBR+3fVK1+/qxp3+8ZdRMTHGQGQ2LOFHNJbA/
	 4lnUNtBaYFFYwtjRdcqB4zIDD5OSiDkUjQO0v+cGgCn9ciNjtfGmMpujh6B6SnalPv
	 sZc5xxLo2mspw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA6BC4451C
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 05:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178435311367.6754.17176632307842059762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b9f2f1cfe01bb0bde0e50a9fae0645e5898b63c40c6199311179a85ec395507
Date: Sat, 18 Jul 2026 05:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784353113
