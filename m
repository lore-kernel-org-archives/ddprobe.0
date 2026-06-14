Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2ECB26F2AF
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 00:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781397994; cv=none; b=hLTWgZFQacZ2GKo8SZMKuu1oi6x5D2SDB0O/Neij7vIsApX22iP/IoNwCPAzNNMtBSuk+ZofQAAjQlTkWamJzsg3SgMycPgB8+/BOQ1y4IzrxM3sCa/zXjl6FKcgs0bbz/Au9X5EciPogKl/OqISFOXl/q8tubnq7RUPZTcuxFA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781397994; c=relaxed/simple;
	bh=ghc42xkoIPAKos94ySPVjYPVNE21jQB/cwiO1aocNRk=;
	h=To:Subject:From:Message-Id:Date; b=EdC+H5bE+U4CKtnqFvv9/ADU8OGsHiB0NLFpw4SeAEDOk4ttHcp4B66i76wWwJq95iZU+UradyToQhvx8ORL3tLJ0nmQfqM0d8mWybkTyLjkELNkplpLWF0IUKWD+18SiiIpN57byUS78KIFtibU3kN1Q2dyJ/SIof3PHu/VSC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hYYxxRpz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hYYxxRpz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3460C19425
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 00:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781397993;
	bh=ghc42xkoIPAKos94ySPVjYPVNE21jQB/cwiO1aocNRk=;
	h=To:Subject:From:Date:From;
	b=hYYxxRpz3NWA6vpTpcwSFhZPVTM1uqnlHv+M9jplNR3k+OZbi8jPVFRN5m07kavk9
	 UgN1T/62nW9ZFMiwFIjPvFE6AnG9oYgydYivaVl+ER3h5VVB/43eQl7JT6yQisyw8i
	 dml4Bbze6/g5A5TtA60DKZdPPPmzpFr2odNDIMX/WQrr3QkBQUnKNwmPqCxaXpTRyi
	 5da4zdZOEv21jbSI9Naw5anCcNc3vQoplhfiBs1FwaHnz8+Oh6wCP6Ry5IQq7XSG70
	 16fGfdYKNCwkA3s72SDw21TL2B+q2VpzpMsWKvC2LuZXL2Eq4wNiWd2OcC+DwqEY8u
	 gd547d5nif/VQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC654CD98CF
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 00:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178139799367.30317.17687920575471497514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc928efb6a5fa3fe5a7692a7cf84017feb37b7f339eaec7e9d43491daab5129a
Date: Sun, 14 Jun 2026 00:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781397993
