Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 353B92E11D0
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749830994; cv=none; b=RQO2vp4NMsjvnmJRbiAaX3XFSO7oAgof1D9Uoe7Mbz41gikcZ4ZS+KOA/S/cX6pSJLYDSDD7nbOHV9+W9t6z+ACQM4mpO0WWFVZg4twcEeTmbaWvyM1oOfi14TyIVyM1oSuRkz/EKhbggRxca+BjBFP23Wn7PN1KRXuVa4tIa2E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749830994; c=relaxed/simple;
	bh=YKiZvqljoyJuJWwpg38ToUm0T6SM+s4fA/rgvW/7PIY=;
	h=To:Subject:From:Message-Id:Date; b=rqCPxu8Kd+WjGlnX1gQI2K5BUDii9k1a7DWj8ZFL6HC1+NxZQxtHlcTnrFSDI1zZqFxIjUmX0MMu/74USBR+eijN0R4RSjcUtG2lupRA/uDseDErHYF61cg4yhrgGGfRWuyZH3THPLLWHOL3eHpXaejTqMNULqFe1fgCF6CCkNg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o1eu87TC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o1eu87TC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C5BC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749830993;
	bh=YKiZvqljoyJuJWwpg38ToUm0T6SM+s4fA/rgvW/7PIY=;
	h=To:Subject:From:Date:From;
	b=o1eu87TCFKeFaxXST7H+qTlclApRIJDjNpNwBcI+Kh0r5KX9HAZutJJfB+48sKW73
	 gzq1uRp7d5ojTOJeB1M/5ctgp8n1OrrjKl615Z1XeNsAlcul+ERmfAA98q8NkQMtVf
	 vum4HIX1SiZMGe7qBNl6S1Zene4lFuEhPvKiQI0s19rsCTCG/POtn0JX0+Nel6cUKO
	 sF+DeR/YUzmFs4idWMqS+UG4XObp0OxYACD4A/97LLe9Cv33A4tfnUIkf6WUcJAwow
	 HAyPcMSQRqR91BdUkOY6QWdldovUmv9QBIVhWTnwxpl0YG6VZbAoF/UP2iwYrXXatP
	 j/hWM+jlZ5iHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C10C71136
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174983099359.20248.5848652810848885430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe7231873455b7367e08acea3e99ac60935e59881821a821d2fcd11cc0fc7f9d
Date: Fri, 13 Jun 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749830993
