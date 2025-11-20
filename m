Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C04DB2D739F
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 14:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763649713; cv=none; b=kEHZrPRh8dDwQ/drnXvP1HIgP7EASRHW4YoPFFmRHPeaqF8qUYqsf7b42kDo/SouDaG1aBNENrzRRNzxg/R1QCYSImr+TaBeh3lM7vnvqPAsPo2+cEbvY5UDd14Mzx66Djv6omiL81bvQqtTvXAznnfLWtaJjnVu4r5adfFPU2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763649713; c=relaxed/simple;
	bh=TJZC1jSXnuGVamEUooXlzKAFVlfYjh2WMYwsKXubzXc=;
	h=To:Subject:From:Message-Id:Date; b=mrhlEKri/SnrK1Mz2qVdAydQ0T+MeNsjKphJdcLZxszYjzQy34ID2NAk/fXUU0GSQNMlep8jpeMHaVe9cZKmHRYmlOgkSql6ob9pn9xDSKtXggO2U2THVJgYiXLJ4BssLAXUBt5QS9U/hqPPmznRetUbUrWa+GLn6iEIkVzYhhc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tC++5YKn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tC++5YKn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A289CC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 14:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763649713;
	bh=TJZC1jSXnuGVamEUooXlzKAFVlfYjh2WMYwsKXubzXc=;
	h=To:Subject:From:Date:From;
	b=tC++5YKnG0blzA/UY9I5djwpOi5dQe3CUY7Ndk/oHZ0IfnU5E0v8oq/oKIhesOxQU
	 LjW5PyWEJ6CgtJUUu9SMoQET4xSykzsCbfVnr5Hk0sf/sntm3OVFZLt9z0V3sop4f5
	 /IiAk7MOanmETCJm9c1XBWQkAHB5LmPbjfDmSQQv78YND4UxHPy2P2L8YMzqsMSJ2o
	 8asPB6tbhj+b/h10Al+upsORKPvuabggjL9G+lnprKlioPYGOEcGj3mTEhZyNpF1FW
	 Q7jOTKhwOtYg+96QdCiCe/xiZXg8x3DbK/a2Bfy7buVl0yCkJphKPb+cKBVuEt/RJB
	 O4w+OmONH6lOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912B2CF8861
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 14:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176364971358.15499.15006841858884146725.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7c8b9623ae8c63c72876ff6b4696674b98434260d6d053383e7c919a1fc4c28
Date: Thu, 20 Nov 2025 14:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763649713
