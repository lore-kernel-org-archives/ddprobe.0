Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 495732E646
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 20:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714767143; cv=none; b=QUDWfrQIY3wvniQrXm69PT2xud5DfxqnwBNpzR1rjNFaui+x53+qnstqjK+f2mnoCe6CQrlwR1ihRful0kZWx9gQLnp/5h8lVq9ocvjLiAmgZFiUI23wIk2KtKgWGvFoR7KP6xXcPdzIYbH+S5WGdzF/+R/e82LaLN5B+EhgTmw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714767143; c=relaxed/simple;
	bh=gb07/GDtfApnuQnS6744I1YspnACzIlujDXYF8pIe6M=;
	h=To:Subject:From:Message-Id:Date; b=j/KvgnJaTaqlmifmfzXuAPJfNODOVjIwMBrzQQnUa8V092CO4z5dlojrZMVA7YUk21/OKse4OnkFxYZeNgTMlSr9pEpcxJaIKBmQSS3XyEwW59OEaJ8xYHCbEQdC43lsO9xUUiSrIp37OgsIyPzDwtpTcPOTZBVQ2Z2Y8dkcdE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UtZzkZzq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UtZzkZzq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE66CC116B1
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 20:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714767142;
	bh=gb07/GDtfApnuQnS6744I1YspnACzIlujDXYF8pIe6M=;
	h=To:Subject:From:Date:From;
	b=UtZzkZzqC1udipP+ED9ZdSw5hmijgH+wBLtFuv4CtpFcWYjeuSTqnGOS54wybqJqJ
	 N60XddreumPB8DIVSmIes5jpuwYeZpU0THMB3qJs+H3W5067wbx7LVSauiW6Mf+zHC
	 SAtXc5ulX8chU5mSAOJPub3+bB/G8y1hACFlf8FAKQuX/iJEpynR0Fzw7YBpjFpT+P
	 2UQgeAmxnHDUfTxd8qrQt1FyjrSw3d4JZ0nUjO4n9lUyVo5rJ/xpRmLFmpYEWDKf6d
	 S1zciL5YHQMSfjpSAsVtlv7n/5Lfaj3paydZN2KpGrAU1b6az96+xXb4Y8rIj/RIB8
	 EuB+LRTQBtq3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9C23C4345F
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 20:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171476714275.640.3844598979339002440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e23530be2b270cdb66554d68c15c33830cfe294b3f2bb6a872fa778d38214de4
Date: Fri, 03 May 2024 20:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714767142
