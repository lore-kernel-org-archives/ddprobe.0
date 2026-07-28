Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DE50386575
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 09:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785229834; cv=none; b=kiRnFKeVtARxSSk0I83kw9tIiY4G0ED5CFE5JqPCRdTqSxuoCxvxXQuZdUIRcs8oVYLKhqT8m1A+gjgbmZdSeR51m5cg9n5h2FUNpq4OdMk9a1IvgQPJf2AtoLHGLd7iaYYOHDS68jsuVdXf/mfYw0LLzhKO3eDM/xvI7w3QvsA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785229834; c=relaxed/simple;
	bh=oGm4VfvGo+GekciPm6Dd5d2trcdACES1fCOEEXUB0bA=;
	h=To:Subject:From:Message-Id:Date; b=RDwWWcXYp2bc0mfbZqWMw9uD5NgevsPKsAIuF5ZmDLvyluwd5sZhtqV37E7BdnkUy2UYdeRgh3hLE3pamTyWOC1ezHSmjQ1B05+gzrYjbBgxO1LYYHhvOvDpDI1KO17ZpQjgrypqfKnYEWUG3qPPjF5ZeysSDBmbthq9bJFq3CU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gxSpht8l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gxSpht8l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D11B4C2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 09:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785229833;
	bh=oGm4VfvGo+GekciPm6Dd5d2trcdACES1fCOEEXUB0bA=;
	h=To:Subject:From:Date:From;
	b=gxSpht8lAGARPPto5aW5/7aE267Oun1pxx15QPEd9sk0nZGvZda+dukuBOrGKbRB6
	 285psDPjrpRuUMtIcyHRhyqbiwwWhZOG5Nbb65OnpfYT9LFbn8s4s0H46DNE2Wc98T
	 EubTBdztFr1gZdNqXCoXnvyrdX/HGwHNvvT6X6wN4uCXUHC1Kza/iXvQktfRcftRM0
	 Q+L49RbIAY+WpE/XHEsc7j08IYetkWqvidPxB5fPVQ3WYA2ENoPoTB4r1jddqRkmT0
	 r/OZtlQjPAXw8Q2aibEF74jqbBVEEuLF3YblWefl2APNdyzlJR09sHRvghXxHP+q8K
	 y5W6CWM8JigZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE615C53219
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 09:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178522983370.28638.4331644047447154863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4975a1064f12b9ec21f55c894155d5daeb33cf6feb2697c479735bf4ebb1f84a
Date: Tue, 28 Jul 2026 09:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785229833
