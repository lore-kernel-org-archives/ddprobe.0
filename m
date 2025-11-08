Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A863258CEF
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762565394; cv=none; b=ALZ8vDlbRVxIGYwWzlIU2wHiVV9bZkiF3pPLDyf7/EPCWuZfH0oMSHSRlKN6SGkbXgIZ5oVagvm/3rmLbyu7nz9qzzXhe3nnlrr1nNOnoywq2UZyW44dHZUOUOVN3MDaQI/N/+yks0ExwAENNcqtu58WZLgS8exj4ytw+1tcvZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762565394; c=relaxed/simple;
	bh=qsagGiIzcBAtiaHinqEnBCYPwYEkZe7F+0tFxUXmios=;
	h=To:Subject:From:Message-Id:Date; b=gKukip/YArgpBwq3iaVfMAMMZSpD4TVHeWLaEX7vWhfRRBzNcWXEww21R1jzvJyw12S0okk1vhpcrd8V2NpGz7KPdFPx/ANrbcJs8wBp+YSslEvHKSuJBTJ7TgCVlpsxgGanlMhGefL24bw8Zt4CnwZqW7MUZ6ovZmj21AtcJ9Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qQgab3YV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qQgab3YV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B39EC113D0
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762565393;
	bh=qsagGiIzcBAtiaHinqEnBCYPwYEkZe7F+0tFxUXmios=;
	h=To:Subject:From:Date:From;
	b=qQgab3YV0z4ynWn6ARw7S72RZNqR588ZYjhwC+Sd/LQ6tkTq8cVEEW9Hh4M8cs8sl
	 +zsn3sZ9xMtrUkcCAH4F6bIeyIVMTaBczw92mkD2nA+MNwPd+5iNumHgn1v+MNw0G0
	 KLyrDAkT6XVUtRSRugTbd61OeXZ5Jbu/okUNCtel77Vjf0Ljt7XixG6Fzw9hMkjiPh
	 94WcXgvHug8S7AuHTJH7eL6UVnlnmID9R7BjS1clQ0qo/RGy8l0AM1kQnF6k7xzQ/v
	 pi+v8ZBdn8BEPOkEs8dAhvemQMLgup2sEmXVEmTyIP1nFJuocXVOJd1mBh//CbDpQo
	 uC5b0CVrqWS7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F31DCCF9E3
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176256539357.27233.14466081499511222815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea3ccc62ce247cf40da1bad279b2821e52a9eff33eed1cea2e59cf85bc59f02d
Date: Sat, 08 Nov 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762565393
