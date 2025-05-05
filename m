Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 310A034CF5
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746468594; cv=none; b=qMWfxNBaJbLVu6kchw8f6AjreQ+vOxtcY7hT9WGA4ZqNIgAGCx4OZAeTc+aBntrPchWy3WPW7eiJGTDQVkz2by/Tv9DPZ1C1FvU1b7brB0fekPADHvnnjy+QSWGtfZIgE4zQaRLtiCEa95si2FVoYg7iWzQwMqLKWDOxIOiwvso=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746468594; c=relaxed/simple;
	bh=8kLGCI5IDimW+5pv/F1lEkVjMsT13kCHHGZQYdYE/dM=;
	h=To:Subject:From:Message-Id:Date; b=o67DiApnQlPCyB1Lf+uPD9QQT6hHDD2B3cWv4OAyOkOJn53+9FkmqSduFl2wHwBCdf9U2CXzRA4lk6934tvX1uwqYUy4wYbx3ySvwKlOgftb0u1Hatmsxfpug555o/9C8nmse8j90WIfZ+iJflgT6EXrM5G4nc8nd9RhSwMePDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m3yJcaph; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m3yJcaph"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A22AAC4CEE4
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746468593;
	bh=8kLGCI5IDimW+5pv/F1lEkVjMsT13kCHHGZQYdYE/dM=;
	h=To:Subject:From:Date:From;
	b=m3yJcaphTnS0p2dR80msGlguMrfLJOabYe25n3ISK+ssAudnHqFgDdyCzPqce0U5N
	 jGRXZmmjhGQo6TwWMM6m3Q6gXHBJVdhn0p8TWyXA9BHFH8u+jVYrzaLa45BaYsA1/y
	 amNTNE335bjTejaT5IjNZqyro5YGvFPbzRFDQ2z2nQNKTxlRmIDCRU1bN/izEFUV+H
	 los5FuraweKZquez1NFqE9gD1uNsl4M6yisfxMGbfN0wWdXcATrDqAuRvo5yAqP+Ep
	 lQmkHfN5iIpEb8FJpNAn6yUDcEhjLnrAFexphebAAszp/uJfUslkkDY9NDGG+Ep/W7
	 1Zjgc3WOiN94w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E3A4C3ABBC
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174646859357.8737.10626705448510790704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a142b06076b33a2b2053e91ee95d47cf56768a03213580cd2caa4ad89c96b8b
Date: Mon, 05 May 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746468593
