Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C47714F98
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750030194; cv=none; b=G9ilgeXpzHS1b8810fnRRx+fCze/RQXFJYfAPk/zJTpFCmtumpdG1sov7JrwK4YkSYVYzu2IQHsLjGEhWGsaJ/9pBnSYiEg8wtOfDnFNu/Qtc33mY1aYd5I7rSLJ6sOloAMbFUyT4AlamK4oOI1Pgx+ydsfW42xs7BfbCHxJDoI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750030194; c=relaxed/simple;
	bh=U0aAb9AMR6r8R7wY2a3V6cYl82donlHmXKZHf63V6uo=;
	h=To:Subject:From:Message-Id:Date; b=AW3N8Or+gi9axL2cfHlaiiJJF6Q386YEM8fWQZwCKU1QZGAwiLWhHf0wfWqW7XtcB0NVW6LPXqnX5g4xssz0/9Ux8ecL2r0IXNTJGYClVTaTCe6PFThKR0mMDd1gvjBaEgmUQSYycMEsg0GXSRxVOG58fNanR7HwVOwEV9tRFwg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mtfMAH5/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mtfMAH5/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC2B2C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750030193;
	bh=U0aAb9AMR6r8R7wY2a3V6cYl82donlHmXKZHf63V6uo=;
	h=To:Subject:From:Date:From;
	b=mtfMAH5/Ufc6w24AlIDsqQm+LB+zrU6r+pJSrrnDfqY1dzgeMJE/ITL1zjXehAnVw
	 kqBGy58xAJbCY5cpnD3vpWHXQT2Yx/jrSz/LeXN1MnccMyz3flf5RNbqar4OibeAgf
	 cBAIWVyR1BfbOgaPakhJnogwJ+t9AW5w9nULLf/MYoMUelMEg+aBzZnWmQA7Mp3RIP
	 /b8xzhC0NYPIWRVUi09/qbwsJ7DK8AKGgYMqFWQbVApv65RW826wLhvvanc7IRZ+m6
	 ROjU50yfwV7HCVQnkiCy3nKXHwNJgylmr65AZCqKgZbkVdZFHw9QxQlg2odHj1j5Qh
	 i2IKqXsxevLdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96AAFC7115A
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175003019358.3249.5768744318006000479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b304e12fabff75e3390632830f4df94b34459d6c3fd1c127eb7f7364d4bdfb4
Date: Sun, 15 Jun 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750030193
