Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F033513D274
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 08:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712738897; cv=none; b=EH/CkU5CXqaaQyxXQdrxq0WO7fF5KE/ZHLVlGhkNnJYz7veeR64O36+V0Rgh0nG5P2OAxYVP7N0OZO5DuRYFHJy+OddRkzjfiL6Ln1Yu92fJMHPl8vlyWeMvtrcVhHFbJQ/jlp/yF6VauY2NcykKZh4bv49gId+i/cxJVu4pEFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712738897; c=relaxed/simple;
	bh=qjNZEbjBGa2bgOHsfUeqwDlf8S+Geojo44FKBN7+ayc=;
	h=To:Subject:From:Message-Id:Date; b=hNfUS3+xw44yMBe5FeOG+D0Hg+9Ib6TXE7SCqIlWRHvbzikGumleJzcZRZdRboTz7v04KIcM2wFooC48jfZdDAQLkxgTIQmOZiQmHtCBqSTaRyMBzoej/jz9tC/+/kEX7e8pBv895BS0NbYu6bZcavkE6Lint4md5r2PV+Uy0L8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c/qAp9OR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c/qAp9OR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8704BC433F1
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 08:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712738896;
	bh=qjNZEbjBGa2bgOHsfUeqwDlf8S+Geojo44FKBN7+ayc=;
	h=To:Subject:From:Date:From;
	b=c/qAp9ORPanoumGaCbrQBaZUghPTDdPK83ImS4S3hhBwrZ0NtWL6KLY3Ju9Q2wKNC
	 MNAa++dRccgzI1QKwh5k6rUqke+VEiRK6ysC3Wzwx4cga7obtLsXU95XWP6AMVMbNc
	 bT0/tzEYdb/9QaXXuDt/JkNdNBI5aeWX7fq8kLqvNwJ5CGdoJrHpg2Hj5bRlC/CCUH
	 qDDIlcGMdTax0mbpQIyL2jO1aWrB69q8V1WyEc8ZTCZ8DR1ZdqTQGoAQIsyzHN5t5h
	 ta48kAIaLbUzuHU1L5peJTg1FFmcGbf8nOwcSQ7YfTG0oWjafb6fxthsBWnW7az5wn
	 FFdBELhzElFCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 73A84CD1296
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 08:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171273889643.25471.12776416992316283869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef8c2cb729549ef68bbe2a2e8557a424950997031fb349868455936200eb247e
Date: Wed, 10 Apr 2024 08:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712738896
