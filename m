Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FDD813BAC3
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 10:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728038154; cv=none; b=bnXUJ7sNk+Vsi7E0l/PzWC6yeS3vEIeFRNf5XXcEGz/PblcInQPKRVgWUtKtyZ9/mdatWF0mTW8LhJoKBzAevK5nhVVhkFinjygIseL9r+42eUvw0xZ4kouE34WEW64YH9ytfmQmAZcRKxihDBAiiVDtDcqkPwvxDj1kqul4p1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728038154; c=relaxed/simple;
	bh=W9IKbRfKJYwjWDWLCkDEqQheCN7vT5ZBNCNTdM6mMCA=;
	h=To:Subject:From:Message-Id:Date; b=FED4vKwHs20CSdmxvKFXv3syweO1Evz7Cj12CIC/FM7HXiVNX9kWnBQOliQ1ERDf0GGG/N0lB38o0QpPzOGsUQpRBy4CU6rAuK87L/KxmgS6PFLT5hNOFYvpB8N4oMpdUpeHbeYoFH5LZlZ7g3Z40G6+pgQbvNjoNLiSEvDBdF8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BQBZy4qy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BQBZy4qy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC4A6C4CEC6
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 10:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728038153;
	bh=W9IKbRfKJYwjWDWLCkDEqQheCN7vT5ZBNCNTdM6mMCA=;
	h=To:Subject:From:Date:From;
	b=BQBZy4qyYBRW2aUDYbJVqxHzsdOOkZ2c3BkOsxPMYLIuiMzaH1ygYs4pLWbFKQDvM
	 8LQYreOgUfqnUkk7Qrn7i7ooIl7RsQyLdqHj4Lz8TdMJp6r02pKkm+hZt2/P5g4iJc
	 dAPJmMdHJRNvqzbODJU2UFB4QFJHUYYiT7rqoNf/tfuMNOq/bu0Zs+tlGN7NyVIYC4
	 W0DzIxuefNDyJlvMo8Ax+Ho0nKHCs+trFJI+xKhnGjxEpnuuopJ3NfmT4T/SwhrGwD
	 v8RB3p3/3sgIa5Z7gBUV+YqBz+0h0yKLQSs8nMwooCyC6ci99kpepLmlNl1EkU5B9g
	 /YURMhKbwyXQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 966D8CFA763
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 10:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172803815360.32028.115159302109068164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75efdb1050ab686ae53b5516c206d55878e66980de1ffd1f5213c583ec5f5b89
Date: Fri, 04 Oct 2024 10:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728038153
