Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5019239E6FD
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 12:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785067234; cv=none; b=sE/Rv9eJp903YRUj6lgOKSVrNJVCrGCryIgiNwq6dpNnhzUQ9bE+Mpu8iTbepNRvYK56qbqfeNX4yB4DdBskNXJONIMnFPoeaI864sT3xuEM9/zfJCJ8qFuwq6rXYZb2OU9dofGOEUF9Q2us628wIqsTOPMPFTJ4QrypxB0CeyU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785067234; c=relaxed/simple;
	bh=BU1OruLbqsuH9Oc91Su28ODxrzGu0GrMPnoMiSAVROs=;
	h=To:Subject:From:Message-Id:Date; b=GXUi6REN8PPD+XmvWoYTdoI+8GGTDA2iuJTKeOCZMly9x8wcgB1oJoyStaZwsu1RWZKliq9JVorlNz34ejmOCDfsmrXzBiZXeDzm07jq65bkehr/C07tB6oNouNLKtFXmnkIN76c2x6MNUlBvhVrBT6SHy3YK9v1QzDJOIzfpGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P8dXj2P/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P8dXj2P/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EBAFCC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 12:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785067234;
	bh=BU1OruLbqsuH9Oc91Su28ODxrzGu0GrMPnoMiSAVROs=;
	h=To:Subject:From:Date:From;
	b=P8dXj2P/nEc6ZXbcLgjC2ynyr1DFQ5Y1RSdbOBUrmFzKYCI6PnahgitK1nAfGjl1q
	 4tA3mZe2nuXEgkUEsarZfgmYYzCmQMSdaZeE+0E5Z4t5zUZ7LZJ0bvpt85gtgDrYKi
	 SSTt0Eww0ZVXUn75Hj6BUV0XT6JOdYPgU53+IQaM0QF2nSubDwXtFkEOSwIrgbZS/P
	 qQXnguqgjrgzs+sF1gAo0Kqswqk37+ytmItvEghl7fMrNnB0EsKPtsR2FUNSWih1W7
	 ot4DZV5ujZqUYVhCZpyduMEpeey6QxEzx3Kpq+vj+mS5Ew94thEgTF/RJWC32oBufJ
	 D2D1jBVeznd0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4D6EC531F9
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 12:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178506723374.11789.18170970394221528179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f063e0f78d943ac88a2c879af9a4d9d7e0afe6e8ed635d3de5c612485713c53f
Date: Sun, 26 Jul 2026 12:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785067233
