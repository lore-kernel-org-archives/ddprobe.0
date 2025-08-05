Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19CF338FA6
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754388594; cv=none; b=ZmiATlDx/Tv0mKGOaUwUFv9kcGccvfXHQzvE5QfTgQnf3YZ/qoXxhxpPJEpIVEnwvi3pGIgs8XBVeS3E2jXAaLUYPXShVcOHN2jAFrLRKL7l8IqrY4dy1mO2jBNiArDu8onNLbh/fTVWn30HMKwuVNKxZ5ZL2Bqnc1A/ArNxVkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754388594; c=relaxed/simple;
	bh=lT1RocBN92SBMjoI3yvP+TSfR4Oy6NsgvBnbs/HBpBg=;
	h=To:Subject:From:Message-Id:Date; b=bdMynjIZRebY962sT+cF2rorxJD7B/lxrm2Kq5n2+UE43buF3+iRypVDeS+VpcLlvVb1xegaBPeIikCPIeAyCfXobL7tCY+nF8fJxFszzckZPfmccs3rlR5pbnuzU9kiAjULBO/hf4NzGgQpokuZ8As/gBEsCcrqP9iwutPpF2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u9oa5QmW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u9oa5QmW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BF29C4CEF0
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754388593;
	bh=lT1RocBN92SBMjoI3yvP+TSfR4Oy6NsgvBnbs/HBpBg=;
	h=To:Subject:From:Date:From;
	b=u9oa5QmW9GVqT9ubW44xaj7EK65YCAp44jBJrJxgV0oU0HjNItFPsFZbHrzajdI1U
	 w3uenK7LFvH8WIOLmphiPigytCyFb4NbQds6Vubtc71MQxTK6rj47KaYoNMhVrbv9B
	 /CgrVBhmu/X/pJWq37dHmp+OWW3gzvCRZbn/Cj4Et+UEFlIySqgl5mzmZetv4IMzWJ
	 MOTerHDEUrN/hYVFjb3O2io6vqsiY8Dt2IUD61ktlYa6WjEpksBEVSeeHmRzs5E3lh
	 HXf3eIbivBG7vyd2QbU2+sL73w1o1D/HgDjiWfMf9WuumYMOVlCC7C3oDaKpOoT1+u
	 YLQL7Kj3KHPWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF3EC87FD1
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175438859357.12629.6284958881313784811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f2cb76d64e8abc04499a1c13d9d3b2d2c5e738af3182c4032492bed182ac946
Date: Tue, 05 Aug 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754388593
