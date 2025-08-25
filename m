Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22417A41
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756151994; cv=none; b=ALecOdMarmoHHWtu79Bi6hKOfHvYbdcqOYKIwO7FFuza1XwnXu6MbNSCgdnMxPlJuloR1k2iDV7PN0vdKN6gC3mSxh8ROBzH1ExhW5yavvFCq0fiGfLvTNghosxHIT94ktUgCkIcmy+eSW0bE8EDhS7qeUkWKWm9M/V6/IVoJ+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756151994; c=relaxed/simple;
	bh=sGz0U/GGJr/YHY42rRoKB3h0CDCvBH2TOYLTUgLapzE=;
	h=To:Subject:From:Message-Id:Date; b=JQkXpxnWVOZxbVdEEmxB9E9EOcMhTi/9p8u6JrvEMn0/tfPVg1vy5g5z9qQWrfyOXgZZ51KHlZdLdDwNBPeLwI/wJ0FFxUzpvqRoKw7P3ETAtAmW8dRMPoeNYbVkD+MvJX5dme0kvQzt44kuPOxGl350E7V8WALyvltmUG8hv9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LfjRCFZN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LfjRCFZN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1815C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756151993;
	bh=sGz0U/GGJr/YHY42rRoKB3h0CDCvBH2TOYLTUgLapzE=;
	h=To:Subject:From:Date:From;
	b=LfjRCFZNHoxA0M0Hn6HWgBJ+pt0FmGZRNe0aJT0Ob4fwKfHy4VFvF3nyws3tnzjOv
	 72Ftvp0m5gmQ1ILNSsbErIyCNJFihH+q5CWrByzGO/q0/0tQey4ROVJCkqIE/8o9sz
	 DndwdIdhtOy3sX+O3wqbutgb1gFU1F+QVlzhdJSI1OVIsN89ytZDlGKRFaFoZ6Q9T4
	 e7Z7EMC3BQ933WmEY+G+qSmt9izMQhxHVKofXjUi3JVjZ9KPLf/v/1xeqCxjW4g/o1
	 +6/mBp47fiso5YMySeIgN/XUNyr9IoM1h+TgTo2WgjvBevM94WGbBNqo5Kvx2Zt2/m
	 BV4utCYMTkEWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED52CA0FE7
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175615199357.19417.2086827792532039411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebc65586ca2d13553ef0a08eb94d61ef1335ad96abbb87b861a491a240c7bbf6
Date: Mon, 25 Aug 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756151993
