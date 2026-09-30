Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F6F265192
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 00:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790727034; cv=none; b=AoLlnJV1QaHql0C5LEG5n++VvrKkb5qw84zxX10PZ4wh8UAKOoYBNiGXYLzAb+4CrjFSOA8lKHH5hlVngIhUc2mXQYxPQHf/LxgAvxkCDUDEADn/qJAHrh32UMU+MQ8yVFiphXznL3yuvgHQNKM5YA9e5WC1d7NmiUun4paWo4Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790727034; c=relaxed/simple;
	bh=65q9OaNNdy0OaJ1y9OYoe1YQmf13+PCMhWkOFKuYh58=;
	h=To:Subject:From:Message-Id:Date; b=Ch9QJ6Wpu2Yz4g3qNeb2CSktbFGoWuDRuIFfcHfE34nhK8D3ZGYBVGIgKTqvviKEcWu7ERqjWbXObZ/Txla6ZIhgnuxcwgT+5ImS5qyyKozNlWVz/YkH2ve25Nc4GnMkjtl5lmLIMqiq9OF0VzLHxQNhh7NVc9lnhzbeK65MI1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IXqO2CUO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IXqO2CUO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD287C2BCF6
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 00:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790727033;
	bh=65q9OaNNdy0OaJ1y9OYoe1YQmf13+PCMhWkOFKuYh58=;
	h=To:Subject:From:Date:From;
	b=IXqO2CUOrXW2HNds7d7mRFX6lxzdsBMQEnPWiTEyLkg1jHHLxteQtCvFkHaT0GuC7
	 K1hy6tGiN+ZSixXnKq5c2KdRaUqrDD2eKQCKxzSrtOg5sVzbH6a8N2dIfIGe6G63uX
	 3oXF22wCbT57tzmkcbNbBdQIIXtjeq4A1I0GTH7INGj4drPs9wT46huMtKMR+1rCb0
	 bY81JiKKSvSUSQCNy8xFq6Siu6X3DfCBikntvVgDtQK4tUaGjRtFzam8LDIyHV8/SN
	 6akDxcUgaLQcMJgO/hsnjdjRPt3VaknyM5ONVMlFKo7mkCQJVRJPXxxLvoEbHsn4ff
	 RwsJOP35awf2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A90AFCA5FAD
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 00:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179072703368.6438.16481538366330232043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 633ef63290c8328297036fc85c5f1aea29dc42546bd1b1d49eb4f98fbefe8c4b
Date: Wed, 30 Sep 2026 00:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790727033
