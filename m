Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A41661A8AFA
	for <ddprobe@lists.linux.dev>; Fri, 29 Mar 2024 12:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711716496; cv=none; b=dMmSmmZ1ayK0mvqV6qytPUwZ6lDfGvuf9aQjv/fAI8S0jrGRuP9pBf7gLSBQEPNSFpEVRpqfJXPeDkDeMqnv0385lhXGNcCMw8J2IjM3P1ywW4iYafbHGTVMoz7n4Jh0HEkVfRdUJYulEkYeo30gSncue9Svm+60MzEr8OsOp9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711716496; c=relaxed/simple;
	bh=aJ8gCo19wqBoSyJAPVf9pIPo8fWBLriREpr4fSBnTvI=;
	h=To:Subject:From:Message-Id:Date; b=UGRByD5iIJTcsb5DOtSsJVmTYNNkbqzfJJhw+CT4Z85yClWfGk2hjPr2gdlgIhMj/ugfbPzTwbEBNw8M28+XANA7yXjTnA/0PoYx6tw0f8DH9S6wMIaYB9o7g8M1k9iPFbuOqH7REB0sOSXhD/Gq4PRjUaQd143Yhq+Wb7Oz5uI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gfJ2NfJS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gfJ2NfJS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A89DC433C7
	for <ddprobe@lists.linux.dev>; Fri, 29 Mar 2024 12:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711716496;
	bh=aJ8gCo19wqBoSyJAPVf9pIPo8fWBLriREpr4fSBnTvI=;
	h=To:Subject:From:Date:From;
	b=gfJ2NfJS3kT4bivGF5NPllWiAVys6WTsULvUpcuVRpjYo+I8DHTw9ucxBlE6CvHNs
	 mB7OntwfnYMqeAD0z5swdd43HUhYVBR4mtERHw02KVwkxTwcWXm03g73a6+uhIbbvs
	 8Aquk6Bx1s83eedb5ggg6UyStuFjdNWvC1mG3u1xG7zBcTyu0uHKxWJ4uYi1kcszHu
	 h0eYGXBvxS03LNwYVVkTDr4yh3K4TipRMp8D/SGqJQRpNhkpthubogjacZ4XoqeGvp
	 XsxZiEdeNxx1+AunT+Cf7cigsledxPgkpmA6feZkLanu/FQuw/gboMdoutWqg6aPqP
	 tkzylC2RkGV6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 76472CD11DD
	for <ddprobe@lists.linux.dev>; Fri, 29 Mar 2024 12:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171171649647.8360.4109640097161205344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de14495e09279b5000461e28d97b30b7b2ad3a2972f030d1d1f656130c7f9d9c
Date: Fri, 29 Mar 2024 12:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711716496
