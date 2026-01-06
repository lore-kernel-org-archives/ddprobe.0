Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48B242DA775
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 23:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767743634; cv=none; b=nkXWJUQHUjlVhUzu2aqviVU2GvIlTtlW2i/MFH0mbCaa14HN5GFMYrNvVMsJ4EjKufTAI5TYyUvMvCmjqb06L9WUjjDPhNMcePmz+VXotUa7GhrSwLt5zeB6RJbdbSbH9g7RH9d3KC2oZlkcuVw6DwsngMymPl7G0uSq1nbFmkE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767743634; c=relaxed/simple;
	bh=GcF5QjZnrPf2H9OHEATF3YLBlWmdMW9jDld39+nEF8M=;
	h=To:Subject:From:Message-Id:Date; b=Dq4/iy/qy3RGanRp+npFQfcirylabkHQjCemqAfJxlzT5XLokz7iX+xl8RfXrpOq6xGmXrYJ10CV8At8UbklVN7NgKQ0xl3ih5P1rcDNlbqlOz71aKStbncqYhb6XLdhu3DX2MYuDnKN+gA3brTVzAOcxZL6TVUIDSJX/f0f6MI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jIlBsrnx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jIlBsrnx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A35C2C116C6
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 23:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767743633;
	bh=GcF5QjZnrPf2H9OHEATF3YLBlWmdMW9jDld39+nEF8M=;
	h=To:Subject:From:Date:From;
	b=jIlBsrnxDx+9/RYHmHIB7aWzJsKgUzZFb7FBZkNQ2xLV0e7r0gQKSMIn6VCtlrB7o
	 RJ2SmRk7x+3Kf+UFYnYWyzHR022xKUofsKK33koSyFroUfow7hpKBXNEBXLFwnDGmK
	 JH+4zOzl0xKbE59DmbzwnZc+nmCeiNN+tZcQgO/hPDG+ZxpeVBWrNUygg5ioNAZXNz
	 qwoflDqJ3FurZ9Fy9bs+Xg6E9Ca74RJGMvHd+0mwW1Fzr5/mki2lllDfhxWX0TwP9A
	 eCDUWCwW5WsvvUZ77w2HdpCedxkw0ZFpBm5f9jr0Ib3pXy2I1Ntto5JV8VLnxDPWWC
	 yW6MRg5eT6i/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9571BCEFCE3
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 23:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176774363357.29244.8415391602851174627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f47ff1a007520d035de8e4d3bedd02c2a87e75476c591b5ef95728acce700832
Date: Tue, 06 Jan 2026 23:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767743633
