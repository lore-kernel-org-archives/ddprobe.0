Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 200A426ED49
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761287394; cv=none; b=iCxpizyQQsJI0B/AQTKSPBHffiUR5ia560QE+FiNMV/zV5+jDJnFL84isauR+7hifj9Y71E6JxWQPsfBs0OhigY6DHwArzgjnMqzm3Pz5KU32Y6XIZ1uzfiaFKQHIxQwnERJg8nVsgdSnRCZu0EOz3W5UiZM/Z23oI3Fom/FJxI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761287394; c=relaxed/simple;
	bh=QBZQL5vZ9QGiR7F8Nh75XDTI+/f4HWHy0TkGlAKpojg=;
	h=To:Subject:From:Message-Id:Date; b=kbgOHFvGRjIXnEbtoNMj1g4tMXRe8ncQtIgISQhZ+nmBA1N2np6ftSndbtHamEtK3/lPjRWzu4f+GPr9XXxHq7jxFtuw8LGqw6rXS6mfqVDa0/9XRJjcYFN3tblSejs07V6W9b3ka41Df5FW38UoQwO+UY3SepX8fVKbaF9Z4fI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NytfdEzt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NytfdEzt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A243BC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761287393;
	bh=QBZQL5vZ9QGiR7F8Nh75XDTI+/f4HWHy0TkGlAKpojg=;
	h=To:Subject:From:Date:From;
	b=NytfdEztz/FR5+aPoO3uxtIXuWSnvkWnhHQ//pe1Jr3xM8crqELddfOjHgr+F9nBt
	 h2YAV0XHpWCq2Ab2dcOBVK6viC/DSHYJTF7bO8ZsnWmjC2kjMEi34gXAY5VzqWBZTQ
	 dcaHu8GXyemaiMn0DcobkN7XVKrpyx7tfQwerQP+q8VqXMOTidmuExl5yh2m8K4eTO
	 AdxYtfcGN5JmKR6g3U3RxOUYI2b3FA3wFM0j53cxXtQB2kLBDTf/uFun7ZNH+gm6p2
	 WNoV8LTN1oOlpA/dyj8OWdBoaBHi+qcbWpvn+KYa7lnlvzD+ojC5FWa+iiP6Qq5o5v
	 uFeprgFJJAI9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91621CCD1AB
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176128739357.9897.2470394989321377057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0b0c3b6404f9ef75e477d268e4ac432febfb132497e358215712d14ddc8b4bf
Date: Fri, 24 Oct 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761287393
