Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33990346FA0
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 10:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791283234; cv=none; b=uthOijq+j6AQPW2adyUAxDEuoZdkh4iWdrqTn+xLfCvL0TMt46qGA1MRCrXtqE4M07NCA0MCVvuFB9GQVXJ1rLcV5OHhiEH7lgZ73t9ovgqqnvobgbPAXU4sJFzz5c30Q6aavIEKw62zz3dvH3/esGzBcKd5QKIt5N6W6pHIiLw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791283234; c=relaxed/simple;
	bh=toboCCYTCSfgAn9sVfnCGN+LBjHyvLMwKcTRynaoJcI=;
	h=To:Subject:From:Message-Id:Date; b=Y4QIy1+yaH1B85U+JgNMfn3JIHzlcUjgJ7zB7NiKfNNkzWkNnN6wLsTVb9Xe2NO/sAuWOg/6uan6IKRNvfDhXCHr3AyqXaPdlMLzBMtK1LnFwEAaIStEQShmLeykq7L2Anrr9fcTX8uYk6lQtRv86ZuP/dEyfz7/aP2jfKVXHAU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TW4j5X3E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TW4j5X3E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9C84C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 10:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791283233;
	bh=toboCCYTCSfgAn9sVfnCGN+LBjHyvLMwKcTRynaoJcI=;
	h=To:Subject:From:Date:From;
	b=TW4j5X3EtsFXi3DqK4eYN+pmvcKdgyr+PibbixeU+/+WwzqulMOeKbDKU4XYy7CrM
	 F5HrymtJ7fyAL2m1ZoZH/f0QFysJz7wnwf+1MmxnEQpJxYPI2i8lj+9gtoXx4DJ/gb
	 YSmy7YPkUGAnCHUy0j8ZbwEBKIWnrjLoggA4RmaF0bubnmT5MOnp4BWmb0S8wnV+sm
	 +OiSmlvncpayrHSBZuWApVwJWBLaRWgxD8Z0hYK6DTC3x/m1LZ/npnkbtdgmyNgY0s
	 GNMNl+Zc32iKGO1u9i+t3YDKzfgxBw7q9iuHEj/W7wh9zMdLx7gU3xkU3IjcL60p9l
	 W8rc2x7N5rmYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6FCACA5FFC
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 10:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179128323373.31372.7246262027069551925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f90fa28c94544f86ff4ac851f7461d9ed1ec9eb123d57d961145c4e77d8e46a4
Date: Tue, 06 Oct 2026 10:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791283233
