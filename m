Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5047235CB7B
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 08:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788943834; cv=none; b=mSUmAlhA1onn2QUn5A4LysUUxzLfcin3gn67QBmXd2s9xK+eIbWZWI/puACWqvcTkflud6fl8u5kHr/yYQCICsOOERtlt7f0hm72TPXI1tzJ/o3mQKkTsu3Su0TvSmb2kkK3mQpNg6MK7oh+CyQhUjyLwmFBAC+G1ZZ+n+RDsuw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788943834; c=relaxed/simple;
	bh=ruUUqspFwbb5tp/ARYnubm/01QxCAAYEJ9MwkCLYBi0=;
	h=To:Subject:From:Message-Id:Date; b=s2WuohR8QpltVZz7DEJQpBARY/5cUGw8+4uggvI7p9RjZErooqoxuM3gb5C6fHt6dOTwiL0Qz+V07C8x4Ct2Aeqwzu08HgSyxY6iIC4CCy5Y8n2sIR1gJuUfvdd8ziBaHW1SpBgMi9zxjPNklTtEh7fquNVDbUhvqf71JclSEnw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oR0EK0k2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oR0EK0k2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0BE8C2BCF4
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 08:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788943833;
	bh=ruUUqspFwbb5tp/ARYnubm/01QxCAAYEJ9MwkCLYBi0=;
	h=To:Subject:From:Date:From;
	b=oR0EK0k28hru4ou/mKHl7ZlagJLg5wcBtTaC76Gvskl9AJ/WL5/0VELcNGWBrBFIH
	 Gr8NhTA7eiw7gFQeQYAyz0zQ5rVXTu50Fc0y/lUP4+8n+WWBvEcCMePv7AeYkLGJL0
	 i/awskKOgvkP2kwVdqzga67BvMOJmL3+qSeFD1pWEiAJW8PwnKxq5EGzozlq6gL8y7
	 3uAwKLnXAXod6WJYNgXwe2atEgT7okyTk5vdJutYMuLeyB2RrXjWIsBzGCWx7VtrNl
	 JL3Hzu4cp39pCYgKIWJKF15ngYId2vmlFn4OaLiuswhzBIEImGJ6lNZYX9kR+AmtKg
	 FepZdF2Sm68sA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEC54C79F8C
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 08:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178894383368.24980.3320170380507963315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f305965ae54b25a56d6e40a59c72f8a6728dc81688b1263a297fb09fa473e671
Date: Wed, 09 Sep 2026 08:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788943833
