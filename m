Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 100761531C1
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 23:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769643234; cv=none; b=OxqyeQtl9/XmZwewZoJQ1JkhtYv0oR7lN0ljCki2Ax8VuBmkrBRKV8F/E9NmcGywhbwseSnR2U5TsxT2I9X5kUXA0ZTjQ2Vwmp4kMIt/+eZywkRENUHAUQw+VfgnyuS2/cjxxIIi32ipfU5tQdyPfLxNXJT2j2nzozFiuVFYKFU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769643234; c=relaxed/simple;
	bh=6Hho23Jx/nXT/tjV0Urr1TvDrs+fOdwTBk84KpBO6yU=;
	h=To:Subject:From:Message-Id:Date; b=TFdQFJLInwxb4x894zNTnkaz26M/ZJsqzIx+1kGynaDOUcZlir+Mq8tZ8BaRqW7jpfwElgCtST828AkRVjBPcXO/nov9BCXRZ824UeKz+XqYkxhfsPqmsNgrlYRgwzMHlKRFSRwo5AdpIlYTthV5PImGv++HuF++p8FIx7psz7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LV8B0SCs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LV8B0SCs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4056C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 23:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769643233;
	bh=6Hho23Jx/nXT/tjV0Urr1TvDrs+fOdwTBk84KpBO6yU=;
	h=To:Subject:From:Date:From;
	b=LV8B0SCsUJmnq9FPLP5+mqHkhX6RHFZoTom1xerTniZ22p4Wn7wtByvhsrZKzewj8
	 /gTPy0YjLfrwXGDsjMlp0jZLNH/OeCCr1zckVHfWBnrK+CAQ/d76Z+GiSpsOSEQ8+t
	 3dw+Q43XwmeY6d4oBJ543IZnQnbCWhK0eMrRE4Is01tehdDa5HczD04loR1mmcTOaD
	 BAJHyFCtGczxMe9biiyw9fxdY2P8YvEim7xveKfiMd94/hTdG8sFhTwDlYM7tXUXUH
	 Fz5/YVlEyV+9GcRJmfAbRbFI70R3mjqJHtuJ1kDVLirvqkxOccdo2w4FyrPMS8nk1/
	 j6gqhN2bpaY2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 928C2D46C15
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 23:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176964323357.30350.2666560496142757035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cb59d72598f244f33335144f72c8a490995081e5c2cb898658da418d0822b76
Date: Wed, 28 Jan 2026 23:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769643233
