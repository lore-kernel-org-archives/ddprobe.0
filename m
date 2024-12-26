Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49A831494AD
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 06:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735194354; cv=none; b=lmHuo5XdYOWR7ZARj2UZRPnIbZFn65UhYW4GfoluG2FPP8sZSxRbegdA4+eSCks+BN0iLPxYY/MZ56m3J6HEsL7CqR71z7rpKvLAjxVNRibj0ZBaY2O/OwgmbnH/F8e8qRn8QOMhnT7nspLzpYUl1MHXToj/GNi3hxBFbAvRBtY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735194354; c=relaxed/simple;
	bh=E9a1tzR+WZ0wwfOOGqxrEaw2XzslusOxHVRcXbCRzJo=;
	h=To:Subject:From:Message-Id:Date; b=uV7dJ7b20gQhvdDzB4blKQimAXhb4P6DWNWlekiNJKHHhetdSlUDSoLv131srCvDTaAQAojd01frGS3b2ohn4Y2uKSm7qi9eRMafdCsIGZBIZ+36ML4P78V+MSxDMUtceT6htHwmbF++W2ty+Fkdzv4WmA8nUe72Of26YtOf8Ww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SyirLKGF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SyirLKGF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B12C0C4CED1
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 06:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735194353;
	bh=E9a1tzR+WZ0wwfOOGqxrEaw2XzslusOxHVRcXbCRzJo=;
	h=To:Subject:From:Date:From;
	b=SyirLKGF9b406DWgvDHZU7eI4r6hFBeQ46HuhW1HIOWIWt8hsXsqfr62cZDDgW8NW
	 Dm+ev0jhwvVfTQ1zWRQZQYuo/Iq7fQ+AMAeWSLUEz3stJsazbDyzcaI2b7C/KrRGkk
	 cWLiQZR2QhO9cVxpusxZ30fvnXtqALPpPNX1MmkK3+G4wS0sqxg2Ymr50IDGIZc6U1
	 wzS9lWNef0UjASxMz3ZfSDbxRww5e0ScydWXIB8EcJtpVs3ROEkQsktxOTqNRs9hFl
	 645ExrQsyk7fMSh7MfQda5m6zssBsvdFK9tjAMj8TqwQjH7J+YUq6ID/Mus1Fcx9c7
	 VzF3M8quw0AGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99854E77188
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 06:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173519435358.31309.17153187267337338619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cd2e15ea54f0df725c1b2aaecbac034266d6179aaf7616dc698865d6a6ec92a
Date: Thu, 26 Dec 2024 06:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735194353
