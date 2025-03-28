Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 544CB1537C6
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743164394; cv=none; b=DYupPgHOgDzwBta7s8JOuT7dWIUA27qTn9rMi7PYdJXKdsiZHX7XSdBPT+stcq0usnPP4IBZZ6nesBZyiOOva2B0escUVUeuJwoIdLA39LL+EkZkTfg+2qs9YQsXqN6qVfLhZtzNme9VVgn+QC0LFG/tf39WZZnvm1nYLFRtFdI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743164394; c=relaxed/simple;
	bh=bnqHtZo46u7/aCznRwl28BEgW2TQPxfRU7jHjbariUQ=;
	h=To:Subject:From:Message-Id:Date; b=n3cXzELwRFqFHUct/VtMaqRT42gLSm09fMXvzoMeGt/6gykWFb14NuSUS6T8tfhLdSwMjnkwTVgwPCZtITsuIX2VkvqoXJYkwr4BeRJq7jivIDdC2n7W6+Y+gZS+AhyOfFjZ9T1tQHUFrzTnRK+suUHOtp9Z3KsKayif1flu0PI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uIKYO0U/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uIKYO0U/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC975C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743164393;
	bh=bnqHtZo46u7/aCznRwl28BEgW2TQPxfRU7jHjbariUQ=;
	h=To:Subject:From:Date:From;
	b=uIKYO0U/cBU4N0wKO9uf3Xe8YwhRofDN3pSxQm1gSLjJVNEU7yuexqV780/DC01HV
	 cnsj0AtKViLTmaoG68dNTgRqJaEkXn4VL0SmVpUpWz1+JIuI6jV9QQVnHe0IvwzKnG
	 qgwyoig0+iQN1xvzKtIcKor+qHHEP6iBsqEW0cTs2O/QMd7lAMFz1whjrPzSROk5p/
	 pD2C99XEb8Nag3RvFGDuiYJrsRlM5haOZ6ItlMH+Uj5jQMiZ1McB4mLXQyqWZTF/Yw
	 Py1+CDybxuXrO/QqAKDAojLMCwi3FZHE6oCuiBD79Vv+yN4HaqjDyhL/WK5ZCXfq0C
	 ATBwk4gL1somg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9304BC28B20
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174316439358.23892.574774172680520234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 119050a775ec5ce2e180a98cd8f09c8d965b468a393f86fcb2400d6963d9d69e
Date: Fri, 28 Mar 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743164393
