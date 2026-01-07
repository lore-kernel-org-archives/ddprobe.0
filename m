Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB29E26E6F4
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 06:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767768234; cv=none; b=IF/hHMrjErCKrqTQaKWbt4lssH0QZy+7W/5AOytUzwrNvRXjal8qcAjpmsCGuJFZeyGL/BIAJQt0FkE4up6nfiNoq8p5Xo4F/0EXXHyf5sCXiu5dZ3Ze+vEI8SBJk00fUrvHmmvH3xov10KwyILjMAVr/dMNF0MrVAcJpIfI3uA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767768234; c=relaxed/simple;
	bh=ajAIsSXqn6RfXVAp53eIcnE0eKUx470iD4KJVCQqJEQ=;
	h=To:Subject:From:Message-Id:Date; b=Nu5H1RN8p1WttavYMjYoXDHtn+JjXkDwr1w/B4DQ3Ah2i/I0ZHio8l1dPZbJzATX7eh0h5T3fNl961+Ej3px1Bvz2Pm0pMc0ksmYElCg92xnNkqgSGxpgZH0LjzdZ2SYYmEFqXotVKClB2JbotHwLUw0RJwjFWKOeyroiFGszdU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ajhOt5hg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ajhOt5hg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CB27C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 06:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767768233;
	bh=ajAIsSXqn6RfXVAp53eIcnE0eKUx470iD4KJVCQqJEQ=;
	h=To:Subject:From:Date:From;
	b=ajhOt5hgH6PXOlI5QoqV7YlwiZbiEzngX+H0yICVWrbS6KylaDethMAQsiFs1tV+R
	 DW/J1ajkbHRdidkKoo07ypQPxoWtMCPmsIROFws6hVqcUbzsvspbvjXqyjM2RtxHeE
	 1/NoQsIExTYy/TwUU5ue6X8aTawsdI5GobcSayNttaMZ7np8f9oU+kYp0g7ttHmHZQ
	 Q/1uYhE7Z1lhW3LQEoHKEsxrM0nIQANBdv72hVRxZw5KGmaq/qIBr39lGCGeZ/nBAU
	 0dwJZRGh+wZILDhGwN6y4aWUF0XA6YBjtXx7T/4xQBB7aKHypNjboEiEQf800wCBzB
	 Sw9cqqHgV4zJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA33CF6BE4
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 06:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176776823357.11480.5627520374693017779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 248aaed01b1011ddb45c2dee11eb848c688000a73fda0e86430a16e924f4866a
Date: Wed, 07 Jan 2026 06:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767768233
