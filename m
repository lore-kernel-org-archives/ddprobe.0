Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1975010E9
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 03:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734147954; cv=none; b=Si3xkldmKExbJQfqaApYsg9p9aATAqqlDARjM2LTRECnMPaktnzkzVsg9PXWYqvBEO/fibMnkphFnYAkLo3Nea7x3vcvkKJXl/VK/ncRPS/26Yvqt+8YSTzvH6tT3SAYAdlEfBvF4DuPv3RaHBFZIQ6PQ8XHhx4nLerp7FZPq40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734147954; c=relaxed/simple;
	bh=wqrkNPZOB5rZ24ZY/YZ6iWplen2VI1obv3T6RblDWmw=;
	h=To:Subject:From:Message-Id:Date; b=XnY9+pH7HQ+hQ6Ci/q3TZvlzLqFK9sXCW53Y/eN7vX1r+Kr2mSYECiUSnmOUUlG4Y7onCWihvB4a85PTHZ8MA/xlAEamQ6lTZjbj82VRTMlrK56N50SNj9/k4mAkTHh1FYdvYcPzy61kf5WP8f9+PrUsc2wWj/sGd4UL9yR68Zs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ajbBD4QK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ajbBD4QK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9DD4C4CED1
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 03:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734147953;
	bh=wqrkNPZOB5rZ24ZY/YZ6iWplen2VI1obv3T6RblDWmw=;
	h=To:Subject:From:Date:From;
	b=ajbBD4QKNsdfoEH+h2VeqHEF9ivWxvNC8+Oj/K8+WqDFg7c7JL5pJd7y7rFcZ117m
	 19QEjQpi+ltwWCd7BHZkkr0QmEyjt0SgI5pZMnE64NhhAFLsAU1CNOlGKr8Glk4+nR
	 JzV1NAd+ODqYHGh9t2JCrrGY6YFGgdZRnWIMT1mNykFY+bkE2gbziN2pKRgnBK60Cw
	 GgyazQe4RBFw+E6qJGV093lXibBbEGnT+LkMuPFYrrfLy3erw3uBJw5nNxCQYm4gA5
	 /1x9KMW8OD/ay7FgFBQoptJ6peVO2r7CN+iyMaa2gegn4wXX7mDyEuIgvyO57/OxTc
	 cJAitKNClNfOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92855E77180
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 03:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173414795359.2899.3659362296697217123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2b1c4bf5c2ea7f2ab528bab38bd38414b2daec0ec21de8fd109f350d3d623fd
Date: Sat, 14 Dec 2024 03:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734147953
