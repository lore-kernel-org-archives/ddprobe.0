Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3E5F3546D9
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 18:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787337034; cv=none; b=HD6iAAFmVf4d7tfYIWqC4I9J2xgQJTr1HYeQZGYRe8xO3qq3AJK86gBWE2FMU2jA6dHuKtMCeb1PD4oC8IwfG4hQSlJ5yO1etZcgOlfSk2yi2b+RGMz6jrcERWYFRExN6IhnzPy7Izx9fN31dfiQDqLBFNTmWf/WucZwc4ZVLWE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787337034; c=relaxed/simple;
	bh=tfFHvr/4okc/n/NE/bwKVD8mxw9Q0mGsxU+mdWpVTUI=;
	h=To:Subject:From:Message-Id:Date; b=FGOSHBy303MJ68XoCytX5RLW9TCk/RTQG23akFRecQVU1hqDNvXmQz1Mthul7xyR7/dW2vuKLA5oqe45+P7/wYzSlDbRoKeCQQXGdvb9BhNgstz1wcUSOoYAnxILTQW2cANpFBNUw7nBAKB3zk8O9c1u5+8xz1N5G5LhPuEYW7c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LrKnT0+s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LrKnT0+s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFAA2C19425
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 18:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787337033;
	bh=tfFHvr/4okc/n/NE/bwKVD8mxw9Q0mGsxU+mdWpVTUI=;
	h=To:Subject:From:Date:From;
	b=LrKnT0+s/Y/dnWfisYU6SSKnVXvkXrVMkdN/KuB0v+Ya2zYz4t1lhaLKNPEQogYSA
	 3/d7WK/97kXzQCuCBT8QtK2TZGNx10cGDDo0mYVmC53YnVPXa3xnssgszCAyI/b1lO
	 Mzwv2pfd5ACeynAjaoWuNBUPWLYFl/V3iKLQoU7G4HTcqMC2gkZSQi1iEK4q+VFtqL
	 tWE1hBPxVq82Fu3tgwyop/n6G0ik+Sd+7YWq6VTTGonnmu2efOnMwmtEtXhUdIXTiI
	 XD0wqx43FywEALbgEsqAOO/Udl+hhTcUA3MLqc1g5TYqftcn9mczN+J7AohmhMmBC0
	 22ReI5gvRdQ2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA227C5DF8C
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 18:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178733703372.7181.11235762634610818578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0103db10531a5d3f9eb31d99ac7ed27a575f063ed7ffc792cf6e599120a9423
Date: Fri, 21 Aug 2026 18:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787337033
