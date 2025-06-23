Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 302DC1DB366
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750658994; cv=none; b=h7o/S8+Qk1P8jUWFE9pgR25U+8VsyetlpzwwLmbDEuDx4xc8A+J6JEbuXZ2OMhq9HgqmMoPnNYqWRda1M4MZDbCHQGD74UBYbcjQINeVH1hYlJsyzUAFBr/83JWVZimem01dfY6hFHpXML1Qu/YIif9xL52nagZpBEsV3ij1/jw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750658994; c=relaxed/simple;
	bh=9FkxvstVGX5RMpRB55Yo/6xi04cFWKDq/cxcN4Hqipg=;
	h=To:Subject:From:Message-Id:Date; b=ASqReiqY6h2qzYB85McZdDkF+BRoaLuPmQSP0uQz2xWSUzQuNgr9G36ay28rwSYt/VB+wFGdLYcnnLjV2RFlGDHhw2ch3FslFLhZR9M2cm0924sapUsqOhYAQoKhCEpxyaxQRn8CZGZkN3m6t/Ca6p9RfMOlFy8LBRvZsxcD068=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a9iWxt+8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a9iWxt+8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A028FC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750658993;
	bh=9FkxvstVGX5RMpRB55Yo/6xi04cFWKDq/cxcN4Hqipg=;
	h=To:Subject:From:Date:From;
	b=a9iWxt+8XC/vg1HwTim3oMQ+ibIMr8YZe6o8WW/V8OxusifSV/f9un239ZX8wiTK4
	 f5SW9IVtv3ONillHr0e4c/LNo+kN3RQRppOC1gLVKC4vYodxZVkkJseSwC2pXpxmlr
	 4sPAIyuKQTyyC6jt6dsrSg0sa2brh8OkcQ25zYDT8iXS3cQvemtcnzROOZ19edNWuD
	 mYPxDlQuaSVF0/3Jvaa7s4ll0jokM/VBMyfbDE5vPLYM/Q1nDWM7RMEOu8cvjPBUgI
	 QsSqh+M1UNMcZVY8fw4N0554O/msjfohVjrVDeCE7XEPW+Qr+44aJI2Q9KHquV+vQ2
	 XhEM1CRdPV81Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F59C77B7C
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175065899358.2825.11209618547878233069.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 588d7d7587f2464657d4479a3381b3eee3e1c3f8111fdbb96745b580256095e3
Date: Mon, 23 Jun 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750658993
