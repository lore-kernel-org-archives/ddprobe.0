Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C8121FF61E
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 18:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763748714; cv=none; b=IPM7gW5KcVA3PVTEyxNAaX/uyz+/MdWQkNfjkFlRiJYvyEJmWaKnAfzSc/fTUE6t6FQs8xmDvt3z5t2EVfbhPZ5k2i4bHhkW0YO6XxQ1K0QkV5aNoiU+8wmrCcR7RVzXbTOjEMJVM9LK/RvZH2Cr1EGpYiJQjIqseLkAeOHnTSw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763748714; c=relaxed/simple;
	bh=D1D7nLTqfR+B8DUGxYlzizEOg+800PbDbNZi2tk0/lI=;
	h=To:Subject:From:Message-Id:Date; b=sU2V9dFfHp4hfbzsjDtm3/xXZeFkit6ml7/ENEGg3FHlj7DqADvQtFjkbMa3IkbbaR7odRtXgl+sb8t1qWm5u+9clTKdy+RRUrGpmbz4+To/ntKrYHpdWkxi2JHOBA6asegb6umLVUUYXA2SUJjD9+gFQGEiwHm0Unxdg2mdrD0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bc/owJTh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bc/owJTh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7994C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 18:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763748713;
	bh=D1D7nLTqfR+B8DUGxYlzizEOg+800PbDbNZi2tk0/lI=;
	h=To:Subject:From:Date:From;
	b=bc/owJTh+sjvus4mC5LIpH+Z0OV2B8wV3MEkoU7XohAf8EKlmMmqXXtckc+e3Yri/
	 OMI9JBA6pXIsGN98aX+9C8hQRexJJrgBZmfYKFB+WSFs5J0S/F+dTUdpiHUGnufXZ9
	 hc1LqtQysuDR3m4uuN/wkmzcKhKBoSKQhKKmRY+7mDSA31pAOrM4Q/0gv2v5lci3CH
	 dkL4ER8It6QvvOBzAG2Crq0ETMVZLj5xLmEEOGJq+gaXR0f8MlFaKtpVxzLv6xEAu7
	 WlSAZHjm+Bjp3rqGwFu5GXLY+Pmu7VOvMwsfuXU7Xv4lV8tXmnXsfc4VXY5t1BFCd6
	 hkUuQQ3q5hctw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94418CFC29B
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 18:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176374871359.23528.2788240526405252044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e7efec422e443dd90eec4e327ab916b4faa810cbfb71d1e717defcc7dd47d47
Date: Fri, 21 Nov 2025 18:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763748713
