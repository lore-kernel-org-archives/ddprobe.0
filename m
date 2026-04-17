Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D2EC2C9D
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 18:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776450454; cv=none; b=F+vgKwPqBIHqtqXURsHrE0wS+Qfsa94pUU485ynp8y1fzNBT/u3mMaa3qOe2iyiN48cMMhQHSTlF8sZGk37kqdR+HIvA3tNyEMgFwS7fQb0DaQwXn9sp6gzEX+pe4+KBxV2oqy0MzSuvk9axQA2HjB9yvTlIzAfQT/gN7xX8MU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776450454; c=relaxed/simple;
	bh=PqSRpTSCrkEm1DqoCFBFqfn2NeVghqaKYHGsa8HlTgA=;
	h=To:Subject:From:Message-Id:Date; b=e8nCOP6+ImiUee5Z84lCMqkf2Nz5a3wJMzQ3lvcLTLJkyeO6I7eHCKWdH+tEu0m6mZKj+74lTKOiIkPrv6fNZiBUfUTJUy3/mhl0112dXYFxfYKx9CVjTIgFD0lqtU28mNns7tMqlxu5g9O8VrSyPLR0Kg9yF9oSzGXc5J8rx0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mkfnqN3Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mkfnqN3Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF28CC19425
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 18:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776450453;
	bh=PqSRpTSCrkEm1DqoCFBFqfn2NeVghqaKYHGsa8HlTgA=;
	h=To:Subject:From:Date:From;
	b=mkfnqN3YYyvbM5ltV1JXSD7UNJYZRKnU+WQtvtFQITAAFpINe2rvZO++3VgKwEaSW
	 3iMsZ8ITZR1e9nUBQYr5G1+d0jFNVeWca9w9/lPSovsYX4kMtCpVxIAb2CAj9yJ716
	 RSZVYhPVrata40aO7yw0imXxvbhbJ8KfSU/0jcbqNlLgKxoJ/rUXyz4uYnqqneN+qJ
	 rz+LasWBrz/QjEvVZuHDV1PU6yyE6MWeokyeGTZWJmxmsTQAjwxWUqBvVFS/GH9+9n
	 EQi1gNHicUGq4qYUbIIAOKizZGrG5TObh2hm+z0OkGCVw36b0USbYk31F8JyGbPKq6
	 abxvK9hZA6jxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFB88F436BF
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 18:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177645045368.7736.13181979514468505178.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2563e23fd245309354c5e27c08f2bbe9e020b031d004c1bb2bff85db600cab0e
Date: Fri, 17 Apr 2026 18:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776450453
