Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DD8A17DFE7
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754086194; cv=none; b=inDNZ0ir6eDm0PTzsi7IXS+X8228B8E9pY1cVojRZvhsIOQ5Ex0fjdenXHTUrauQq7hIS7iHgVdWoruCzd9datfoVxo0ePHdnEhFuf1L+m0kMYz99jUJD4Xofgy+1TvBmZX9hTe3gvZ+h5j8Lm7L2h+ei26rK5LLtd6JhZl5aBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754086194; c=relaxed/simple;
	bh=vBR0wAQVWt+nXTBaggk9IieuWqEmKD3XOA18pDKFCCA=;
	h=To:Subject:From:Message-Id:Date; b=KIkeF7yuC2ai9GOE30t85G9UpOTwMB7ZBwNf5UMHbI4aIJFN3UfWQSKIqdLxUeNSnc/4mq+XEfrPj4D6/OB1D5jbv7umgMnb9tsKfnVJfDFNAEPgtk4jk3LsTh2fhdOIesJpkkRJtyHO/KOnZ81/YaQEHydeK+c7+p28vzbBzJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eM8uXcL4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eM8uXcL4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A764BC4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754086193;
	bh=vBR0wAQVWt+nXTBaggk9IieuWqEmKD3XOA18pDKFCCA=;
	h=To:Subject:From:Date:From;
	b=eM8uXcL4ZUufk7W/OnjzCnc0aS7Q0c4BKkcwLBBaNKe2XwxMnYqqBbXuSdfI25OCk
	 K+7v7oHtU2OrineqR+4sFcs4mWlSv/pxN5xrfRBALc7/yp7p5eCL7OJlsWJtBwoCtY
	 CbgBuZfYGqblp4gh3BiAoOLBe5eWH7rdoi0ZoaYyKC+NlOcZ/RZG0gWS22n9Vksbm8
	 tBJN6NOW2T/V4nlhQxnMbcofta544RK47K3FptmELls12OmkWqPL1IxoiPzDHEgevK
	 Zkv+ap6ceGvOoI/rkZtmnicnyvnScQ3O3satHYJFay4yxNxQ2fhjVti0NXlnr/irXe
	 QnG9GJ5TSL08w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E43C87FCB
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175408619358.8659.5080846645801197449.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07511aff49e08935174f7bd1becc46d8c18748ed80effa4a35882353dc016c7e
Date: Fri, 01 Aug 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754086193
