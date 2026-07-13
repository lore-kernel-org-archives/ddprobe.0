Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29A7B3CAE84
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 09:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783934314; cv=none; b=l4Bybk7H0vCsEYA5f289EEs1lDneWQmMnrCtm6Nr105i/lsf96PkZa6V+AS6TU+1D27bEmBIr4+0iPl7VwpV02pHfbsVTrMZU1dmFdNMrlPp6j7lJAJ1gKAKxmqCl2IDddsjWcz8CKcfMfOEaFH1aWMLgnximeAXt4y6G+WPRoo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783934314; c=relaxed/simple;
	bh=B6ICPS/oKHlw/YLlTzY8pV8HekuDq7mB0rqAtTSVYHA=;
	h=To:Subject:From:Message-Id:Date; b=tErIT0+PpYWZwJzp8n5ksQgP+dZ+cgT+FSEMZNRCbBnXRTZ1aHsIJRlyzQ7PcABjnPuqgoueqLF0Qv5BWby9zVYbLnrrgqoqjl1oFvwQWzj4RaK0F6J4m5Dle98+iaubpz5TrodYwONlkeE3GMfay3OC1YUy98hUaLER7ej2GCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jy3tE9PA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jy3tE9PA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA203C2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 09:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783934313;
	bh=B6ICPS/oKHlw/YLlTzY8pV8HekuDq7mB0rqAtTSVYHA=;
	h=To:Subject:From:Date:From;
	b=jy3tE9PAwu8iMXcP7c/cOaHmxd52Ic3oxnmxGVQX0Ktb49hXsT/f9+G/FZ7UhFUec
	 px0GA3v9ZiUUHIOnMP1ICwP6PzFKC5Mo15qiOp/E/Ir8b83+LTWq0ZLyIunp3o3YHd
	 Vz9cbsnh6EXLSVXWucmZemdXaEAMwn3wfzaibPlUF9KDg3e4T4N5kyVi6zcRBtt0/P
	 4BXRSqx8VHgIdFldAZOM64ASgSn4hxpAwfucDJc06fP+mzW1xX006d6S9ZyjECGBqX
	 n89NaYyj+BYFC+iTAIe3zXVsp1DvQPZ9zWLF9pPYNah+Hz2vfB2nyteiFUu7eitgmV
	 Rqsjn5eBHL3tA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8675C43458
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 09:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178393431368.25223.2022598222537566222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 304ab69389761bd0f1a9fb85c04ea0ef7fdbc3f17373a03ba4049afbd3f01141
Date: Mon, 13 Jul 2026 09:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783934313
