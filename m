Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D6823E3166
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 09:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788686434; cv=none; b=C98ro1WTDIAxXBAf9D3L+Aj6OjReoJiHAxF97zR4PmQZCgX+tLrNIP/p6SNxIYxtNz4IfKJHKSlz83PpqC1hCB7Pehe7n6ezk11yNfVxd2ZW2vyNR0mxQgNtMez5j1R0HXFNnpZiplaGuF7LhysjsgASQxHokqkTThTPgmsB8Jk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788686434; c=relaxed/simple;
	bh=JsEY1VsODmT5RDGLt7XwKROe5i0Qpmo7HQZM0icGZiU=;
	h=To:Subject:From:Message-Id:Date; b=PvBBc7V4Cz3g6XtgAJfPfjqduAwHuW2RLfHA0v89Sz3dLA74IkG3ZXl03XiddMkv1Rko/htxjy3kbAayce+vm2oHXVmfETqx9DCZLQoouQez5EbM/i4oxY5T0/tr0ovqHmjgo7gzpPEgf/jAIk14Ha1PsOTYv25Ituv4DtslWWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TtBRmhDS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TtBRmhDS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBC31C2BCFB
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 09:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788686433;
	bh=JsEY1VsODmT5RDGLt7XwKROe5i0Qpmo7HQZM0icGZiU=;
	h=To:Subject:From:Date:From;
	b=TtBRmhDSmQGX/EiJwwmwMg28Ed9h6t2lA7DLYqOlIJnNDRkei5Muha9y4AvnmD3x2
	 CYObDg+TJlUWtXbNCkPMhRwsvf4TrUYtBQAZPJQO14QP7u18QS9Qlo2WUKC42Ai6+U
	 sR3MmyJkjmicf+Kym1OCBPg7MU2GqlPj5qmw/SQTNxZJ6xomELQkgx/kA8F9QBBPz7
	 xS5wpm9/L3eDFTh3gpqGGw+yMkS/1+4ZFFO1G5OlBCOeXIeE0ZUVKPv2tXUAPbYXka
	 JRe8RQpFyugwgwUGIPCszqWQkmK/4/pf/zHhzg6qOrBHfD2D86YTUz9fO7Rkd1cPv+
	 a/dgvsOzreCtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA834C79F99
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 09:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178868643369.8164.17035577588047255192.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7efb2617431b1099656a988dfd2427f889cdade8576ab7352f309b72f263887b
Date: Sun, 06 Sep 2026 09:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788686433
