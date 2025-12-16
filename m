Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26CC4230BD5
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 01:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765848174; cv=none; b=XgbH30lOoJyk6kYixAoMX+uo8Kt7sjXYZBn5bwfShvjk5hqsUQ1A8XGy9c7KcQ8JK602yKBxSDwa59qRQqxUMCGqHbr4UaWNFKgF/yV+gLJzmzNfjvGjpUDDUVKXBbqRGH5hKsHPb0Z0XMKAPA/wCUBAHxLc/nmUW/wwAbxFLW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765848174; c=relaxed/simple;
	bh=0kDDoc+0oV4d1OF7eFqEOjGzS/8DWbrVJv+KWGaPv+Y=;
	h=To:Subject:From:Message-Id:Date; b=ZvGnphOGAkVSxzWD4/B5+NtRJxfiE+pmcPaO4g7DYqGej5pTMfsHlP48WShv5CszzuSQirT2s5ie+CDYMpZQnw6yacR7Gbfy+YNuXzyT2tABisq2IIy1wc/9peJ9KA8Cmqp9d+mARzrYl6HFib+HKpgyRiRW4XctyQ09IITvYtQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TGoc3F96; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TGoc3F96"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC7EFC4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 01:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765848173;
	bh=0kDDoc+0oV4d1OF7eFqEOjGzS/8DWbrVJv+KWGaPv+Y=;
	h=To:Subject:From:Date:From;
	b=TGoc3F964xjaelgiNcrVu/INyAKl5RClrbKLi6Uz3pvGjZ4Qg0wjcgAiwZmx39zlw
	 WvrMsywv2yKZ9YRRtLOjyciCcL591Lq9DEvJQ+sZDL0mvkNnmOZok26wu0tDvU8GGO
	 Xo+3GAlHVUdXlrHSfWjq6xswMcfVb7hCqTfEJbiUaBRoB34Fh6QS0ADFFPVSjmVfgL
	 Lrbpprj110I7LG8YedNFhpUuRyQ3mDeAiyet/NXuLNTwVRmlf286WreJ/1t5jiBtRT
	 2DbMsSXsi2XwwVn+j0mY4RMt95KkDQKYvWBtzQE5Zp5KP/uT8n2aSxJXowrQGLilrb
	 uRoEdTQsyXPcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9497AD5B87A
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 01:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176584817358.23164.726002667194504451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a038a7dd425c1bbd2cbd77da27b94e2d8c56c196379c60c96d9de63c2a0a39b4
Date: Tue, 16 Dec 2025 01:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765848173
