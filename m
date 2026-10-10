Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6895E385519
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 10:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791628834; cv=none; b=AQhZa0IGtPPkOGAfuezUeM7wFJ1TCq8n0VubyPCGueRumWHtXs/oFzi3op4T3gcvptJ2n2n9SgPM3Ykr8sW8lqvFAi/L/h4KANjCamv2qtpJqLV73B9dRlhWuwmv/IB+mbCiHqzHMDR+xHaAKSdYVe+5Knw+QMjgxaCTbEfjg7Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791628834; c=relaxed/simple;
	bh=dquXPIxOnFsSqEWWdB/or72yXT+jDGfyRE0j0UtLP5s=;
	h=To:Subject:From:Message-Id:Date; b=LS3YOD1Dt2hskHr7LFikTYCrVfBEI7BzkyFK9Q+wR3Dg/OSMcawub5UAiVZKGuaDUgsFYgBQnRM+YILxGGaAuyJ2c9yyre/V09d0B6gHWY6fWkDJoPH9OfJK/k94XbZk5N83V4t0cOK/4D+4DOLUkRuigP4FmislmU4H7B6qVps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jonjfFRi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jonjfFRi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D05A4C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 10:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791628833;
	bh=dquXPIxOnFsSqEWWdB/or72yXT+jDGfyRE0j0UtLP5s=;
	h=To:Subject:From:Date:From;
	b=jonjfFRiYL+1sPQNwhSnyrOS15DqkmHppiWhyWHuYJalDYf53gw92lJcNCXf20gi4
	 8bEGahdIX4tn2Meiv8ygIvt5QyeLRkZwiREASh/LZFaG3HRF92VGsR9OrVRyetk4uH
	 sORVOl2vbKdlMFyoJ192lddlpElNjFHAwIdq7imHS4ScTr/vfENtzOdSbi9Y4MWFRu
	 427Wt41nw6LnMMfTq/ZBXeqP5XSX9crzZefStBNpbE7yvZEowKGX1s9uVI876QUF2X
	 kLphqs+c24RduOQxZQlLqsTUyVUCmnm7hx8wRSpHoPTsgVKMvcVE9VT5su0PryUBJS
	 JV2dAsCjNRYGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB6D8CA9EBE
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 10:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179162883369.24304.7985918221165768185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 924ef7e693fd734e31c2a05165e70772a63245d764ffeffb667b48fab7d3a880
Date: Sat, 10 Oct 2026 10:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791628833
