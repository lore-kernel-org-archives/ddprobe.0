Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C93614B950
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755403794; cv=none; b=jeWyg1Z9BaNTXSr1OEBuuRIu6JLDZ4VypRtqTLW96dtCNbSFdjLoT1J3vh8rfHsNDFcF6jjUcUhAG8y6TivGhubUq56aNa4x/mKzXCk/dJdEPmKyvWymMQPqiUKMc35b+xSVGm8hubWHBiQQva0o2RfJfWQQjqFQ8dwWe9Ek9w4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755403794; c=relaxed/simple;
	bh=bv20PGstm/psiywDha5SFE9lWOcIJBa2GkyjyW27PNw=;
	h=To:Subject:From:Message-Id:Date; b=JCdcON5sTlSiyhWJ9DoqfZ1yMP2HDyXP8nUgYc+892u4cvczsVdCli9AXYMgUsm6if2sYQaZexQcQdg7OWdqSl3CBI40i6rUKlVgpfIAHgbP4i1tnNousMs/5yrrV92zny+fUkzaYoPdQQ3PL4/S8bnFkCgmUthsMuntdqpzp4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J1FgRNiR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J1FgRNiR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C8CC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755403793;
	bh=bv20PGstm/psiywDha5SFE9lWOcIJBa2GkyjyW27PNw=;
	h=To:Subject:From:Date:From;
	b=J1FgRNiRiHpMNcbrHaJgJ4Mg9nsXtgp9MEwxR0vV3O/+AAHmuEzvdyoNuGkbHiQ1e
	 4IQpX7vzH0zlwoxoIrGpTHy67JS2OmREIxINIIOR4ugJW7y5NsADmzb+/UI07j18z7
	 TPPfTo0S3rjhV0G45WuetBpv6qZrHqSospsEmKD0mefGqfO/hg7G7cP/Wiq4aBsPTk
	 msw4wxNAocBicp1Crx65hb/ne1hvpUE/xIEZr/xt9kyb4HBLQhreKQkiZmXjoetsCu
	 noMTE9QtyBXz0j+bQnDAhdFEoYRDjI584YlRZqnaFLcL2BqRhG1u+IviWTeEsRjFEQ
	 cFpTkHAiMJcZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92163CA0EE4
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175540379357.2837.15330584584918856656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0cfa4a7fdc52bf1fc4aabb8ec3f2a396666ff35ed4ad676918d30cbe211ea56
Date: Sun, 17 Aug 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755403793
