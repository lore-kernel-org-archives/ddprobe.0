Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31AF1365A1C
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 19:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771614294; cv=none; b=iqD7xUPUKHscmBARlFGqIuMaQPK/I1hii4sKy24fMiz1NYsL0mAc+DDI8Jbwtq62dR7pfYA5IWGs+mS/CXfGx+QYcM71+NaY72fsYtQKxeEfYvurxXgWxSJ9X0kmNXHV+AOB3jIfIpcMi7REhHMeZ5EeWKUQidHHOCJJLfEXjGI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771614294; c=relaxed/simple;
	bh=7WLNmezMPnBIzU+uyQ1aMl+to3ZPwMFB6ozJKsycgdI=;
	h=To:Subject:From:Message-Id:Date; b=iM7LfPgX7wKvpjTC14WsXytsQ/N9ZyFoE0GFbnW+YOFOkX1BTWkWp7+lII1S/HwdG5SV6Zb2ozCDS9Qz8DBIbpvO8vXkD1iyuj+L1dOp2iijMx4JjSfN81nnErqThPgbQdeFPEdqw69IRJg5GeosIgpyCMuIN6jbEwftivHQHcM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xz7iv+VV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xz7iv+VV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE3F8C116C6
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 19:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771614293;
	bh=7WLNmezMPnBIzU+uyQ1aMl+to3ZPwMFB6ozJKsycgdI=;
	h=To:Subject:From:Date:From;
	b=Xz7iv+VVTJSPRJDwZ1xF5MbUUiXmhNH+VWyx4FvmjXejyZPVnnb+h90orCR9arNaJ
	 oxXRRzr1s3gTPyYrQ3dMF8CHIw+KgMUhIr+K1VacTUxWxFN7CIuAQEIT8/TFsit9sL
	 ZFENa27Lqe+96d2MZ9wORms7vzPEUXnV08Rp6fWgpOc6uQ9T6Jm+DKg0cD1TNhw7nl
	 4rjWvO5OZnPw9Vd3lI1Y4aZzfvRQAvsjIC5xF6LhC9LuJRl8jFvUPTOjGSWMuRTHrO
	 FraaQWq1pG9vQi8OcblV6fy3unaFKbOnWpJ8aeU9+iPY3J5wkYzgPDB6Zpsqp6yKWQ
	 4/0h2cDJjq2sQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96E75C5AD58
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 19:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177161429360.9686.17660909742745580422.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9aeab48e0371a335721833dc286fd7a8d60c92677396b9071c2a179c9c8aade
Date: Fri, 20 Feb 2026 19:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771614293
