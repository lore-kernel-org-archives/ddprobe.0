Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E53119D8B7
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 13:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717595243; cv=none; b=qvbpHBYhqrYrV+q6Tr0hkWUPTdSBvyPNoZ/37g+iDr3Wrcux8iGbiJ2kmu0XtaewDvKQDux1NWbMutAdQrGgbHDJxiLFUP0KSAAzbMFp2vVwSU80URFWqWIl/74wGHORAWgtboFLftJhYL5UcPdqHFWVA84Of/sy1e5yXPmKoA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717595243; c=relaxed/simple;
	bh=yZS6J0yxvh3kyD0Zep6o8sTzSEHyYxclSSFwjEBOXSA=;
	h=To:Subject:From:Message-Id:Date; b=lKJ1A0ywdu95qaf5M5lF559r5SdUBgRxSnU+qlMGCykvNE6cTgNMTqtpDa1UPhJDm8lKQ+Lgszkb6siHvh3y6XJnKxKeth35xYidUz6Mwg7y3BIuDnGDmL3yitKm4UkhA4nXdwTzhl/5GivvXQVN2MOgGLNG9mBe3uqgEUY6VN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k+QR/qAZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k+QR/qAZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7036C32782
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 13:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717595242;
	bh=yZS6J0yxvh3kyD0Zep6o8sTzSEHyYxclSSFwjEBOXSA=;
	h=To:Subject:From:Date:From;
	b=k+QR/qAZ3QGA5uDqCa+vjf5V8QHVv6+7fk3yQ1sxidmUMx+zTs5CX5kN8vlBBCu97
	 fzS4stgTxIf6UlbUSD8NyganOFwEH7Mcs82+8996elADkThsF2o2yT79lS3R4BszFU
	 tSplNUdFThkI2EcStYNZdBArVCor27eRqwkCb3vNXx7RQC7IIsfGCpvSduBHVZ+iP8
	 59ReacbXCItkpaVL5POXmbHTs0iJM6bqPXbJUd6nl0rrBXyMpP57QD9W1f6ViMygAj
	 n5krJTCx6xaV+4Ay4TPXdTsuuXhZcKZu7PN+3lLikhgijnqYEWgqknbvheGjaWrJzl
	 RF+DgF4reqA/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD91AC25B76
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 13:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171759524282.29501.8118508287876474383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56ea3f01705841b67f55c56e93dda63574dc54be197db049864f414a70f199a4
Date: Wed, 05 Jun 2024 13:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717595242
