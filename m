Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D82EF15B971
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 18:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771092293; cv=none; b=gugVbeD2ho/A9le/XhbdgdkB6X5WQiOAAggBgwwGSDWbIPPWoZO5/dhxtYwniJh53pu15ROLHZelhjRGrX+663YN9B5EAA2zXFrOqfECYYR2dUdELbpIuWwM3YclxIW8TqMmTcPgsylNmZx4RI27fKip06XBWjIDEhxmqYpG488=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771092293; c=relaxed/simple;
	bh=TJWlk1S4qL9rQxXLqtW4cj51A2iZzsdwdlNp6ufSkw4=;
	h=To:Subject:From:Message-Id:Date; b=q4y2EOfyB6uiRnacXHXpOM/0z/3gKfPWYuTZyA6iItnYGTOWwYxoMPWzQU3eL2ft+tWNH5decOhuEKGF1NRAtXo72Z9BRj/CC9EdLANH+CKnmehdia2NjMK0IIplt/H37GK7sSIbHF2/uG2ttg5mL/k+Pn3murxicCWWdVr8RKo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=By8PiQwI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="By8PiQwI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B13E9C16AAE
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 18:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771092293;
	bh=TJWlk1S4qL9rQxXLqtW4cj51A2iZzsdwdlNp6ufSkw4=;
	h=To:Subject:From:Date:From;
	b=By8PiQwIPjHGky9VfOQPbgtLsKCA123peJfDnz2DI8frnq/bfmi/TX3chKyo6TwFl
	 aME3fzmCvrm6bvfJpGH6jBGFI0hlfsiN2g98m97bY80tPec/myQJhGyinZxmDCWyNN
	 rcHqjmra4yTWDNHbw14VBQnElXBdcgVrhp4wysTMhIG8AvYSCKfqmmhPtizwJkQUCa
	 fhzWqbe9BUfEYrJQDn1pVuxzhYODn/37oUjKv/ctpRVsS4KpO9IVXas0MjU+spoUGL
	 DB0iKcpA1lSB9BjY31En0FD3qTfqWcDLzJjbSqdm8yBUSmZKowbS9sXYdAe+mi9XZl
	 vdH2Y4CoF7KQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98AD3EF584E
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 18:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177109229360.28256.5569420216491724724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f93b117b8afe9a6b81cfcf1d287d6e01420ff65bcc5d7af30dc5096b9fe04ec
Date: Sat, 14 Feb 2026 18:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771092293
