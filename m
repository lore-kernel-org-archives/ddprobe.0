Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A50A222587
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760482795; cv=none; b=LA2tyt+D9CjIghkiF8QuY/bA8NBDtGm9DEk3UEIoRRVhjBUGo8Ig0A/IKNmmogYVfxUewjfmlTWNzduL4YFUGSY8wn6CEP0dcyw1aJtVZpAzsBHbig1OtURtviRCRdsOolb8MgSPdHzksFAA1n2l5KxMwH7AdX6XCFr1P2UOKhY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760482795; c=relaxed/simple;
	bh=z27dfn8HG9ETKlP5OrporX7i9NpFy7j0ZnfRS1aHw10=;
	h=To:Subject:From:Message-Id:Date; b=hIYYrDjabWVgWwL3ESWvaujGfIR5tApP4PkOPiGl08vSB0eRjZ3lurivX3rQsI7LfkgeWf1AsDglEF8pOMO+tLw4esB47oYG4OjQZTCbmlsZ863QQOpKPhwf+bSEyKrC/ixcMM80eOUmyc67KUstdBSRXFkB6O3aEjxaJXD1fxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=myT/9oly; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="myT/9oly"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2BB6C4CEF9
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760482793;
	bh=z27dfn8HG9ETKlP5OrporX7i9NpFy7j0ZnfRS1aHw10=;
	h=To:Subject:From:Date:From;
	b=myT/9olydXSr0YzNlRbo0TQ3A437de8oDtygGc49hqY5gc4o34oyt/OmRj7hHsYlV
	 sxMH4uq2SpkmG6vykIj5VLlQg3J7m3U2KD7NtdgDxkEIB4vlahjphFIrYw2lj1+KYc
	 qYPFe6VfN6ndi7xZh3zz46XubPkrIJuThfJMhRaX0Gco+RN1iKLHy2Q05n/scaY2Z7
	 HWs0M5/EkE7zShwDHzUA2KL7n1fpiHS2FQWZrV3+/ZZjxBTEjLKnEtFR7Oc7+IGpNL
	 bF/vrc5tlq662f44hJS+IFUsdxAWrOcsmFoG+ujsCrpzsZLoV0mnDgNNf9CRfPvL11
	 a0hYkJxXBgIaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94048CCD18E
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176048279357.3310.4134943140511434528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc2002519b6f404554c24e8d5e6968d7db3de725e10bffbfb4abd4e6ff688e5a
Date: Tue, 14 Oct 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760482793
