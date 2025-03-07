Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED725224882
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 16:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741363734; cv=none; b=np25wjJrSkxX+D7/G/38Q/6AMA+6nPSDANWDDrOd4OF76qm73qeXcS1oSvFpXPXAEKbihidQ4luaQEgyrdXmuI/l4MONOlvbAyGO0L2VHsQtds+621Jn+c651qA2oMPZlIeX834lse+PVFNw7py8OEaqHHn5hdgAmPZOepXrbmw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741363734; c=relaxed/simple;
	bh=EGp0bJx2t6U44dcpuuIQglwczHh1QEuTJOt925bRlJQ=;
	h=To:Subject:From:Message-Id:Date; b=ObM3ro1aQAph/OwgaBNts9JzkwG/CONzlCc/0SrKVxUrXhjEuRZi+HSy0wcKtFnmlWUfKXgZE9032L01f+0mH6FCVBXiWxiz734fb/7wbOo81QvfYNweEKRHkln73bcNhUAIx6Z2OLE8D4zl3mq1K6uEQT1NmXLTNSVoQj/bkzk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uOhUp7pW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uOhUp7pW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC22DC4CED1
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 16:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741363733;
	bh=EGp0bJx2t6U44dcpuuIQglwczHh1QEuTJOt925bRlJQ=;
	h=To:Subject:From:Date:From;
	b=uOhUp7pWo1c3UrhmXZT/DVe8yHJHoTKRrmkxALZtSUZZfMpJ0BvwKzWBL5phZ/RhE
	 nTPloJOq3+JF93CuyVJxNwq4r+CFjx7UVWLuTXbIHmwAkpWGTpH3cKU/sqpEQygX+l
	 wY/1zZ9wAnk3Tqraq5gy5/v4xDVKZY/VXO7A1uABSMr1XfUjn6GRaJ49DfBgWeDz/y
	 DvdzvcLoouCTbqWUdpip6s9QTBR/nXPDw5ObtF7vtaSqP+dyG7NnpG2GyIfivTC0Qq
	 jO7hnZLc/yjVmhsTsRlezu20ul5l86XtfLMGQLlrxFHVWShe4jz8/kaI/LQ8R7k44t
	 KWPC7TU86/5qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AA62C19F32
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 16:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174136373361.1103.15950012852113335612.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 135cdbc526dd037d87d5f73feec349e8b00c1bedcabe209c16d96e4e86630191
Date: Fri, 07 Mar 2025 16:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741363733
