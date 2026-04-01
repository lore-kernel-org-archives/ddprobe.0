Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D14133B6DF
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 06:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775025934; cv=none; b=GY3Tt7wlGiegffeVa7D9QG2OOoTMb8PhtdY2UktdPj1XNYK3V6rr7QCzVKUwliOHyLoHBP2ThTMdFk7MZTupVzlnsdr+jJ93tkW/zcDnk4zZ2H6JWlxRSW7MIxqYOrjSN2ONvZx/skhN6LFQI+aFliA0PQb0AhwN+dZz3oAb5AM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775025934; c=relaxed/simple;
	bh=lUZiFKDYs5cLbc/yNTp3fuhtigKntuDA2WJFYAjm8yk=;
	h=To:Subject:From:Message-Id:Date; b=EkQLZrgA4qaw9zWiOqk2EomRZ/Yu+AulvE8how76aQ66kOVwFINyPzwMYksRsnFSbnsY5MkhdjJSRXJDwMbRBvNfXLCYcmM4ca1pSyrj0dlcoSOV8N7mgk0Oy7WYYYkbi7OtgiL6VKG6hfla+cFkJyCtUCvB4Sj3vsnMmVQ8cVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e6/rFp9Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e6/rFp9Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1286C2BC9E
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 06:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775025933;
	bh=lUZiFKDYs5cLbc/yNTp3fuhtigKntuDA2WJFYAjm8yk=;
	h=To:Subject:From:Date:From;
	b=e6/rFp9ZYWNV20uzMsDXxgB+rw5o7kfrqeEnJACjTN75eJ8ARpHNv9ETQArSBjftX
	 /I8Hvweanl3AZ4bUepj07NDcg0xMCV806JIGgTJRqLk8nF27kwAiufyoPGvTid53YH
	 Az7bJQf9/iaOxoqUhkkyWUQqwSl8VbmcI2HufxW9F1W/tKCpf1AxcHu1jJ9ABREhM/
	 48sJELGT+bAqM8SkTD2FmZyUhaZjU/1BQ6rvGpGtS8xFftlxRxw40XZhppy+I8PHzJ
	 ikx82TJMrbJA+kZ443aDQr+Zl8/+nvRcB0Qb6YCMMjs4b2M7FGg8VZ7sq30XDSAPdq
	 w53Wkh/daF1Nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC723D35140
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 06:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177502593369.3213.11515297210720720751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a138f3cab73a0ab11db6764dc31b0938166a9184c94aa84c25a8d6762d7db065
Date: Wed, 01 Apr 2026 06:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775025933
