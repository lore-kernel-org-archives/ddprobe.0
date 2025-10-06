Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12044283FD4
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759761595; cv=none; b=ZCjTC10prGLp/rpQAB4zs4zh9CArf/kgeQGIA1x+WWKS6Yxa0BiLSu6mAhmz89BKIjtuqS8z06jaI59NyTcPxe5AFH7rKbG0fjjKupT2H0ksPtEPG6iHbAGf1VqsqQ7GfOvdDd90WAHXoboOROT8mX4A1S5EKZlpw41q6aUslBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759761595; c=relaxed/simple;
	bh=h3W7eqrIHN5RoAr2zIORTggRxyHjjFK9M4fGUdiPbiM=;
	h=To:Subject:From:Message-Id:Date; b=g2VXEfd4Q+dEl3l47D4+ZkOPdIJjivdPoyn6bAc5RDB/Tv7q8JMk1nu21L/d0+oMQqP6lyVTZ3j4nS+DGYiwOV2/o+sI8DNsDF/yGbHxaMUdNfrQiCq0ywLn0BYtPNgjQvdNUmgNSKJdHsMbRpNvPW+jQDQVuJemXkWsRpOD1Pc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ICJSEwcZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ICJSEwcZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F6EEC4CEF9
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759761593;
	bh=h3W7eqrIHN5RoAr2zIORTggRxyHjjFK9M4fGUdiPbiM=;
	h=To:Subject:From:Date:From;
	b=ICJSEwcZNHKVHWzwNoSo41wdKqhGRnsv4pcpOwza9YJWrb9J5UUcT2o3oZxuGo4OL
	 ZLAPrbvs6gVZqSvHTZVNz6vfAbZ06OTArW+3JUXMeEHHjemmpg4CkZM1QrSoKb0OWI
	 +t5U9ROZFAqXo1EJ0Aw7qTP190QxQ4nMVFYQAfqf3FMlhOv60Ag9yGQWPb4P2LIpON
	 t+JPSN8+6LstrrbtKMtYiml5ZL/ass23XIEP+axs5exqa7K7be6OLS6nAxoOITwt52
	 7nPoPlgR+IJ6XLLbanpkpyUo3a57qm8B3rTUwHLMWoyZaPTixAEozgGg9mSEWnWeyz
	 Q7Q+wFB5axuOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90473CCA471
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175976159358.1862.1371569256128630125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9e23353de17da1438896805271e2cd23b8eb6cba6f133a188a2f7aaec70e3cc
Date: Mon, 06 Oct 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759761593
