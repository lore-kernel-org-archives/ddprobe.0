Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3FA31A6815
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 06:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775801853; cv=none; b=MXhkk1bY1HiK4QNdhzCsTF32qVKGVuuyXgIqIZnFYBI948zSyGLNqF70bzue/U5a2M7e85J7pkFv7/2cgkk8AoQEhSpJ/hxhEXbEjxPX4OQ8CMjRmOdplFyyiTRkDW2uqWF02U1IZYWL9M4xwWUgxahTP2hSJAGxG5CjIaFl7TE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775801853; c=relaxed/simple;
	bh=wQzDutD5vGXZrVLwEhs3lpJTN5F3uFtq0rjEFXmKqyU=;
	h=To:Subject:From:Message-Id:Date; b=ICFo4xzlTf+udeCCDPY9n6Tl/YFRU/tbOqrvrCWkFDqA9aVw3LfogO4/VwWhz60drSeaQH2yWl4iq+l8yoTFF3Qxtbqt2JkaxvrZVByRJNXwpFwU/E1FRFRZv3R1+MePX0IAhJ6cxpCkHqCZWByhK5CDXzISvxHOo40336wPc7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VhzTpuO4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VhzTpuO4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA4E1C19421
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 06:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775801853;
	bh=wQzDutD5vGXZrVLwEhs3lpJTN5F3uFtq0rjEFXmKqyU=;
	h=To:Subject:From:Date:From;
	b=VhzTpuO4tUaZ+tnLMzlIeas7mqBNnWBd9iWrCjw0AC8KFcJBDqcYwnuvlvirNjCHh
	 RCMEDHvkWgHjS/R1o8OOoxTcR0yaeN6EHUOf1uViCyxfsgIRhm5+64y8BT55lFVBJZ
	 fXNGwU5skkoPRQYxXK/cMwJxsQX792U8HnhP/JrjxSVHcPrzOEfTddR/Qu08gDVcSn
	 HZhYlngUdi8AECsSvENEFXulLkG/6FU1YAL5NV89Xx9WdS7gCxJurWXqxt9ojUwbc0
	 riRfjIfFPrH42kM7xgrH7SNkfOKet1vJtsxDnFlUTCvsUPnjdWpgGHSmcGaCh0daeA
	 6+LSlzgxrmCtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACDCCF36B91
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 06:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177580185368.29383.17955347269026079664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f190adf4f7ec554a4dd768fb775ba768e7c677d79901d2a52cc7d664d968c800
Date: Fri, 10 Apr 2026 06:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775801853
