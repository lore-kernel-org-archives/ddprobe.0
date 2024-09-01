Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2206923A6
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 03:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725162954; cv=none; b=MUqwf9+enT6GzRdokIwb6/GPprCh+KpAB7/uZ4X9GmJGoA2B6VXRn8fiaIT5B+gahiwHcz3f9yVRgfWDqK98Owyu+tfLcX+vYFTsU+KF/Xa4CBdDicGoVp2JrPrYwFvQoTFPd1eX8EiIuMsaeWqOnGlfdNEmNq9WQrUOU0T/90k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725162954; c=relaxed/simple;
	bh=4nccrjt6KTx/o6RigOtay3Mz7vF73BLfyjv8OU0Ed4I=;
	h=To:Subject:From:Message-Id:Date; b=YyQrcpcZeXtkofYdsDl9R7XekGIH2F/TDxmhyQHmjvIXH3qtAPRLbmSlw8ezc+L4FdUiuXS13tbVFHWoNDHmuNGzFq9rG4uLPQqXjSvoouJtUnlpWbcnaP954YJhymVviCsft6kV/zgrVFhZYCd9GUYE3HoThyouuheG/UiltwA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QjJLdmot; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QjJLdmot"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A493CC4CEC3
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 03:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725162953;
	bh=4nccrjt6KTx/o6RigOtay3Mz7vF73BLfyjv8OU0Ed4I=;
	h=To:Subject:From:Date:From;
	b=QjJLdmotXRWjo04fs0Js4IjyeUKtkiGDJl3j5+w20lcQS/Ezo2yngwOS5rQ4EFeBP
	 acPlH5qHM9uGUPKB7MI1xAuzq/ryX3doC5+lAv/bONDJ1+k86smGsrnsInfOt5NdMK
	 WB6EOBQVG+8iuIXEPcIaXHl5eLmBiY1Hz9jSpy9eoGFqh/OmGdOn48O8gqoazXVRiL
	 H0jcgf8q9AxDsUHN9gKUkZA2e3xYIXKe+sE1LNCykNpNn87KLCey9p3cA8iHhyKOq8
	 w2aVMnazACmjH3f+V4cobsipdwIaPc60vX3Zy3AGQrZFplIYdsI6iuvtSWEEf6FLmT
	 z7wCRhm2a0M+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A0FC54FC6
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 03:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172516295358.25359.15181330595932422065.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6999f598ee7193179f626979b82eb3dd6833bc7dbf7139bc55d81ef1e8ecddc6
Date: Sun, 01 Sep 2024 03:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725162953
