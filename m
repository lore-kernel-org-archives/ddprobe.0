Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 285751C8612
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754740194; cv=none; b=pSQOFEBVm/jAn6OHepu5EU4N2GmwXtGdn66yZ3HONqcoW/31EMkzUjikq0UOtrO0DlNVltjqo1bLkO2L5xVT3gbBCZmCmGXlZVQt5DVuScxpZ0ix4Ei+nIBiXTMO2qwD4JNv3/DPnvmXM7msVwBABQ1jyjKmR7BNztn34T68wjE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754740194; c=relaxed/simple;
	bh=/H2BYAIGO1uGI1BV8qLJNQHWo1IEsRfBzRWnLtEBGFg=;
	h=To:Subject:From:Message-Id:Date; b=CohrFYdChB9NqweF7VVQxHlKN85Alx8OExt5AA0yKco9a+zB6azIjTNPDmdd9tuetKB7OkPRVik/eQV20MnbYhyedkc25sxKJ52G9ndN1cOG3LLjVz+k05BvqtQwDiGA5wE9GaVXLh2fMHJIEjeq8bbA+xNX3fEeS1lLUt5/Pvg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Etg64hQ8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Etg64hQ8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0CAEC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754740193;
	bh=/H2BYAIGO1uGI1BV8qLJNQHWo1IEsRfBzRWnLtEBGFg=;
	h=To:Subject:From:Date:From;
	b=Etg64hQ8PDRmllIee9U/NaTIyGrNF3Hdr7HOY/Ul2ICyCdIEp1aeaYNwuirY7pXU1
	 jKb0M0KDgZ7HVl5csBXO0xNqooBXfTpgQF5v5wJ7Eo9Dn9G6bXBYp2ILJJ8j3j6AM0
	 PiXw1Q5eWapYGv3tU2Y8tCdLsLzfQFclgG2xq1RyLSrHj5mK3yaJkZbXrLZAZcNMBj
	 D8icDaX+iRze8t61Z6pSe5Xg9DtWekoYIZTRIvPeXlAl7TTs2uobU09cs9BWSznMJP
	 MuBnGmNTJur3crUDoNKdmftpM+nuZUBSbxw7FmpEuSsxgkQUcQfiob87J5lU/sZENF
	 PbpJ6PBPOr53w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F73EC87FCB
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175474019358.29536.453311447439050008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82a5aa88bc8fcbf5cb778bfa9022a40868b0088b853613137b2949a19ebc6a82
Date: Sat, 09 Aug 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754740193
