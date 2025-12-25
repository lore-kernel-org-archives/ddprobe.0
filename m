Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9477F4F1
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 18:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766687033; cv=none; b=tqvDPJXRL29f87MrquLhgkXdQlI8cDyUP560n4t+G4GaXepwTixaWArzG81C/o0unQrokHo4nrXnjHoahoQ9bkuQg8ef7ZnXJy6v21E7y2TU9k0SOgGE8ZzUVoNYGtTP3KXFrF8XbCey+gwkgPMciLfW00hf+cQcRaIhircvH54=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766687033; c=relaxed/simple;
	bh=OA5RHZqBW/4pPpMaHztKArEEo3rYeHTV2U3p8m8nTEw=;
	h=To:Subject:From:Message-Id:Date; b=goA5YZfEP6hQ6jXFgVIpR+DLpY1R3ngb7Z2eb6j7U7iVWdVK7NJGVRq3HG/KlRDK+/3eTaG9grxHxgQSMxA/mgdEzhw8E+gw9uA5QCQhO1uajiEsHjkmiSEObkGYyaLSlyzmDpNidOA1xJb00ZMAdJaYFbejSiKamj7sc58SPzo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FTtppCnW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FTtppCnW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D96C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 18:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766687033;
	bh=OA5RHZqBW/4pPpMaHztKArEEo3rYeHTV2U3p8m8nTEw=;
	h=To:Subject:From:Date:From;
	b=FTtppCnWDVgj6+CB5GloDm8AcOBCDaWE0sgfAKI2Y36xJwiNfIWk9TF4cFj+XLy85
	 RrdaZ+2TKe/qLO08fu6OYsPjXvv9HDWTuWMC9ldxUATA6kkmfAqXUn7g40qTimEdD/
	 XYTOUsVWSP1M/HRRl/mb2RGb/xSb/QW3qwdnmr2QskUNDycK6uOMn7tys2sEqVxc8M
	 /NJfo39oPLt6RZj9PXgn6cYsVO0l9dH2i3TsDIi0Ib+bnuX2y7QtdcB8zPwhhfP6AM
	 AzeqtyBLshWGS9pANHr7sVYg7c3B3kQjld5it5jo9TU716CRzd2OYGSPxUREUWCRg/
	 FVgBLHGt8vKXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E09E7AD62
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 18:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176668703358.7932.12714953861907228886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce9aa4086c5535acde03fa4c5c66e4766083358387fb110e1d0a4b541e5c59ad
Date: Thu, 25 Dec 2025 18:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766687033
