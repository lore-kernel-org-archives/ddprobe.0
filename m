Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39386A48
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750826394; cv=none; b=Qtm2GrHhSc7oItnTfl2tzMj9qrNB/UTWgfu1Ep2D1GzdWTinJ8tIB08DeMjutt47WTRc9/83Cei8j0xOkgMC+zYwuZNfv9R6QTIQqwPzynevcc3Udpmq4mQWu3Oynj242bZ9u7j6fYydyfL7swgw9Jhlxi4NSNHYMekUoI36CQE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750826394; c=relaxed/simple;
	bh=5yC9Ex5QZbPgmMF4U1B9H63zzln3iGzJoe8rhORu0CI=;
	h=To:Subject:From:Message-Id:Date; b=PELCGV9AMF3J+T00XGgawHVGQPatsQ5Kz98qNlgLI7B/3A74JN3vaUEza/RYTkWaR0tOFsAkIDAAaXdVaM90pf11rGo6BUYkLVXJM/r0uMdo4adtHgIOpnVH8/9W6PMdIGTXbs9/DJ2fQQU56x+1MiDMeT3/Nb4lX3Shkses3Ws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AyB2BARp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AyB2BARp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2372C4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750826393;
	bh=5yC9Ex5QZbPgmMF4U1B9H63zzln3iGzJoe8rhORu0CI=;
	h=To:Subject:From:Date:From;
	b=AyB2BARp0IJQkfp9lxOMW1WoPV5UpTdQkHd/HzWv55Jkm5oqVjrFGdUYzXY2iM1Rm
	 2tG0lpPDZrIoronxJ2XWxQQFV2bpFA2Vt8UmNUN5lAJN1pA9ByqiUS2Pz6XXdaEnh9
	 AkFwfUJcnQMqqUkBZ9hNmmNMar6rONqsDh5Mzi9K99DmJBclMgcyAbXMCoIGYjvoQI
	 poCTORuW6WqT62YAWhejqk76wz9hANOZ+LXgROexJR3tooK+oJABks/NdXumhHHpYY
	 z2NMjA2302I7Igc7zRsDKl7AJ9S8yPDagiqJG3ULr2cJpdFas61dy/ihx6oETwt/mO
	 1KeQDNcuvs/zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA88C77B7C
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175082639357.24069.5212369270393234759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 467cedcbef81016c1d9ac34aaf3817ad9d7ce10c7393c4ffd28bd8eecf47a891
Date: Wed, 25 Jun 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750826393
