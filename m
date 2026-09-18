Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41C52392838
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 12:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789732834; cv=none; b=lWpqppT2uyEVQT94g3E/2xaWK/3Ul/QcdANsavXtFapErcgODqJ5U4//KCHK6jjCwJlIwZ1MrDKvpAtsnUuCYnoEWqNeBQLWLEfnKWZIZ4mCaziGGg/zO+N5tP7sEDNqI00QU0RIyuZDYrZbpCzmAEl0SoQ+tohuY1EJhx/o/2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789732834; c=relaxed/simple;
	bh=8LtTgT4nFf7RyvV8yRZ6xoZelYY9frC5l+ySX8ROpXs=;
	h=To:Subject:From:Message-Id:Date; b=FAetoWjLJnJr+6esp+6lFst+UfXJuq+AC5JojYdEhDFZ7mrVs3BUNkNwVEaNnHNZimGV6v10187TB62lriCcumTBTbbHfdFkaFNUdm1gv/4YqB6gF21ALhIpWcDt+OmzyOA98JBwJHyQ6nVqe4K+RbX52mUUrIvTkhQByH7UcbE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VfZC6o2y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VfZC6o2y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD587C2BCF6
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 12:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789732833;
	bh=8LtTgT4nFf7RyvV8yRZ6xoZelYY9frC5l+ySX8ROpXs=;
	h=To:Subject:From:Date:From;
	b=VfZC6o2y3qWO4y57pG7fozaj0Rrz1xRA9E3OWUS8XOX7SjT2qOjavfuxKU3xZa3M7
	 PBJ4IyZ8erqgut4OTejsGdG8xMexubjEaWlCsqwbV2L9DMepFbjunzN+atMZxHhISb
	 fLmKYXuyA3yFsNLDsypUnCNvYlaKJ8XyUJxVjc0cQDiRP4Phlkx8xjNJmXVg/Sb7lr
	 bSStZYC4MwCZn6ctKCES81swD2g9rRuSc0GzuN8ro2OTysATEg89t6AnYLPRuHMGfF
	 62TxarpgrKvtXlflobepQ6bnX+cuoibV68ljC6WC1XFL90OMb/WXKrj1F6rguKA5oE
	 boe81Zee0UMRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABB66C982DC
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 12:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178973283369.1347.16745054346343090464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4230ec81f1532433d667aca486705e8b5e359120925ce6441a69715f97fcc4b6
Date: Fri, 18 Sep 2026 12:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789732833
