Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 361C236C
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 12:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732536954; cv=none; b=iaqfcWbGXwmGn2EX92/d45MukiX6cOdULGyzv1GXc2ihxJNR6G74iL5TsYAfLNcJCWbA1bW9ER7OAX6Bq+UFqgVMsi2olVde1CRHgdqrei9plocTHuIUf/L6cP22t+IshaC5lUSZexgCHuVQPqtOVQaVSZDW3DU+uDZ3CZgIDEg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732536954; c=relaxed/simple;
	bh=FUf0Y9TjLusKJHN/pNaj8Cki3ssdkKaPRfFTxsoJA1w=;
	h=To:Subject:From:Message-Id:Date; b=ttoNjDYJec7orxAWnadohjbF262tqoqThzbz5VKsXTLajY6deOxri/jeTCUxG8mSgp+JZlPl27w5o2T7S+WNXm47zdJkQjJKVRW0wiNZuVAN66Rp9rpP5NOLRLgvnJNruVCVM0YeudQUNFSOo2aO4Lb6xcCArTnO32Se+oFNVvw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cb1gWXel; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cb1gWXel"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B347BC4CECE
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 12:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732536953;
	bh=FUf0Y9TjLusKJHN/pNaj8Cki3ssdkKaPRfFTxsoJA1w=;
	h=To:Subject:From:Date:From;
	b=cb1gWXeloEe/lm+SO+JrzkEdwk6QOWOyg4P/DEkMhMCpTVFwLMltmtXP1U7CdrxBz
	 K6S19adBPMGV9k9pn8bQ/T60JAM6lqI/V17BBMO05jEkqlb8oL8q9iZRk6NqpXTdci
	 CUtTdE2yj1bZwqd+wz05VOEuTqbpWVeCtcuM6ocoA49G5hqEUzTruldRgUGu7R5zOG
	 f4WxDnWjQQv6dilVuo9j6GMyeAL6Bfh6NH1+qNuvxEFqcAJ+fp83wcdVjstBIYNXtl
	 ZUXKC5pUe6cvfMP6KwycoVxSr6/+rzckN1W4ysw+bbpd8Rpm/d5ldhhVKkfZFeIEc+
	 +l+iMO+bGZRmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 980B9D58090
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 12:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173253695359.8161.5812276877948179571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d01f41af7660176d502b679590805f57efb6ee739441969afea1a526b5619c3
Date: Mon, 25 Nov 2024 12:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732536953
