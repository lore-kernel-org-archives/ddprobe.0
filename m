Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41B501C7017
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747620594; cv=none; b=W6/5ZurWSU6VbeVXGzW2BUYuCBIqzw2CpmX9Z+++8XKG/tAmdUN5+nXTpT0zV4C+kNrqMZ89D/OXPAorxdd7PBbUTNkT0JPzTVdNQOQSqOKIdQuv/0gGMY0Vyjqao5UJvpcTN5D/Vhu8Thii3jmLMuv/X59pMAOsV9/Zm6dM8xc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747620594; c=relaxed/simple;
	bh=rT+u4pUqb3KDXnOG7sFDvEuu5fC3NAW3IqM6yI6Y48I=;
	h=To:Subject:From:Message-Id:Date; b=LVIRD5p6+HviyUAqaTdBIc+JNssJ6ZdeMFKYFs7qMlxaIpSbOapXOiuLMqoCvnRXwDwUAVLzLyts2gnPoNuGAf8wfJmFYPxlhLBhe3twcqZ8O1wZoCTI0/Pu73XDrGSl6CuHUJJoyjHKokFeUzP14g8Ywzh2h7GMs66qXNBEHx8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qo6N0npD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qo6N0npD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2106C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747620593;
	bh=rT+u4pUqb3KDXnOG7sFDvEuu5fC3NAW3IqM6yI6Y48I=;
	h=To:Subject:From:Date:From;
	b=qo6N0npDw1OtSKptbl3e9rCJsTh7PTpa4ArzvPqXkL1xZBZPXYZb/u2tJomfeUdiB
	 455Suochy+pz6E5Wfyo3pLz9gLezuhRZnctnLW6FCv1uWe5P6DMtTvrARzDWuI9KcK
	 0IG08rtGOcqnmWDszF5lWhCb3W/jt3PhDUNvO2WXEQUkItmI+/QdLM0PxZHC0Ub9xL
	 euO7HMiUPI21XRAwaKjtGJQtIULGbXrUWUe5hwz5uXD/rXqp49fcJRbdfHTjFxkckT
	 rzwqfHdFwumg71scEfiIQHmdjsJloG0cwPWs2xocVt3UiMg0Qx+LPlXEhCHwzbAbx4
	 oPIJf+jMHZX+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6D3C3ABD8
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174762059357.29036.17245685349518986253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72805bee5024eb87585f117e6a6de6e91ccbfaa1f9e1ac894a78b345b678be26
Date: Mon, 19 May 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747620593
