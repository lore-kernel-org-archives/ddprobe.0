Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BB0F3EBF09
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 02:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769307234; cv=none; b=NiXXSWtBZ+coYCKS/CGEWaXm0xRljhLxx+SndjUVoZDmDxJRa1YiSRencVBNL1KS0F5eQxGZEh1KvNsGN9bor+tS8PUQYHZ3CvFkYrNbHGWACDy3bZhKymPKPYjmDv1U6QcDhxflqckxBvsA7vGrpUeP7E9Wy9d0BfGogVW2+KU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769307234; c=relaxed/simple;
	bh=YzVHK5FbD/QLMMX2ZgjNIQ7XvWBf44nsb7SQ5PuB+XY=;
	h=To:Subject:From:Message-Id:Date; b=SEyqUOf8lplBQbW3zFYC++GX8oEv80rCCGVyyRjbVKAN6tlPqpKcBsQ3W9PPBNusze/A0QKDZBaDPiUsBeNUveI6IhyB2Yf87rqDCDyumpkQXa9kZA/rWUdcoHiEE37udGKweUIEnjaSIUF1w61CcTUC3ZohmyRaURTEs1/Cxi0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GpZCoHEN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GpZCoHEN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAE37C116D0
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 02:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769307233;
	bh=YzVHK5FbD/QLMMX2ZgjNIQ7XvWBf44nsb7SQ5PuB+XY=;
	h=To:Subject:From:Date:From;
	b=GpZCoHENO6xmR3rOreRXPidgjQTBDMDGqFWhRLL5JifQps1gAI97sEgFktZrw9ZpO
	 4npx5KsAY9tkkgrPHS77FfwnoIikXN43l4yX8a9ogs/yW65DGIAux3jPHnINwfHYu4
	 IgrjRB7RJ123zC1HLfMv1um0ZHsVR8DAglNafy5J4j/X5/XSQkz/ha3LINiD63HS4C
	 AzqwatTf0jylzYHH9Q79yU+iNl5SLSpf7L3+b1DqA7EmtDm2ewW8f+phl4zjeBKPo6
	 wX6RKy0r/pGvjxOdMQHN0hSTUXgLzRyjp256XA5Ana0GD5V44jmlsGVDexOe1ZXjb5
	 CUrgcnLEe030Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97947E63C82
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 02:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176930723358.21608.11487295773377726897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 076f6ac298501355adbca807b4461058a89fe35d2edce65d40d584f26f99e74a
Date: Sun, 25 Jan 2026 02:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769307233
