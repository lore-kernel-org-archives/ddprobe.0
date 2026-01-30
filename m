Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FA9C349AE7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 16:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769789634; cv=none; b=Lx6qxsysRlmaMEJrifNOiUKEp+w1tNxCBaq5G68XhPa8R6fjBcOtN1/ndN6Iz46OybJ9BJuCuicYLUYQbFMUrd6Rx3W95BvJh+nzV19Le8dCk8kzlqC3EAF84EGzAYz+qKzJ6zDyfQFLv5A23IpgxibiIz2YVHdywxUg+GPM1jE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769789634; c=relaxed/simple;
	bh=/o3vRpl66B0lB4ddZI4O3r/6nJhLOQJsgtlXIvbmtc4=;
	h=To:Subject:From:Message-Id:Date; b=NN2AuF7FbmKcCMX9rVUmynnIoP3h8A7FG8j/fgzI/wPpbMuodG+12AxeA0iNBgxhy9QavBNW0bTN/khFA8OLyEH/MOTdDkzqli0yIfOn8HxKHL+2mBOYhv5/XMVvE51p2pqMSPmgTPK1+oDatAvQtnJd64lyKHggRuLaRGuD7eQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eaTcKsYG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eaTcKsYG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2AAFC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 16:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769789633;
	bh=/o3vRpl66B0lB4ddZI4O3r/6nJhLOQJsgtlXIvbmtc4=;
	h=To:Subject:From:Date:From;
	b=eaTcKsYGK4OZl7wdSuVjHaZCuRH3aOExRmhQYFe/w8AWd9AeU29x0nGDM3Dk6JKat
	 +82+ZlgfJUZoxTKjYWvzWXUi4hUjLjV4Yr574mDVDWv7NHFNPZl22Rbc7Sjd4fI/hR
	 hkMSATbM3NtBtppCixJVSoHgtB2Nzg979sPGMlUCB597lEQYS1wm6Ni+ppjp3MNpRZ
	 k8Q+y8hJoOpBY43O0+SJkL93QxCHRd2VOZXUD4rspt+yFyO7vRtHhHLfEp8N2nxt3O
	 +VfK9VxsZv9vz5ouR5RVMm4tl5LcIjN+lPxEbq0BdWAr7xTkOtGq3UTbGD+O8THuok
	 pnQd0gRIK9BuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91112E6BF1F
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 16:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176978963358.15280.8039710876949350509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 251bef8e7aa9f9a20f0f0101627f3278cacf7809f19cb31fc19c23e3cd9be19a
Date: Fri, 30 Jan 2026 16:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769789633
