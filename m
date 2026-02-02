Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2457418B0F
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 05:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770008634; cv=none; b=kEz9dGJDC5EzRo47m9ZvkUKPZA8+TnqBw5l/6CzCPFiFs3g1FKwUGHcGOtLm2lgutijNX7kuhnh+yDFeZt7oaeU/La559liR6RhKoXLUHn0rEs4QHkOboKjvlIPihMjkLZY8xagSfMzsStZ2BBtoMrNGoJZfpxyCxVnqO4L8j4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770008634; c=relaxed/simple;
	bh=uq/ukmMShrg0YDaCNXo0PLjeVRY1lFpkFNDn8CtCblw=;
	h=To:Subject:From:Message-Id:Date; b=F/TI5rWvhYzrcis6CAmaK5hVWst1jnNlMiQlgFh51Irb9Msu4odEKAM8xtzbIv+mgAgVRSTst3Yri4czMrkLkRHyVmfPJN/r2InuDdQnB/mxXfiJ39mhggQVx8VYyB0eHkBE7hhFdNODPbTr4OgmWoIUnxuSiuWCxSokwAQ2ocQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W9jtzv5a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W9jtzv5a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF946C19421
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 05:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770008633;
	bh=uq/ukmMShrg0YDaCNXo0PLjeVRY1lFpkFNDn8CtCblw=;
	h=To:Subject:From:Date:From;
	b=W9jtzv5a+1Q5XmVvGPb7ZrljD7SlWyLVkKG3grhiOrhw4IDlvb8J68aYQSMkWzNcd
	 HtfBDAptPVRpZeJj2lbZOeJCOoen9KBXSCAJRGkYxMMtnMw4TmEE9Xa28uiDomVmMT
	 GEP8qwd5C4sxiF6TCXQp/IuKefUKOuGgu0bmdLDH5u0TcvfZl1c5OFo3BcHjLpW5RO
	 j9aBWMTDY2ktyOrQ6oABr+vY0JQJ5PiA8rpsl4r8/FeQCJ2evb5bGb9l4/1iutzrRs
	 eJLFDqIW78yaZNuV1sXiX404MrNhqjIHrFjxcwkD8e0LkmCvZmoEUjFZQ7EL4ziKh0
	 4xCJmNWJD9gLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A67F4D172CC
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 05:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177000863366.24418.12624118727781383626.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f67c7b33af538db7e8176e53b174f6d7928ed0c38b3324eeb9fdb65a66a3d5f
Date: Mon, 02 Feb 2026 05:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770008633
