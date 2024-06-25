Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75117146A83
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 12:03:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719317003; cv=none; b=VNZDr0/QkJXPcR9MahXsA5OYwrUkdAk2m5TUM4YDnxVdf5qtBSicl+pq0+kk7Bo9zlqKmoGuT7TT0phfCROI7gKUTV2TaF65WzgMjgo+vFbg+lovuTzGGHlDh3aB/c7EezR3kOku/PjrdzRh9iVRs2PSBIeyFN4m/VjGXHTzHf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719317003; c=relaxed/simple;
	bh=rpZAmN28PX8LjRasO+lWdl0I7deCV7zy0cF3B3axIEI=;
	h=To:Subject:From:Message-Id:Date; b=Iw+8I3YPLjKh7AIMKfTZLePgmoBSViCiMyrwFQHO4WqmMfYYOLIBDFCS/McpF7/vDqB8BQpZ/lmoD7tVEPDLclEwuNTPEehf+To8lrWvUlEZjV3eody4yAfZUtJHFWJbgVjyoAP4718f38Yg6gxSNoguuwfTT5/255qlAVkgaJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AE4w+aaF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AE4w+aaF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1232BC32786
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 12:03:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719317003;
	bh=rpZAmN28PX8LjRasO+lWdl0I7deCV7zy0cF3B3axIEI=;
	h=To:Subject:From:Date:From;
	b=AE4w+aaF5JzqIgwyFSEIS8pzyGXuULeJAzH/r1F1VQjrJOrVRboGUREQAa0Detg3u
	 UX1KPmzVtxgi26DT1T5irIhNkdKDHLKV/EV+9e11rfQhMKlFt+E55tn0QO7KPHiFG5
	 eEOjj7x5lGYF3FyPWPM5jheRy/FPwTc/Coimmze8dMjbhMtUrBycwDyEnkVLznqStJ
	 jqp1BymnHmIwOgLttuzh/rIz4VIhmtEcvl52dG0f61sTlWNkP0Dkr0bE2tSGESeFcU
	 3y0D4k9EzB14uQPN2HcSEw3/cjqqGuRrNiZCoursaNuhJDtmcEG2QbQjGcS5S1/Ljs
	 l1KnftsDzO4mQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1B24C30653
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 12:03:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171931700284.21574.930134408745626237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0a5ee4011dc73dd75933a7e270510fc848756f9e30fe38170efcafc688bce97
Date: Tue, 25 Jun 2024 12:03:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719317002
