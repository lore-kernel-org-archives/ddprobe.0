Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2741B2727F3
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 02:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775528734; cv=none; b=AnK2q/230fZolCRGar8pRkjq+/bYI/udouPzZ6+H1i5wfe1Zq1NTvJBzAwvVtf9TnQHF3dBUkR8q90v57mviFW2LvvwiC6XjeNYAnJSJPezpNi16Z+XxZ7Suyg7b4LHgSKI1BMFDdJcN5Olmbf5j7BNKjz5A3/jNnqV2NreOSuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775528734; c=relaxed/simple;
	bh=W+eto7/aecwUsDLRg9xpieYr3Z1ONR7FRwA7clljxjk=;
	h=To:Subject:From:Message-Id:Date; b=O6XH/Ad3LlG8h9dEm6NZ6OcRLINaLohxBKpIMXZWC2/ZvwiERbuaQjbB0f6vk6EDcj/gLqFzz+H9ZXGKKk01FP9FJGg8ob19jVSbz6/5TLlSShNym5KUeIkZPD8kSL51fGOyAS1gLHSjPyEmd5Wyd85Qp8F5WUNufC92seawX8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kj6do6+G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kj6do6+G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD7FFC4CEF7
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 02:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775528733;
	bh=W+eto7/aecwUsDLRg9xpieYr3Z1ONR7FRwA7clljxjk=;
	h=To:Subject:From:Date:From;
	b=kj6do6+GmnwHZp80dRo+DB/012SvDT8kiopJxfLidX2iPGWqbQdWsI+UjRW0hV4e6
	 RodRzJORD7SMZ0KhKoJhD6mTYCBjk8jOP2qYd2EVPoDMoZXHI73sVsHXXQyqo5Uob5
	 R8e2ACRW9vlDY3BmsRVFXoMt//iMD0CCdA70qic9DNbWcdUat8CrpekRNbzEflrsv8
	 e+uJBx35eelbnEWzF/UztnIQ83Sou3QJjfVWKELyD5qUqL6zuSO5MBMqkWZ8nnl9SW
	 tQBXWka1eGm9gmo2ZQo9bBteD7/GjmmoQJsKwhWrWsM2YgjSpzCeFnk0kRsUj80+JU
	 Elo3o8vOM6l2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACB94FB5183
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 02:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177552873369.16848.3737314719142287191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f01e85cb023aa369d299f1d4012079076cecb9ea897ac867ae5a3c8066abe479
Date: Tue, 07 Apr 2026 02:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775528733
