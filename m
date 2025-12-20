Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27CCE28A72B
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 06:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766213634; cv=none; b=Aoum2cq/DJuOnKibRK/AmKDcK5jvsBo9LT8B20mpNJIVA0hFFKHjfWFuxEiADVQgR39yjW/WfMHyXvUvAa7q/7AOkfSCg8+HWnBKBeg++RNjZ55hpUytSO+f6rVWE/OblgJs3WZRDJHcFdQoPq+IQu78eJXWOfklulR4UWaaRtM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766213634; c=relaxed/simple;
	bh=0zeXKDuxHDasork04QCRyZxyxIkX9cCEuZ2nI5ys8qs=;
	h=To:Subject:From:Message-Id:Date; b=Ev1BA6P2uuNjzNenb/+u2n1iw/FqKMSPV1nf+Mm3r8wgpZavhMkGaBz1eOxcax5rb2yEtyNz2EacsfFk0sCJiX41SYtD1ZWfnt4zgxO/tgpFcSt8tR1RJkN51E3aw+Y/NqotaLu0UVZvWZLSO73+nUTyldF3zdm3xI/rgsGgtMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u5jci674; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u5jci674"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D1CC116D0
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 06:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766213633;
	bh=0zeXKDuxHDasork04QCRyZxyxIkX9cCEuZ2nI5ys8qs=;
	h=To:Subject:From:Date:From;
	b=u5jci674Pt3kdr1cHr7lI7oD7nDqWnLQ6kTyIS/uK7CWa6hrPNYeTtm6PA6xC56Nf
	 6ITMAY0dDqvl3c/wCI1xPBQtxKHVGnAPixyJ/tS6xowpcTWUnTkvACkwFlqGc/KZdM
	 UDTz1MF/ewTYFaGG7pcnj7BlP+54BPp8QXSoY7BE5kE6QqICr9UpVcM3U+8ZP5PlNx
	 MOG5gl9etkmg87rFgWS/K0AA9fysma1/7WKNbptL+Q4FdWbppUQJdGfsQse9HTf+Ho
	 jkpC1MPRG7C8J9eOqkwagCs1dKfbYEzwkUPRjjIpjyRpw3VWjLn7F2yj1DAkr6AjTY
	 etiHLMTbiXVLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95CD9E6689E
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 06:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176621363358.12475.11669047606695193924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abab78f6ae8df349cc7b43b4c26789ee0726a03b6df2937f8b00c2ae359c3de6
Date: Sat, 20 Dec 2025 06:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766213633
