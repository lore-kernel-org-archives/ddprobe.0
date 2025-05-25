Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A0E84CE08
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748200194; cv=none; b=PIhJTu4B2V+VBJ9510trPQV/crdUZISNsOYW19EilZsTkpJDtq9ZCpZ1h4+Trc1JFKWhKygJZnl2WIilGkez3waXJxRBwqVTn/pthMjIYoUWwnq6dvSCbWUbxSrJFw3tN/9iLj6KAaOhA9cMIVLQ1LVyxlYG4+SN+5FislP7nwk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748200194; c=relaxed/simple;
	bh=EG/5cwJoR62bUE/Xu+xH/TT3aOe45QMc67ClYnkEaqE=;
	h=To:Subject:From:Message-Id:Date; b=QviFN/2yNIT86JaXmxc5WhRIb2KInmXgjspTJvh7oCbDq/CxMlvI/rITT6mNsTJAzLNexqRzufcp0/ZaKzzImlilWA3Khq6JqewxknWxF609oi0lozYas21dNSbxeL8ffsgwpp+UzOfR78ydIE9DzLI4JjHPt0waWpVTHKLUm8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tk/2yVqy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tk/2yVqy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3298C4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748200193;
	bh=EG/5cwJoR62bUE/Xu+xH/TT3aOe45QMc67ClYnkEaqE=;
	h=To:Subject:From:Date:From;
	b=Tk/2yVqyTXiMX3W+ZOo9FXEDc66HfGF+Oc0S0Lrl1+ZumjvdXXUFd5p1qnRRP3hnO
	 n3DfeKgT1DNBJrDf0hQElC9/0fxcEYHzCPYZbnwSt01qXfDzIq6G57YXg+tsQfUUkT
	 y6Tk417pYtHLtGxvk19kvgXJ61MC2kMyJzT4FpThZ5WvreZDQ61ZuvpQ5xDTt2JERK
	 3N1pzkGPzrBprplY8ZjBca3vQanIhv1xMcgg0zd8Z+CSxJ6OhJw6gXeomLgv6asIcK
	 Fdq27XyAnONFhkb4ZPre1/yarULWLZTWeKD9xw6JyytR1gTJ8XDMI09zqkFWXcNT9r
	 a8Xpj1Oq7XjRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF8EC54ED0
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174820019357.30594.10437121710942171102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af213d5bcddffdb1f303560a90d7b40c66ba6271e264df7c13c40af29e7499e9
Date: Sun, 25 May 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748200193
