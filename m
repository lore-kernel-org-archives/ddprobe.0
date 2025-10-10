Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E3971FA178
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760099394; cv=none; b=I3zRW+JobMb7TRf7M+U7Mz2QufwcJEURmQetWOy4fiVvCh0j6g9g0kKdfHrud9ePgnPm8Ggt+/eYMxZqNHB5jy2LSAq86KsZqkHMUvzKYUl/Fn/t3dk8n1DGS1qZQ9K0VJfC8fIVeFBHbTkzIsuRuj9UTBBPPH6Wk5mq6+inmpI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760099394; c=relaxed/simple;
	bh=pxZetY9Wz7eY75N994UVQE0VulVTi5b5eSSz/m3kDDw=;
	h=To:Subject:From:Message-Id:Date; b=b8BwJY0uur5o0Qhsw9eqZ5neKqJe4ws753/Zk0zNe9QHjdRGmZthITi7s0l0T4ir7wFFPVHXA5jGU2Ce3lUrqTmVZkskW+MX8tVV13kBjkWQ9RpdPUZigdsGvRSEm3mc3t23YGg15wcxw2016Z0lFwedPze9+IlhOcMz3RkwFNg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y1lYr5zK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y1lYr5zK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8A80C4CEF8
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760099393;
	bh=pxZetY9Wz7eY75N994UVQE0VulVTi5b5eSSz/m3kDDw=;
	h=To:Subject:From:Date:From;
	b=Y1lYr5zKI2lP7HGy+YGH1q9fSr/rovSff6z3T6yyOx/C6VvhM4CVbmXZMuL6NfWYv
	 I+5eXzDMT1WTyoinQjyUG1DAg4p0Q2tyaVmBypwZXDn0ERjoEy703MOrsiYpDSkkgm
	 WjQQS1267XklTTqusXq1c2pVi4a3XbCUzq0MI/eqQNWfO7LXmwx0hU0x8uoYk30IpS
	 tWMBfmGA4Me8xxisMPqEVXy7Su6fH2l2+32b2aPiIpKCrbBa0QNA//pjrwgINt2qkF
	 Ec2RbzKyEHXXejNc8YwpXf20Lg8ia9H3VYKFSSnDwrnTel983tCmWIByXCN+92tvY4
	 /iKRjWZLLX+LA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98399CCA476
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176009939361.26696.8308918930943700517.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2053b9f6400a7867baa234da49b4841f7c16a6ecc618d093c31a1f9463365fb
Date: Fri, 10 Oct 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760099393
