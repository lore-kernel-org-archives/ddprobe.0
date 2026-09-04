Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40FC34DF4D7
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 18:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788546034; cv=none; b=fVxazyISb6SANlcWfdr5xpE3aHBi7wLT68XUwUsWGOXWPoBHbt9qW88bKE6dpd/btRXJvPfqRCd9XQbm+w5aRV6W/+C6plH8j3++aQ/KHMUfr/8vfs18To9OqqgAT/c8wNJenSxk4Z6nzR41hu+eQife1j9zHLrnkQfVBXV1Ew0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788546034; c=relaxed/simple;
	bh=vHdcz88/7A8KdbHJlvbgrOCYWAdmg6k6p/qNuK8v9oY=;
	h=To:Subject:From:Message-Id:Date; b=nI8jPQCvP5HLwcQoUnCbhSaU2BwWuJVdeQ17xBnXYw37QWsEsfRNkujC2YdGeeQY58Vk4lFOyJqpqTkWO4YejJ5LtOJoVEWr8vtfkOxepAaj4SxGq61dH8WQMP6ACYbtrcT+FqLfvbA7pvvCfsZNRLjy7AQ5xqsGb5iYdEbzYL4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tyn70RHs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tyn70RHs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFFF9C2BCFB
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 18:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788546033;
	bh=vHdcz88/7A8KdbHJlvbgrOCYWAdmg6k6p/qNuK8v9oY=;
	h=To:Subject:From:Date:From;
	b=Tyn70RHsF4zroYNNRJwLmPlm9+OsdJ0947DF01yVC7lJzJzCT0d4ypxhsUw+ES2PX
	 tqGuqzLcGxgL+scowG588HQV9N5/7LmYZBVEbG0lTUY83vNH64q0HbSVQboaLy4BDg
	 Jha2EKd3yFZQtludtBei/5X1jLXkUKPbhqAKwkAHhQ1SVqF02sGcGqcll1nNce/trx
	 yo6NCkMZTs4S+dUvlcuRyMuBGgfpfeLU0yEL39VeaykR5AIFH43tAV665MESbOsZcW
	 tWsA/XOfcxyqGaIwQuHwZeth7oOz9y40pI6BrwNy8yWXtNiF9P1czpb/im4K+tF4vB
	 An2cI53av0Fig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACC25C79F82
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 18:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178854603369.13881.1019012793147091775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c317762d390a5ff2bc344fb30a188a03a87ba8698be733f01bd97ac6703207d
Date: Fri, 04 Sep 2026 18:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788546033
