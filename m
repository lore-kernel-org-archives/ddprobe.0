Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2671123D7F7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758425394; cv=none; b=qlzm0eZ+WpSa7OKxv+NQ11i5vwdB7EKlSQIPfXmBDpkdIDuK9TzlS7Ga3mUXE2cMP5S/BAcrM18yTilLhNPhjY04srlagDAv1DVdWRqP0a2zdQUhNrATeFsi/BhvIIZcUlGRu0AbTLlbQTa9QWId+ZQ/bBEbdPCnDIbCfcvziUc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758425394; c=relaxed/simple;
	bh=4dcTTt39u9zu1FRIsPBCAORVBDFiOzb5KDaQpW9Srso=;
	h=To:Subject:From:Message-Id:Date; b=rujjTE9cQdJRrTh5fUDfcZOhQjBnMdgbsH/0lYfpOHU7p78y6E0HbYlOBhzwIiGUTzqCOMoemEnkjDulT8A/cKYwdzUlbrodQbYlv202mWcyE+qixoTKo96fYd2AIj6YTD0hoEB2W9xRX7oo/hRlv/T0Cd1zzvFQrcAGgY5823M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P331HXOd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P331HXOd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7408C113CF
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758425393;
	bh=4dcTTt39u9zu1FRIsPBCAORVBDFiOzb5KDaQpW9Srso=;
	h=To:Subject:From:Date:From;
	b=P331HXOdmBiCazSilOwbOytviX9JE2dHqfKfQ19wqQFzWBrExnvFtV96xsZCFmkz9
	 9nUWqcgzyfjfFXzaECtTAILFZ+er57obiv5hLSBfZDrm15hSl+GIBnk3pm88jbbb53
	 crKoF9PdVDWcHx4RgGRQKAX2kLFCJgWMi237vQQO9QRZy2zBhpX1UUZqgsw/lOkBYY
	 68+9tW7kE0M7V6MElrrW2f27IfCUwIqiRM5ukC6BuyGcfUQ4lDiKzErhwEhrBsx6wF
	 b5LkYp636wMfys/H52omQgoM7sc7tM807F2mqFJ8ZIZAqBTorY28zFmD5crwn0F2zS
	 BUIQfnGkgyKkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94ECACAC5A7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175842539357.1237.14230363086406390183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd180a06549be14fb25a8f6e21dedc820deb62249a475b14ed50ce33d9a6f3a2
Date: Sun, 21 Sep 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758425393
