Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EC9C2101A0
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744325994; cv=none; b=k7zW9ImrdQmqrgLBhAktf5iKCMXvlvHByVreP7z1+iAM3AsD6RuU14nF3m/bhaNnwPp/lm2GDOCqIRlpcAQb9JsADP5smOw6SnluJA0fpRyoHyWPK88Nm1m1hW4+mjrRtuKllAuu6lsMkMSzGOmrzl4wVllIEOYQ1ztVL+yECck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744325994; c=relaxed/simple;
	bh=pRnb0PKVblqtkacm/3RKhMQbpjwWFe9gjwTfh+zmbGo=;
	h=To:Subject:From:Message-Id:Date; b=B5ctfM010oKqOAeD1QMZ8Akfbms/tMRfaweQGYW3rhAaoPDMUYR2+na4DEG9Se5k/3myGkCkEgVdRWGf7S8iXHFfLc05nFFQP+NCxgXTi3yBM8nXzZd+WwC1UdydCezA/l/Y+H0RousoAXnb9NkkeYhhD1yO+zaKh4LCbj2zFW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sCP8fJmH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sCP8fJmH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2F76C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744325993;
	bh=pRnb0PKVblqtkacm/3RKhMQbpjwWFe9gjwTfh+zmbGo=;
	h=To:Subject:From:Date:From;
	b=sCP8fJmHdTLXA9u6uzwZKEyvIQg8hJihfWLMyUcHu7DlMxIDP/cWXqHKaqxa3nE3Q
	 OfCkyFPhybMgSzAag09HzWKevrHl+WXro+1HXH4NVidtsczDXmjzERsJ76hQM+zvgm
	 TuggEvgjANXbo8AgnzmaKI7PUbldxAZ8dxpZfqmex71vbFFy1vGt43T8OnDi48GtJk
	 gvtL8meKAopTSq6FCjalGE0nAhoA/0SCNUCS37cy/RmmoyCetv7DegWh4sRb9SN348
	 Lps3IxWQF7r8svztaqAjYhaCXMCzLXc+6VEpKyBBxS6sZFOqxalIGWAFJV6B7KKk1d
	 6qL9ZBja5kNUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A35EC369A6
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174432599361.12786.12870034837680996850.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c50db81b9c31aa5ee7ff8aadd941b698b3f4abac7de7f31c9e6095ad4602eda6
Date: Thu, 10 Apr 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744325993
