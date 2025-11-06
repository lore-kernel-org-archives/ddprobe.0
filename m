Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F8CB33B6D2
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762438194; cv=none; b=d6FBEQsXFhnL0qSLIMiOJ3E4FpJ7uQKgYz+/wjRWZKLxp5NRegNxLEiT572T7X8g44usp6Hqn2LRtQwgubIbJ2/PlmvG7/axQ9OvSUHOxlZh6RR9SpTpXp2u6c0+58Po+OURwtjbVoBMQRm0+ad/gWdarXQepcciNbwFR9PAE5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762438194; c=relaxed/simple;
	bh=ggTMfmZYBOum27BPwxlkoBjd7FufVfyyqhzN9lHGT+g=;
	h=To:Subject:From:Message-Id:Date; b=Qk3/T6oBguvDHnwWl07h3mvF8GCJhXhPhlazSkgM+7qiWr/x7fVY3KZFl1tdzN/FjQiF2BGAQ2xbvcxGLUn1v8tsehA1e086WVscfWyX9NQ9v9LSSbPbPZWBx9lStwBXERZBUDnnAirq3tBIK8M8ra8QU5V4eqbiZDfE2A6wg0I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RhApfQ+6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RhApfQ+6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA754C116C6
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762438193;
	bh=ggTMfmZYBOum27BPwxlkoBjd7FufVfyyqhzN9lHGT+g=;
	h=To:Subject:From:Date:From;
	b=RhApfQ+6gXIN33fYJTdRt3mwWhpVZWaAOBNjqRbwwARS3trZ+3cu15INtyr2Zxg9W
	 982iey9pTuuTErXfFHPIe3C+Ul+fvQY3OZJcq02Uj+sJ4qpKJAAEYpqI1pr2QnFfiZ
	 0ilMsa484WS6tyWcSJmcPrfmAzyWcp+FFnDu8VpTJMB6MLjHrkLOsc08qC7byMk9zm
	 hdPbZAjUNNQPG4rckOd83JrSqqv19pMXBUmT46/gCK+ToWr15S9bOj/5TZMTr7h9Y5
	 L5/bXPVfL3B1GFY7wAxpoi0W6YxB9qdMCXYhnshl7CsGh5hNSKjycmVwjP8ksJohTV
	 feGJcY2FEmQvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A661CCFA13
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176243819362.8128.11220591067774596812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b336bf96c4cbde820cecfa78554d9371f1b9e285262f25904560b87ca895bc9c
Date: Thu, 06 Nov 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762438193
