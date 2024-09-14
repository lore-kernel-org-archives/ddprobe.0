Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24BBC1754B
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 22:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726354554; cv=none; b=i6cSCJuXIHQXguRvDPI98RmQWBwSn7LXoeU1KkvhHgtVWdMvhpgLTMyF/myJb8o48LeRaUVkIhYhZilfGL5AXfe2LNxyMPQtKDhp0vZ980KZ+ZzRRQ0Eo5z7F98bCNvK+S1BDeBiauCdWWY9BGUAR6iY0OubQtTbH/UxoT/Tg1Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726354554; c=relaxed/simple;
	bh=yyQtH6BOIxAKzHrpCGPQa9pkb/EXTy33kVRND9lqcl8=;
	h=To:Subject:From:Message-Id:Date; b=ZGNwE7I5g5PDgZCGrjeca9sh2Mzfo0Me/1wVCjzhxDoBXZCJTN5lYPGPffCJLLvxurpcWh9Ijl1m2wq4ofzbqM3PylKyH6Po6eqtbSqPjqJmbOFQ6YmcGMD7PsSK/n79Er/2Sk70HYZtaOvXe6ptCQO5SAvjslQNR+62AN7r6r8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fifMYRAc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fifMYRAc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D59C4CEC0
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 22:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726354553;
	bh=yyQtH6BOIxAKzHrpCGPQa9pkb/EXTy33kVRND9lqcl8=;
	h=To:Subject:From:Date:From;
	b=fifMYRAc0/83yiM8QhSWusPAF82m2bq4iVvMdEvfuDDPTg9x3o63a76JsFLSV4lJO
	 oLG6k/aOEt5xT+vH9bbEYLwxk4JKRm4MD8B0eROmpqIq28kHvtRg1yoPT08jA1syX6
	 /f613+2ntdytg/j0xn9Sval6evMfkB4VSMK5FgYacrFFJaRyy5U0ETgHvPxKxaW9q9
	 OBiXWIQDBEPEWUEeb0Z/fw9QX22nWUWT7+v1FnWsG+OA/mqhPPc1Oko/b8ATXagOj1
	 K04pVKKUNTtYTj17i9n8TK1K/vg5VmnpIxAjee3yFYoALMOJN2zRErNvIBTZjNDdXH
	 geqVZruSVQ0Ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93751FC6176
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 22:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172635455358.18836.7957037858257899562.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39fd92c02515a9af8bd3471a9d0915453c7a1f8276d3cc7a4fd5bd8dff99f53d
Date: Sat, 14 Sep 2024 22:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726354553
