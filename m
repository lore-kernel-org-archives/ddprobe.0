Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7079E38398F
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 05:54:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780898074; cv=none; b=QckvZ4VDCpxEcc/W6KP75rCkl6/fpuZkfERukpWVIaPatWM870a37+Omavapf89/cdVcfdRZsJa4QvBlqZEpTNEzU6QvzXCgKDtnwZGjYM5zutMJedlb9DmPRJzhw0577fCG7HgdrkkJjOGIo0cSDSOD3Hf9digLyPY/mNwllSs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780898074; c=relaxed/simple;
	bh=lZFd9JsJnCLilJXTk2RH7liuFrm1Q7i7Do8iZOCa6K4=;
	h=To:Subject:From:Message-Id:Date; b=VMmkzpS92vg4kh2SjO29gJn4RUeDaxuzI3pU7wn73hT1WMf5a1c5mYulNtrdTioP1NZ7eVDpFG/yQXAXh8MeTQ4SmdCzlupZHnP1BMLwbAT5hWJBWXQhV8alDLJBf+fuJObWK3tklgv9BXaipBnfOuZetOQ3xNXkbFenRXr5XdE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pJxwIqOA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pJxwIqOA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC41CC2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 05:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780898073;
	bh=lZFd9JsJnCLilJXTk2RH7liuFrm1Q7i7Do8iZOCa6K4=;
	h=To:Subject:From:Date:From;
	b=pJxwIqOA24hVLZsBAjDxYl07jkJdm3skzYK5d+dyDa9AOCBQBrwxMRPMKTi5L/6T5
	 vD9T/A+p12MCpseM2Ath81YQn7zMHPfT/OoEhHlc6Hqz2DwN4RQ/KOhbAgmp2GjeZn
	 7DNYPkQMNStmTpwmoCUyvbhRNEspu8bvmxIf5d8oGOif8OER8XjTNmWuEfBqCqQ/LB
	 huUh7dNM67O4j5MVOxF3Sg+IOCfr0QR0z09QybGwDklgezliV7MWjXup2fzU8uN7VX
	 OqaaiiY1y7X1ggGgwCrq+6mQGUxBk9Bwq7TwsYrFj0kXCJ3PFWr0NYFlvbqts7Ukzl
	 MM84ljuXRmrhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3E7DCD8C9D
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 05:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178089807372.8315.7247169776464208813.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c58ed44c95c2f93f1346a009debccfe0a40eeec63d6e0adf873e5381d76a630
Date: Mon, 08 Jun 2026 05:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780898073
