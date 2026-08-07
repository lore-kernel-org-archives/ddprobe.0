Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7C453A9851
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 21:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786139434; cv=none; b=iCIBC/LQhAV5Y/n8nBWx3wXHC6T9GVXabpUZTyYnrxmxD198tIIBQT5eVbNrt45c24bGMw+WeHIjMwqAzYQsYI2C8m2iZGj0EkbZSOPamg1S/09nQCONa6Ykq24TvrWMT144MUiDsvTe2BR3A2T+RRgiuIGm7m/8x0Pi0MggDHo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786139434; c=relaxed/simple;
	bh=3D4JQGTUiGwVPY+FLsXs71+CYITc03FCvD/mpRklBBY=;
	h=To:Subject:From:Message-Id:Date; b=spXov/d7gBHeDLR4LSxMm0JGRf7HGrVmU3SpQw1aVFDuxtqUqKMJQivzDPBLYLQk6u4G9MQ8jcfooiWLngO/fYAS9/laROGVDtHgXhzmhFj/NxGEHkyFSWwpb0aaTahwx5qY1fGw2kSwGomhD/a0l72P64yitP0z1EKRz8cfvUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RIYrJwXg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RIYrJwXg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D11D1C19425
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 21:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786139433;
	bh=3D4JQGTUiGwVPY+FLsXs71+CYITc03FCvD/mpRklBBY=;
	h=To:Subject:From:Date:From;
	b=RIYrJwXg1r12QuAcVkDJ464m8vkdjS1iOYsFIku5cHcPArm6Oze/jdVI1rz7CX0Fk
	 B95FMAZOPEFJ9ZSZNOeE5vPVfr9N4+6S7jJML5qzTanYYVodeoLFoB3kXIS7ZSpGCg
	 i1BtRv5IyNLMBXnTvl6E+IANlfrX8x8lzk0GxOBJTqnC/22a/sPu+3Vm266TYO13+h
	 w/Oz23lsYjfmX7EitHNnDObCZn7oIb2l+LFQCBSBlgHhOdTjN8GxMBS19zLDPhUMT0
	 gxGeRw5rVPu4k/1vdRD/q2GdAnSWDHkJgcyYsoswFDgLP9fGbxVWYi0EAwpt/vYCk6
	 x5tA2yM1HsLTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD191C5ACD1
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 21:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178613943369.15040.14368578314247221574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ff49ab6f0459a50510f72358e6ec75da39ec22a515e24a210d8a4c63143769f
Date: Fri, 07 Aug 2026 21:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786139433
