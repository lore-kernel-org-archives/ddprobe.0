Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D81A23E1CF7
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 09:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776935253; cv=none; b=rX5j+Vj1axSwAbHOwIjXBoGEqmn0B7WGNMQE5L2TpQ2DdQyNk0GpF03iZYMk1offdSxr6bE+aHtJZ4aHqQQm5kOGTxcUYgemRc+zSlYaelqNxLYM45Dt2lFGWOI0g+J/1uQ35FSkRssWxA7DuqE42IjcFRrfXZV7nh+oizHToEs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776935253; c=relaxed/simple;
	bh=td6ft09olDpw6tu3f81W2Ac9ITOLy7wl09SeYhF1C1E=;
	h=To:Subject:From:Message-Id:Date; b=AfFmxNr+kfO1J5pze8q5G7O3vl0ChsVBHxchh8iStc/0lJvvOYKXPYVWHSuhrN6S+o8x3D0Fc8oeyYKlyMRgyKm4mwfw0RdRV3UunSCq67sHmvCRttOgVG2vqB3OEjmLw6Ia7w6wirsRysuzIEs1xXgzwC63mK5J8BqvUzqUoJA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ui5iXvxC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ui5iXvxC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7CAAC2BCB2
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 09:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776935253;
	bh=td6ft09olDpw6tu3f81W2Ac9ITOLy7wl09SeYhF1C1E=;
	h=To:Subject:From:Date:From;
	b=Ui5iXvxCgQ5iR7c3Jz/E06WVlFHUtDBi0jP3Uh1EAS1jpZaEocsUKsXY9U7YyvVuB
	 YWR+2dkpp9PYLYjfm4q14Umwxu/rkB6WVT4TQfMi9ySFRYkIq/Zoehp34ZaA2EWFU3
	 tFDZzQ96t5p1fQcAKgYv7RSclWMQLyYJP1vTilUFSrthhMS8ZKvOb0kXaMH1zWlsMa
	 7SbIBt6jS1ONzgpeu1V1wDwBLeQs+NKGTozMCamikEnoBL55X6wAXHtqSSBlRmHzax
	 NJVSsgaifixZbaKcxfurGwnRnp5MtSrYBm1/uvirlKKXSCOdMJOgTP4dAvSbUSaOHN
	 9LxIJKUHzWD1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A95AFF99355
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 09:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177693525368.24175.7323617558157056831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91e3a7b091a45659795b0054db61b726dea0e1b53509e736fbe557123cffeb07
Date: Thu, 23 Apr 2026 09:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776935253
