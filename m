Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F8BB2264A8
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752790194; cv=none; b=sJY8j1W2oXVCK0VMEslXlXVQY6be264RqOIIfVskNuIW24eV356UQc8A5h9hp4gVsEuLHKcEXOLV+ZC5Ecf7++3lhf2vnZDYsvLmxPqVfaB8bS0duUwW0vpKxOAMAGgMjM+u4jTnwxY9Elo2E/sC4kiklRD05SibOxScRT7OjDY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752790194; c=relaxed/simple;
	bh=+o8LW47gVJ1zSoRFmWpr2BVVr7hfLzJx2JYRgR8sfJY=;
	h=To:Subject:From:Message-Id:Date; b=qgU4UjPKlRxRsnY3IRIPD0U4K+WE/Loi87bGYVgZcTceX60Pcn/QXKI9BVh8PPcuvj53zyKcTQMj2m8OUitocs9jCh7nd0nPjTsh48CVrvzrFqUjJxuHOR6I/fFF2bVm20LK9eYslZctcieYjiGo+KLbwnnbQkg3eo2h9hn3yhM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TIOALeWQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TIOALeWQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F54C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752790193;
	bh=+o8LW47gVJ1zSoRFmWpr2BVVr7hfLzJx2JYRgR8sfJY=;
	h=To:Subject:From:Date:From;
	b=TIOALeWQ/QnAfOCXBIhUFeZUIengDb7qn9Zz0Pq1bTM33pjQsT8mU0m+92KeDV/P9
	 /tCUqGNXLEbtzzLd3o7sOunGKzrCTgH0yL5ujOKde4j3CAFJEajeouhoPDUpJP9AdR
	 0Ji3fWmwJpAkdtH/0xZ0qyEMAVbz4pDZmQwY9KlPuZAPdi1YTU3eQ+PxkJ73G3DSYZ
	 XQg3eRCgjLS9GPQ/pldi/UW8R8WgJug+XDBGFNW3cMugzxJNUe/6Clsocs/jw8qOzp
	 Wt2OxqKw6jxwsHxLWW9G05UiuqNOyP2iguFQwDagowHdWp4OMcKSkbFMu3YV5ihNyW
	 wWMttkO+wf7NA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F823C83F1A
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175279019357.3207.4631134063712120471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84de63a68fbec75a07843de5dee35999a5fcf90604ce35df41a7d510aeff5028
Date: Thu, 17 Jul 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752790193
