Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DFE884A35
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 06:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770273234; cv=none; b=qsFnl+7D8djm4J2cP/uVtIIkB/2b0irFEm40OiNhJ4KmVL/FwwjasPycac3INp78jsw5xgHuolIS/n8kLSxRk/IjmqEEWLJ5qkQvb2vApkN1XGa6TP4nF1fXrAr4rmQrYDxU6sRuCp+9YAnChID884EP/P7ZzB4nR2pxSC6heDI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770273234; c=relaxed/simple;
	bh=ZcFclIQeUveHJQk+q9gCABx6RoogV1BGtRKjwkCj9HI=;
	h=To:Subject:From:Message-Id:Date; b=kAdPfHoz1uS6pPfq4MJUjEDFLzTlGxs8J1hxsqvfMsLGAVua9gN09rQm7Og+ibAHbmriSfsfD9xrL2BRvd9IKz8LQImRPZBG5QMFItc9SWJzJ9ucJSyQaWZ9bTAEICmtF+Zi9Qcy85wKCgV1syyrs/a8zIaA4f5NO7jANta6om0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dMmLFRJQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dMmLFRJQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8FE4C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 06:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770273233;
	bh=ZcFclIQeUveHJQk+q9gCABx6RoogV1BGtRKjwkCj9HI=;
	h=To:Subject:From:Date:From;
	b=dMmLFRJQX4/pqICr+kMYR24Pwbz7uVJdZkjFGpMoD+u+oG5oXkhO3TQLahd+eOsnF
	 FBhyGq7O7PliS7xcBIsK8u8S9lQze9ctT5Tt6y2cYWnvxp6Ni065UpH0JkfOLrvzwW
	 CKKB9Zg177Ku5/HMyOShG2A4I/Tka1h3jvn6U9LvuZaVqpshDWjdYF5E4ZW+nacyXz
	 e9w7fEP6yotowwJc0u3kHy6YrllgGK9hFbakVZIaqD4ayEKKFc9fRcIaZpvYhSN39M
	 oZyROiQJhnI5WzFROclItTEd9Uenc0gJIJvRjbJswVQ4AjqbAoLfWA9G5OtU70n1iL
	 3y5WCTCW3qzqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94146E9126A
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 06:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177027323359.3393.2316274573779099476.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fd9635c144a097b208065e7833c3db3427450b2d0dae77673a15b216021f7bd
Date: Thu, 05 Feb 2026 06:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770273233
