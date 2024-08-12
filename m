Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A5BF183094
	for <ddprobe@lists.linux.dev>; Mon, 12 Aug 2024 14:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723473954; cv=none; b=pEe3uBRqcbYCXEbIFnbo9WxCi6CgcKHnb49kamLuUcAvFT2zwtisHmojByN/Yc6eDx5Hfvzlk8+YfKbQ7VMdcCVqYNQVo+NTDHxhwQo7byBfB98bZdU2U55FT2z5cks59gnyfKqJkPG06/5//7ZXJ4kMkta20eDlO7BODDQvG84=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723473954; c=relaxed/simple;
	bh=jqIGGdGz17kSRRFHl5LmkcS6SwmZG8nIpw//7RsLPNc=;
	h=To:Subject:From:Message-Id:Date; b=LdUkqIObaZGDF6SXBNL/A+/FA6OfgGEJYI1mQ3YRWWIIr6NXqhc/8/FjIHzK9jmB+QfSNX2w+Bax8P7DMypO4lPy+BUbpkKH3/4rFBQ59KjHUpq2wldM+kuIgj8T50aCGoWA638piZvZqRxBFDxVeG4b1fnnWXYul8Yay2IkSjY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kXoccz9x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kXoccz9x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5573C32782
	for <ddprobe@lists.linux.dev>; Mon, 12 Aug 2024 14:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723473953;
	bh=jqIGGdGz17kSRRFHl5LmkcS6SwmZG8nIpw//7RsLPNc=;
	h=To:Subject:From:Date:From;
	b=kXoccz9xRCZpFsnyBenNLFC38s53T889HdphY6skMT6SQDnfwwaAktMLtFdtd5gKP
	 6Bis3pueJrW6wX6YIDGrh83TehWXcK+ULO/oaihjBzSwfHPQqX05RyYri6gfvZOKjV
	 9JmSfGFR9M38MtOtzCtdyO1FsbZ4WhvvXju1o6cDey3F94jw90WVdPP+aLkxYEYfVU
	 k1jhXchhJqdyh+990nzYQ6uhAJHDGlSJSJfdjgyvvLA6F9j0Q7wDSwylRMuniV6QSP
	 7nPSnXBmBVuofvyb7iqnNXl0b3RHZ5adszYZp3dd28NKuYyXoNIMIS7V7jzAHYd5U3
	 kHAQQXxk3Hw0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F96C3DA7F
	for <ddprobe@lists.linux.dev>; Mon, 12 Aug 2024 14:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172347395359.28470.18035985824517863637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5a3291a791b869f90a940cd659fa06d8cd76f53fd85b6cf9cf70ab0e770bd01
Date: Mon, 12 Aug 2024 14:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723473953
