Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41AB4199E84
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745640594; cv=none; b=E3AyIwHd5US0a8dBb8ZygOiPnySOECDYQq+kRHqjNGtlQioAWD0ljQJfM/FPuLx3+uEEZYkCqNyq9jGwUXJcP3zSDFqtTS7YQZ/anLPUfJCIAftOU5ZWLUcMIyDlnJdy4nTOKvKLh/t1c9Kdt9LYNoPKsfq0YeAVEzMwh5Y3rgA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745640594; c=relaxed/simple;
	bh=mmThA3H/Sg9EmGQhCronWDfV+0M4VuSWa2ZiKTmG/h8=;
	h=To:Subject:From:Message-Id:Date; b=cfbIduUrJ/rvjFotHOT7KgEdi+mfxcI3eGBKHTidfpK5w+7KLbN3fuO3lS0Lv/06QNn00+2PL9BpUmSd8j1NCRsjWeMYlaawTTGddc1vHgV9kxqI5uCOxs0l5lv5Xsk9I72lskUf/nx9uwwATyCpXn0ENG5tUKRpD31lL5kick4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FRL3SWoD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FRL3SWoD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB222C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745640593;
	bh=mmThA3H/Sg9EmGQhCronWDfV+0M4VuSWa2ZiKTmG/h8=;
	h=To:Subject:From:Date:From;
	b=FRL3SWoD58LJqgzUqfhTKOlfI3vnh3JVJLETFAt/oJ9ZTengAxMgQOJqtFQXaqePT
	 bsxC0c/c/I6B8uwTOsN4QAKHyDToO0dyiQa5jdVfImFcy/uSaU1CNd+H0ArB/XJNCC
	 wn8D5kcwRtdeSTATfJR12mjCugvQtSNRNjK1xfIyLEojNWDsn0asQbGfy0GCWkiLzg
	 9Ko5H/NyRyXaCB/NyKHzJYD04NkZUu3PiLmyGYQCeUAHWd5gkt10TqFmslaEx6aXr/
	 9qt6N03nrmJPeOG+QxLZQZnbUM3AclLBDeXe49PX9LYr3WQCoxt2AzSgMTO9pIv4W/
	 Mt5MJQm6JrAwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 956E9C369CB
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174564059358.30210.2895842221398052992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 878ba8a4ecfddf8c400f361876936f0418fcc3c6b4ce7070d1dcb15faff14574
Date: Sat, 26 Apr 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745640593
