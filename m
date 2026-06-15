Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 770CC331EAB
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 09:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781514394; cv=none; b=tiVdYKSUukqyyQasxxmqD+uU3uAqNahSRCFi6bcZNqAIBqRH8wzw3bXYiNjzHcRg6woDPr2MqdybsE9Nqa0kL9WmUGwIxJg07K4DkAqJWPhF5WcKjyXNXWnEvF8oO5Lx17e7CwsQ9tjiAF9a2Bfo92DSEfluNDLSAXPp0bBsjzY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781514394; c=relaxed/simple;
	bh=DF5tvucoDpBZIC73998EkuJy35OqPNKcKa05aKYc7a8=;
	h=To:Subject:From:Message-Id:Date; b=hpmQMI8brBzbzbevAAoBxYkM7ZT8rD+AiQIo0wjBOWZC/l3/HdGNwYufHKTSSGMqozKQX0mc8dnCEUkEXJIcRivpVRsEyqKyQQ5O5pmMauZOfi6YLXrcAdSYZ6zPaAO2Ke7vVoktBhwgMWFkVo07vXqXJbfAm+kPOF82N4WXRjc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bZyqIJFS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bZyqIJFS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5D1DC2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 09:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781514393;
	bh=DF5tvucoDpBZIC73998EkuJy35OqPNKcKa05aKYc7a8=;
	h=To:Subject:From:Date:From;
	b=bZyqIJFSQ8EdVCPLO6d2a9+f/7MhZODisVBkwVhPV+QStZXL+XCFPIA5oBABn6MgJ
	 //x/ednX72JzlBeSnaqXmZm0k6kM97q2Q/dv+gYFhsHmyepu/0AR9D/ECY7ONFffGq
	 HIWbsAfEG6DAyonQoJoWOkGKZbCwBkAIRZc1Wwt0qYGKT2+/b7NiOqZwedhREe2L3e
	 1x0Xf5xl519WY7R0hdcjYCJ7tMiJIGj7mz3k4wZeng6P+LeD4v1tV1e1J07o4wnVUU
	 f6v7BhF8OusAMy67nitfm4i1nlnUH7jJuXP8jmufPx0tTUU/HdMucaknW8iZu214vW
	 WcbY4nSSAgcQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC578CD98C5
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 09:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178151439369.18547.4177577569672105374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 610d32b870e7cafe360d61e1bd62241dd145bca3860de9145cd168107a8f6818
Date: Mon, 15 Jun 2026 09:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781514393
