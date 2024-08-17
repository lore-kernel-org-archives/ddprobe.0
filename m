Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 498461386C6
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 23:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723938354; cv=none; b=lXOkvavcDOu/glvJipjDTtskwpvI7BxJZD9ng8dg1O5SV1S0Or4ZxhW6tMkCM1TLU+dCKhDCxIFuWgwL2ycFScGuTaZGosIDajUcXG9Ffg9sl2LdRmEVKVw3fAqJm2/i4kRnMZb7J4ju4z06wE6mNrneCsG30wAlNuJRwJhuds0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723938354; c=relaxed/simple;
	bh=LMv8Ltqw+WVz94Qxlp5jmtcroQPaUgARx4NGhLAXibw=;
	h=To:Subject:From:Message-Id:Date; b=RDs3TGiS6aklQUYmV0gU/X50X4ielLRlzr0dSglnT0vN+7HzD5wx44quuzwL0xwUaosSE4l7X3lLqOwE8Vqw/mkjUUrBFS+UZShUGxFojjGVyNvV9cHXHHzx6G2WVjdyFiYetapG1bc9oVRbrAyvZOCJf2V0yL14Ndki8F4+Cx8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HfcWqfL6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HfcWqfL6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE550C116B1
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 23:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723938353;
	bh=LMv8Ltqw+WVz94Qxlp5jmtcroQPaUgARx4NGhLAXibw=;
	h=To:Subject:From:Date:From;
	b=HfcWqfL6ohfWWlNgwF8NVckBxzcaQk/Zy4fd7cJ92p+igAff+Zhphf5458Pok/dQS
	 oqxJM8ISiXBtIB4rqmxzqvbxfVrGJg0zrkLrp9iVbD5hufEYGVfSFn0O8Il4Lt7I3K
	 1OTsHU7OW5g81xQdVW/YtOqBhyvPBGaI6wl9c+qLqTMOL22yAVCH/uzN1xsoSVdtr3
	 ard+yGxtA3GExX97glw4i9d+Q44Q9T/mjMVPyhII0/aA3YUfyV0tOBsIj4pWXvFL3W
	 ih33xcG53DDRDJDKbrPPe8IUdAowvPLgFAnhlE1X5ibtJQaIBugqzwj98saOkaykRd
	 RX/U0gGo8iPyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 996F8C531DF
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 23:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172393835359.19093.13712177132779638546.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4ffc3c87d21fa6bd8dcd3c96c681409e1a3194871afd63e4a8d0e1af502586f
Date: Sat, 17 Aug 2024 23:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723938353
