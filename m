Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 497704A32
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 01:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737424554; cv=none; b=h4szA9QuGASf205SuVDcJF67Fw33ph+E3JxaH9+MFpvm7bh3rb7omdUm1bXFENbDPMethrJa8Nk7pZotY+foF8IRMyEwHnPt/aNfwFigAIg5Cbf2CzshCg/zS4ZXQJJ517FPK5aWBz3VJC1LcHzlfidh+JbDlcuwftNtJSJ1klM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737424554; c=relaxed/simple;
	bh=sMHfSJ3Nkl0mjjATQEFSINsfQcbJEmrqo0Ekpjphtnk=;
	h=To:Subject:From:Message-Id:Date; b=ijKvzlPLSnuorJMwxUdsPzbNg1cO8gTKG2HS3WrQQ0NZpZbi2NyHk2h6VsTt8G3aG44x61iQXcQmUK9easSkgxX/53rkVuYB84u39tpIFPEgfwle2K4zLgvHCHCtxklpem3eBwbYmJ2nCmzdFn7MCt1LGl61c9LHCr+OJf38l3U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XypCPtqC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XypCPtqC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7ABBC4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737424553;
	bh=sMHfSJ3Nkl0mjjATQEFSINsfQcbJEmrqo0Ekpjphtnk=;
	h=To:Subject:From:Date:From;
	b=XypCPtqClwaYcEcrO6j9xo6KXLQUFe36cQcQh12oHH3ZLwpD4suRYQ8LXbdkQxFBW
	 2/eBQTapi0EvMEruuh8FukJyFjtYaRe2AQgxBLbXYp2skAseHylNoAHxAsMs5seVik
	 qShDkjidFHrIiae5yM7QCPY1ws43ZtaV8jmvz0B68EQcqO3IV+IIn/s6q6CMsMdVwZ
	 1W64qI6PF3lk9zxZgmA1SLq8N00+QBY3Abkb3lw1fupsdA4hS5FFelAntZJbd9dlfz
	 mOOhreoWtVMmUXr3Vxu6dSwoG1w44WP5vSkjVJPrzuetb2XClZbp7Z2AvDa1K7a0pa
	 qPmFzVzyck8HQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 982B0C02181
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173742455358.28263.1790513547310204679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbf1053c4191d177fc441771f60b731499332e8bfb75d890fc349583e37dc796
Date: Tue, 21 Jan 2025 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737424553
