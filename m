Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 267E924676B
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755989995; cv=none; b=T4wWn1AzwEAFk1P2XKWzaxtEddkh0gtnKHDD57PsNs8SLuJWuTOt25gB9XMulQ0gTYorX1FYCMbYth2Xmu06FoZICLA6Y3mtWTFCKyTys4D1Md+69l5RdynzXPLfUSN3qqT2I7ihCK2PHczgU/Ppv1D8y1CAydw99BkrfXUO0ig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755989995; c=relaxed/simple;
	bh=hB4+Tahb8CE6A27SMrU0xpOH650aKFdBtV65Hbc1dfE=;
	h=To:Subject:From:Message-Id:Date; b=Dy+elcBK1KujQ1V9oBMviKnd5tMsLVF2ltbcQu6DQvZm7vfTvwOmrgDabOSGo4jotZ2DbI4Cu9pb1g0XEYFcGU+TPsGLabdD1OZSsCW9nnIWgY5SOom2MP/5tKNTfabhuLKaHR/cVEx+JqGwe80oBca4BE1oGOEotW8TniFWrGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kzffh/he; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kzffh/he"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3210C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755989993;
	bh=hB4+Tahb8CE6A27SMrU0xpOH650aKFdBtV65Hbc1dfE=;
	h=To:Subject:From:Date:From;
	b=kzffh/heDnpgOW0kNfJ3BQlUvh0YoKbYdhjo7eUVunIbUpI6JArJj6AxGxwDr2FWn
	 8dKcMsI9yYYmfvvtMoVphe44uxqjKqnqOrALEnbPVUQoGj8xUYdfJZEzPUbBRFqihi
	 lkLbPbzDJtc6E82DwMlbeCijkOMb247sYInPhxg9tR8G3bLj8X7qrTIs/Jr9kBFHCm
	 pLdimi/AeNY2KuHzE/qTk8BGb8eWfA5fIf2tpUQ5sjfZBr2OJPVySptmdKedjDrHkf
	 Uo3VaDz/i6kfCJFukgIpth8SoKKc7OgEKKCIS7lkvngbJXNIid0mm93Xae89pihOIO
	 cKcSAu0ZoNHkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A10CA0EE4
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175598999357.14727.15566981562988023632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31aec34e3a43380a895a55f7af41c470af8648b113c1c0caa54b8bd2696f918d
Date: Sat, 23 Aug 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755989993
