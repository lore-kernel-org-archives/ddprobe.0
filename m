Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2381B79F0
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 01:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722560754; cv=none; b=iuus04SuX1k1TZIJ5/huUqrkapWRLs7sMZ3bG2DGquUtjhO5bSw8z1SQDL1DTw/S4M+y63DYjvJ5jlHpg4iQlsDSHeHjs/4AzSkJlrSaYflhnhFltRBclB6Woa17BIv45SPa5zPcO2SBbTIbfQcRObypoDY7VHPX1TfOSZQ29Y8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722560754; c=relaxed/simple;
	bh=Aginhr70H3mhdc+td+hSMRPdLpuDy0oNRZlXnq9WYMg=;
	h=To:Subject:From:Message-Id:Date; b=KD1/nue+hEeHny09zJN7jwaAz6NSz8FwMdpV+zCcQnbUuX5HTDKPlkSQZfAHlpeCsGbLKjTIrtvKiCbP/2x4Mp4ZTVYQu+op+C0dMWZbD7HAc4QYQ3o6jgrvSgYvE1MrqA0R3b/t2mcst1QBGLdu+N3T+X56nYvlaCc5SxXibuM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gye6r/uE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gye6r/uE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5461C32786
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 01:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722560753;
	bh=Aginhr70H3mhdc+td+hSMRPdLpuDy0oNRZlXnq9WYMg=;
	h=To:Subject:From:Date:From;
	b=Gye6r/uEG4gzU8qJ/kbMOx4hUj3Dc3KKUBRFOse6nfHj7dIZKTkVRMV0i0YbN6qbb
	 +uNOhhcJ8E2/ufHi2tdnOI04gm9ZnPSdS4aR6kQHg9yZGCeuYObquBPYPplZ72wJBO
	 VvM+sTxIrjp2VI3zgdeXB2EsACmgpkFko1rkTiP/QvshuagzAU5pAn8jTulHrcJK8x
	 mHY80RqlEsIupQKGa3F4VHTk/fmMJYFym7A6K5ohgbZ6l3nZsm1sad94smS/X2WAba
	 7dKCNUw3b5SUuX3BJnG1Rv18jBYqdtkiX3muatmWm01EQRIejFxtSMDjlvR83im0gz
	 gSSjiRAsiUkWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E949C3DA4A
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 01:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172256075360.28556.13461004194262355821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0afe8ce09ed96dd12a08fca636159df43952e949eaa70dff697adcf5f5343b46
Date: Fri, 02 Aug 2024 01:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722560753
