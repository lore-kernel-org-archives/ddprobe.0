Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C193381AA
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 02:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714183943; cv=none; b=BrThFApFoBJv5uW8voySccxy06uEeEZ44Z763dY7UllGkyg0K5aeXSSwuDDtfqIjqGu5v4tp3OJ/nd0+yB1Ti/xyqTdrNOvpYRL+WJLheH3sMbWjPxudgskludo4IFs8G+IJsSKThls/98yvdMl8TRZ4DZYZE783n1OttZqtY/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714183943; c=relaxed/simple;
	bh=D5JLNa8UA/GUuzKk+p3OkZ9FBlTAQeEtBkYowzEPwyA=;
	h=To:Subject:From:Message-Id:Date; b=rplv0CqjmJ6I0cFtVrCdk6UwrCXqKRVS23YeW9enWiaFEQrS/XWeO0u2s/nwm+TKHkAYpKDQNjI76ady/zNkJfOKpYNVEvUa1ClZikKkSfTBVJvzahgMZEmgh7Moy3BAnoa/6c/lb220LVhkL5nsnENmLCJfzWs/pYSu+0OOIlo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ts9U3yMx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ts9U3yMx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3008C113CD
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 02:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714183942;
	bh=D5JLNa8UA/GUuzKk+p3OkZ9FBlTAQeEtBkYowzEPwyA=;
	h=To:Subject:From:Date:From;
	b=ts9U3yMxse03WUAJweQMqS+it33tJlIN3tkZ7SbvJVscEBrHEtM0h5Yx7PLF/8Cmj
	 lfCSuENnF4EOO8PGqxo8du121Yh9tE9hKBWDuYR7fQlRl0VfcsPKO5tabUWzON+nBQ
	 tVdIFU/vcSzvs6z4URst5u3f+vr/ilrB4xDhzZg7nSXIJEuA3QaN7qbyPCAkPhBVd+
	 YuoQMy0x+E7NDOkLfqV9s+aiVGXOmMso6YbZ/PMduRLy9xF5Rp2JPwkZ3wAhTjeCHB
	 1Y2/mCw5lr8mQcer2RCxQr9Q6KJfw5pKdc8falQOxW5kxhV5RtB4cSEF538d48jV0S
	 HBdIJypjWWO1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDC22C4345F
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 02:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171418394276.22632.16541859978545493980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 669c0d06bb9a7015dbb4a0aac6c02e06e670b7da385101137be64459818131cb
Date: Sat, 27 Apr 2024 02:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714183942
