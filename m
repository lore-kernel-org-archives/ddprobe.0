Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C95533CE8C
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755605994; cv=none; b=IN0r3Up0/Sm82glSFt97F+tRQOreYLXvdJIYcEXawLUrLinZCZTlNxIC3X2ZazuC6bJ60vg+VyAYmsTPzRkpzSClzB8YIo1tOXMVnsDDaTSskIrI5oXqJI1lec49G0lS0Aix2vaJR0WMTi+pwpZYQUD+4rGiQL9b6cILTij38M4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755605994; c=relaxed/simple;
	bh=q6lssDPRusDz1/vpa8NrcJOZljVzvRv158aDErqAr1U=;
	h=To:Subject:From:Message-Id:Date; b=j5fJNYuZzgjdUe3Z3tlHMjalUuRtOXURj0OtYErXjLkpydSGEaJpre2g2rMsxpuPd3zUpnIe3lmlzFiBgr0o/1F+kerJ2Arq1LQXgjb46raLy4xF3XW2H7cs4n9kXwS4UuTxFuH+sOwQpuFVEioQmCwqmeFMx+wsLPw8iw0peLA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rlXfk1O0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rlXfk1O0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C3F5C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755605993;
	bh=q6lssDPRusDz1/vpa8NrcJOZljVzvRv158aDErqAr1U=;
	h=To:Subject:From:Date:From;
	b=rlXfk1O0vEfQXk510ltXvqu+qPC08rtxBlDLnV+X/nrvZXtJa2LtHjb8Gz/aJQnc9
	 uyxCXCLxlru6juYGOHQkUMv5umlOggnN7xacZpkyUxhm1T3QwWtf549fmMIzMTjuLG
	 DXRAITIc5wt7eqSJo9bDJ6EdwCHvgsfkyJk4GdGhqi2QVEQDpEBidn5opr7CGv1xyC
	 QnwHRyYQ2ylhuP/zDH9vyXwfI16FFLcIz/NCi3pcnR9E8gpuBAj0LyzZ4XzoE1Bh79
	 g83paGGwNfkKrkbq4EwnNs8MIz++uWYxZfK986zxmfxvhpwDgPVeD5zhtcozYg9Qis
	 IysJlBqliwr5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F152CA0EE6
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175560599357.22220.2740817158885641045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 859a1a5658ad05a5cb152fd8b3e85e99b94f688870b2e6d663e94226113b8fcd
Date: Tue, 19 Aug 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755605993
