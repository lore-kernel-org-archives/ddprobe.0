Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61582472091
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 11:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791372034; cv=none; b=sTXOf9rEaUnNJLPyMHe6ZGSSsJaTRYHrGpWc48Vf08iLMn8OyaUpri/M6UkokCJI+NnZ9cRyQtHTy4XWuSlHpY2H8AS2DFD3QmRzythNmJKKEaJFWUddowBoN/m1t5LLwDGhffQdiPGuiKlvtLHuwndkHuMGZ+nS+bSVL6/7WYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791372034; c=relaxed/simple;
	bh=ndYM/TTzbx2cUZgAtdv3FH53bIeQGB27WotjddVmBJY=;
	h=To:Subject:From:Message-Id:Date; b=DhR13NPA4rLeQlU9zSqxLIJ3CirNJqSl0uAqlzmm9cTYZpPY30VmbXiEyyFW7UA7yxVplFVxzwGtx/m9BXdl2J2ZFJ/KUtY6MZVz1sUh5P1aTj5B89ZgTrqKhOgdt6mhF+Sk5dNCbbushdTmD3aYeGv36VC29ioXyxKyyoDgpII=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l7dl6+09; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l7dl6+09"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D220BC2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 11:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791372033;
	bh=ndYM/TTzbx2cUZgAtdv3FH53bIeQGB27WotjddVmBJY=;
	h=To:Subject:From:Date:From;
	b=l7dl6+099Fw05IP8w0Kjjwe2LgyN0WjY08gHZpGQN3FwzCqEuXD1pxZ3jDUwFvNC7
	 db4GmZaqCyuus91tMMfuIyvhRd78HZuavkwWBb3a4WsekPPnOotN3r3XSN5Lv9Tt/f
	 x0O48ACOgWZnwSQ4yHEQ44+tddeIi/UFGE1o6+xMr358j2WmwShK8d70Hsk6+ilQ96
	 cZ5YQvMYNURhlk++QPeZC788abKW4SV76CqljbcUnmPrVsRXyR8ivp/VZxNZ/JZFYv
	 2zD8NrYiH3meGbtK6iI1R9fvEQ5enYFB7IfUL4m5FVqGd2GPmWFMG3u3Gk+MA41tIw
	 HXyMdtPHcCDVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA884CA5FF1
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 11:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179137203368.26864.17835085010392276692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7599578056aba857eb5f7e4fbeee2f1ad3b0fb91903e0ed2a9e700f1b72408a4
Date: Wed, 07 Oct 2026 11:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791372033
