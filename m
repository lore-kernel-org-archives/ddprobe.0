Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BD9D21B9F4
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752079194; cv=none; b=d+aRt0/HDlPTF1PNGtnkvr8WkX5lPK84EF93DTyxVuhhHEAa5Wj7VZS4iYmAvNw6+M4WofpAZR1covKHuLXxGA5O0RuDxqJOUdIyxrLgJRYdjOxFhl8Q/eRLsnehfSAf5LCdq4kSrR9BjTn8lzsQgESK6IGkK3EZwGKYPWUxmCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752079194; c=relaxed/simple;
	bh=mK03ksEqotprjp2Jm+XWx5QDTglB1kRyWGnKitu9NiY=;
	h=To:Subject:From:Message-Id:Date; b=eHYAY8WgRSH5qoiXKUA9aLzAZAFq+VYUwmxr2/IyUVhWm8uh/okS/E6bdKFOUo4/WyGfoHDpVHS2JMplexFWZo1RZz6UDngEDp6lYcXtiHYLJFfFtzpgf2sY73i06Gj7pDGULsMthku5DFpT6B/Uvk6V/po9WBuKfMSfA4lKFqo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AgwUwEJp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AgwUwEJp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1140C4CEEF
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752079193;
	bh=mK03ksEqotprjp2Jm+XWx5QDTglB1kRyWGnKitu9NiY=;
	h=To:Subject:From:Date:From;
	b=AgwUwEJpLjucqTo2CPsCEEA9p6mef5mMe/IqlqNRI5cTLTB/wIbkATmIdf/JjPLkO
	 SK8iAKo/PzEs4QpbcGAffJGRJGbso7+Urd4pDNRE8UuHL+Tdo/wH45E/eIs5L75TTg
	 qTvgMX/I3wRlfo62iW+/ArvqBs/6HNyZaUtNVZNeMdOQVrC4dKDBEB3qFPkwf5PIe9
	 ZHI+d6dfepBD6d52jZ+9MzOcz04iJAWKMj6b0ejPz4WYwzs5VVCYtGzvKdZe2dx+PI
	 Jg8IIbHJ2W0pa7eBgsc74k5T4W0PF6hv1330rdneJT9aUcDDzl6TApE3C9o/l7FQah
	 SjjQfQLFlOjZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 939D0C83F03
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175207919357.6695.8951342150931004182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3f891b03e9c40bacddede11738dd04eef358f94b1f289239d0cc04f619a5995
Date: Wed, 09 Jul 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752079193
