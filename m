Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25E4537E5E1
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 05:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788760234; cv=none; b=BvXsZe//U3VwyfB+0Cjl/tcMuvzXo69/14KcG/M/nCMgDmn8C8qxl0lDz9zaG59ugSrgpFGFWIQfmHWoVKh292+PefxUYfeRfS9NNR33Zkp7l05M8vtdIoLMG+eTRkfhiJVSZ7vJ+HoUOqO7m97FimKT78t5rrGhvAYq+RQ2/KE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788760234; c=relaxed/simple;
	bh=uWhRhKtYywFkMzTpEBOG0GpKzbdc+BDz5LYkwSXic/M=;
	h=To:Subject:From:Message-Id:Date; b=FA1NTpIZwbl3InAqmPHYwwB6GCQPQIiZobZ+TLlc+TRYXqt9z2Aw2hhVIVhzrRqfozpdckPZIEyucvjDR/PNn9L9WUJsjS15E/Czy2pzjU+fxjYXtxBngCHyoBFbEmpwtRq5qjTvmNJ8oz5DC8nhxw9B0G5Q8kfNmQBaj5OnuVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pkF1G4Vu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pkF1G4Vu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3251C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 05:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788760233;
	bh=uWhRhKtYywFkMzTpEBOG0GpKzbdc+BDz5LYkwSXic/M=;
	h=To:Subject:From:Date:From;
	b=pkF1G4VuQHmJtJZ+/IOysA/DR8LzyVd0dQihUDSt0tBJjzjL20tWVpwPkGENjS5cX
	 gPx+OxPnI8DwMi2FjuS7v5BDFXKAzTU8SULCa33msJ5JBvv/y7lfUf6dlvhY/898sQ
	 GNAB6W1WeekVH+vVKk3wmskNv3AkbcuDjI5+nIKvBxBBObCgix+xvW6fSYOcezdvx9
	 VFOHGrb71a4MUzlC6awVjf+ROX0nCXkG+ndUIRQUBV1T9rlawQt0LpkUloA/Yruvgg
	 6W/qLP6lPaDymGdUQEqkZqaUYfxWLPW2+RzHhgUI71j518Q5LOQNxhZsqGMWFDbqSd
	 w6uhciC8X1N/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0B17C79F89
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 05:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178876023371.27714.486166568588070197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc5741c9643539f23f21cce78a9d237f89c0e341d867e9950a22f5967608bdf0
Date: Mon, 07 Sep 2026 05:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788760233
