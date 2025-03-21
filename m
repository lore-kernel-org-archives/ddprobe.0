Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 510B3262A6
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742566794; cv=none; b=Fo9ulg8Ptx+HyZR/ApTKAfE/C9IEw7ld4tjUIPzXXZ6Bp0NIFErHQb+wHkSCkoNiV3eLfE4M3FPb6ZcmTW7DqLdvhuGKYZy7WfXa7qWP2Hp5Xm9KdV6ZcOsDlX7/w82eqVGOBL5fIBVEsgR13P3ah2gRT1f8MMteCJ1qS+ITGh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742566794; c=relaxed/simple;
	bh=kYZXKQs7qnUcfPA5nn6/iOYxt4zq6Zd0k4EMh2KEWRg=;
	h=To:Subject:From:Message-Id:Date; b=sleC91XQ4RCRy3JgHPMiDnQZhKodJUNIaGvV7VVcfEQj9sckI/KW5ayeht+GzG6i3ewo+YjAQKrvyi7MIuSuL8qpl3OpvUkC+jj1S2BsZ1vmWSX0AaanjEl1QgFG98QO5gQcXfrObbOGvf+0zN0yDRvwd8fw4veD1GWt0QxiJiw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j3wNQFy6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j3wNQFy6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6816C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742566793;
	bh=kYZXKQs7qnUcfPA5nn6/iOYxt4zq6Zd0k4EMh2KEWRg=;
	h=To:Subject:From:Date:From;
	b=j3wNQFy6oQP4seRlmBVKzuAGE81M+yQ7Ss3+qMzQnw5wLRl9xaZIIjoWM5KDfrylf
	 FhXXpLYt4L8z6tc+EUujoE7/m+2N26i0IlZjtz7mIzv5ClTxAH197U9/3Iq83c1tb8
	 z3dkwxQVA8+yClB+R1zMTxz5R4eFyRQaXoTdW7UecI0OoxIdFtakyvH2+QbbnOVK3M
	 vCmYsEM7EahhN2aS57053xEA21gREOjRnHchkqGTa3t8umyDo5LmKHFdAZSOZe2RQ6
	 U98J9yFdvDJH670QxeG1TWgXkaoQFedhpNBGBkC+caTr/n9DQft/clcbg0YHw7nJBq
	 Mx+MfGCYPNK8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CB38C36001
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174256679362.24704.5423866745809259350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c65e2e44d83f376bd7fc5f73a8f0f47874d8428279c3faab6b107ece1005697f
Date: Fri, 21 Mar 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742566793
