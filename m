Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 305142135A4
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745933994; cv=none; b=omN+ads6LVCd6zZ6Wxf201FlHtcELT8olJTG9lhchns94tpLhFuIBIgFUe5WIKBUzeDk1k+JBb9/29OYXRdw2yzJskn67KW8AkthV+tAbWB3fNYMdlF+zP6sYMYVgmI4JOECmu94eWyC4Q3Vl7SiU7jsDRX6xm60cFdwlA2/DUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745933994; c=relaxed/simple;
	bh=mb1G+8iFX7+9XvzYh6dVKl3RpXuo5NHtkWtF6DpGt5o=;
	h=To:Subject:From:Message-Id:Date; b=kNUVK7Iqhlt+K7eADFvjBBX8ntv/tutBsw+pOzoqdGoZOop9CkwpwQAOe3yyJ1tTHwq1lRsTn+PDFivw8kP95Xabtb2tC71lZmvfNZ7v1+vTtYazHX8xVaFfT8ZikzvDu3zN7XX0x06m/ZGIDzkW8qTVZjSOwrzAKrdrCvIg7eY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DR0yZCeo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DR0yZCeo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C034C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745933993;
	bh=mb1G+8iFX7+9XvzYh6dVKl3RpXuo5NHtkWtF6DpGt5o=;
	h=To:Subject:From:Date:From;
	b=DR0yZCeo8qcwongMxZjjNgPCgfIpaFlEmgpPyAfZJ9mlvUbs5zaYHfMZDGKReDh6l
	 7xKIb0YExOUgi58SPDgvs6t7MTotZS3pkJSKd8gIiZcoyNMZraJ9s6/nZX4hSXQBRo
	 rWt3f2lbAHc1a+8axwcEU+G8RFImUhAYSPpjvOAv1MxHmgmII+UxtHLmSpHcGtk5am
	 sReSWn8fiK0qEYf+lc6Mceo3iDT4Oiisr3hwhU6elMws1pIaCuZASmbQPSx2jvdbHe
	 bohl4+GH5UulijwGIR8XRMYxI0pAKbiPaORSHz6zXStcudrESLgZVVu9QxTtA1WgJP
	 gEyiz8S39gMVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E380C369DC
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174593399357.17581.8647115071049658321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66cbbe1a2f77305228c82afa99642b7990b45e28de5183568be200db5f2cf95f
Date: Tue, 29 Apr 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745933993
