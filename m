Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49DB729B776
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 11:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785238234; cv=none; b=KvhMQelJD6pPCs9pIqyr2aRB9FFaLTYb1NQgs/pknP1ipG6lHG7KfZlNWdh1e8Zg7Q5vZ7Txf2gAGBaJXPBgbaHkgKJ/olc0lUk20Tt83WhFY6fsuFrL/DiNf2LUXZzTjSJX4y08gZL8G9wVmj3f9m0GI3P8DFhgM5vMNOADwiY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785238234; c=relaxed/simple;
	bh=Y8k2JwlXcB9XjhKWaKbAe7NUPs8kNffTVYkTCNNK5Ok=;
	h=To:Subject:From:Message-Id:Date; b=bOqnnQ66ke7/7Z8w40ZAAg47fh51jsSEh4JVwwUE8iROaUShCPnq7eyyHF09xNjkBhjJUpq/iXr+X3YFev7qcskXNBiZ/DiPCqP64bFDZOpSGsjQxO4UEOFYXLLjBR11yW+V6qmFHol9byJ3ejH+sb3e2rOQWhoSlVlv35V8IJk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L84YwpKG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L84YwpKG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFEECC2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 11:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785238233;
	bh=Y8k2JwlXcB9XjhKWaKbAe7NUPs8kNffTVYkTCNNK5Ok=;
	h=To:Subject:From:Date:From;
	b=L84YwpKGiBGOW6cjQjoZvS38YnmRNFkyWM83z3zsZ1iNlULKuw8pNlKmJtGG2cgkR
	 D4mfPIfkzzo3HRkGX+qoKXmhu9EL8C0cojU9ZiofSB/1gYeu0iEhV9AKCZtLsnz8rg
	 myUd6i3rFmfsju6A7K/UapjbSDBOuZW5J8CXcjiX2YKFkMEcRPl0POb42HZqYN9JMu
	 9cFfjkkU9zqcn/a3viXjBpKkJeoABofuIx8FgO9OaUDue+5gBZdz3vxoMG+DSS6Tcq
	 PpllzwxrG60nWohQeNVyO7i2j1kG4hhGGxpmC/xlymhej6Ofjx6e0meYpizeloQUqP
	 zitRIiDupX7+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB34BC53219
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 11:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178523823369.30464.3837099530830410203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a81ac3f424f2e9ad75273b874e9bba9a3e6f0708dc8bb52df58257a3355c8d9
Date: Tue, 28 Jul 2026 11:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785238233
