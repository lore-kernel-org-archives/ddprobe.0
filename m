Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D684F3DA7C8
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 11:53:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768910034; cv=none; b=PHsJ85Zc9In+PPJjiLZBAL/vHjj5wzKMzyJP1afRMSWusogJEo77wy8H+VKVx0Kkn0jOKbaoWyUuqcn8hA+9+lZlYpjLND/3WKyOCY21zDn3ynBpWV0zd1CYNctHrJs3SUDJSX7bc5B7B35LdrtZkL2WGJyEOdwDSNHEMoXI/Og=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768910034; c=relaxed/simple;
	bh=ISwxqwxCEaC50iVS2jac93M8Y1U74/wusM/Z70SZkmg=;
	h=To:Subject:From:Message-Id:Date; b=qvDUKPdVLZoKerCUdAsYO7PjiR6wIpZYIYwfLKXSPPUiWqiNg7sKEmRF624ja1bmXUuVpYt+7iz+GZM6GTs9VnYqRVCQQojb8YJsH70HvDipHgWdN0oSl7CqXDd3YgOdQIE2Aur9xtmwnAASKJ4p3MGPnGIJOUavNrlE0zAzBBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EVEk7ER2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EVEk7ER2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6EB7C16AAE
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 11:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768910033;
	bh=ISwxqwxCEaC50iVS2jac93M8Y1U74/wusM/Z70SZkmg=;
	h=To:Subject:From:Date:From;
	b=EVEk7ER2hNp93xakYo0++BfUJidcfCYjIL/5B3NzxW2LlSbNEGYK0OLNOYavhAD2a
	 qPXzhOSC40YLe4EjaF/yBqh54Fzq1jI/1hf4wKTfm/SrrLgLCawUxrJHRfWLB3lwvZ
	 uFRroqOZJZ2XHBeIivqhoC+IRx8KTxjh/yN5t8qVUw9b1AUvKSzutyW/RvpmCY5B8W
	 baw2GUwEWBdboaa9O/LZx1Iz7j8oqL9YZk+rPvA80iIb3zuUWfZtSRoUmtxdALEkg/
	 njYBL19RHn6oToms1pMzl6vsliZyzF3aNfn3SIrtSqaA3MxhzwyOBUOnmI5JvtiTXT
	 m2sieAHO1Ol/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96068D2ED0F
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 11:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176891003358.15087.995832337398918571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19b22159053c0789e09ab90845ddef49638a2a586850162bfd3c7175fc89995e
Date: Tue, 20 Jan 2026 11:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768910033
