Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B4B438385
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 10:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717325723; cv=none; b=LdR8s50c3OzdTrB1D3a9dnFnWggBWHqIfyIxCqFPlR4epBK+eH9YgaP+P1MDqiEiUuube158UCgIls3CheKM8YI1oUuazodjDf4v38UqEeA8H/zKnqREBKcwVUR6MMu4hJE4Hxfx2WV+mW/yCxGXesA46O+puuVzBQk86rF0c7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717325723; c=relaxed/simple;
	bh=/qEjlU61DS+tF8Z8lIqA5QFsNseRzTqpowksO5CRR80=;
	h=To:Subject:From:Message-Id:Date; b=iPPvt2ofkFHeOCsdx91OpNF7PQjEologOg1zT5dxuUHTO+/Z3QAi2MmCZK9iryJUGvNgxdjOV16sHcqA/PjTKY656o7cCmLc/4qGV/UbtgeUYWw8A/Xaw4PTtFxvpQ2wjZ55YsnTycVt7fBB9QSKRpeJ354b6CPOSqfuoQJul0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ipW7FlTC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ipW7FlTC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9D13C2BBFC
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 10:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717325722;
	bh=/qEjlU61DS+tF8Z8lIqA5QFsNseRzTqpowksO5CRR80=;
	h=To:Subject:From:Date:From;
	b=ipW7FlTC3OqoUewDLIduT/gKf84AbuxTyQsObynv/zzzY++ykIhBDW4rzQ/MQNXKk
	 AhzrklBTWduQ1ukO8aBgrVXbaILCTJnRJUOORV4eWwAjYK2xey8w2cATxfUrXTXrrJ
	 wDraMsTfwZZAzfXsXZGIN671c76bgpj+fk4ouINElOYf1CE5QLN3El+ZeTuAcXnoXW
	 EKqPj/xvqsry+GD3OgLb9JFMAQF8tGgpL5515eeQGTzfa/qTv8vPpeBZV1tZau9lFY
	 /ZJAJPDwHHFoeqocbuAI2sL5xMPGr7aPkwy5TPClh0hVj0z+AwRX1N4rVUS1iC2hDR
	 WPZL6u+kjLeRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C31D9C25B74
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 10:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171732572276.5956.5572054995826784923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f738706e422512ebef90bb39d5b1d537ceb263457c1f35b784ea93313aa6aba
Date: Sun, 02 Jun 2024 10:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717325722
