Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36C3E2690D4
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749025194; cv=none; b=EjmTaQkEe32P0NxWqnMDAHADpcbVwd7K3Ehk/1O4PuZdxvqNG/aa8B5LOCfmKn6QL4nG6sM0iRkOtZwxVNnor/oeZhN9oe987dafNn9BUO0crENMAV2gpVHNG5AZGX+YZnHsvqjmukdb8sEJQY4y4A1LF/XXjJ4ME3URvmzGbkI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749025194; c=relaxed/simple;
	bh=NMvDci1K0XgiGaq7e91S2aXemQDUuAIMnqSzvdF4jNU=;
	h=To:Subject:From:Message-Id:Date; b=P1NmgqGs69kp0o9Cx3uZe+3d3TdfvL3sp4Z6DGNgnNJNusZkucXRID8ahh9xPNO30SluyWZDxulLwc5WhwS9mxOwB1QZDxY6ktVZZOauCv3IuALbPwiqta+4ByomUEPKH1GXk71Ai1qshodTrC8YBW6sGqaUV9rhVmjakwAwEd4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OS5g7km2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OS5g7km2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A920EC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749025193;
	bh=NMvDci1K0XgiGaq7e91S2aXemQDUuAIMnqSzvdF4jNU=;
	h=To:Subject:From:Date:From;
	b=OS5g7km2p8iH2fIddS4sXmpXUipDp7D6RCIA4Gs57V1xAuZjJ74CuexuGRRN7qlMk
	 h2BfULdDxmUf2CN6HFVRFmfeNBRsm+s/QHO9sW0W4Sw4B/qs62sD8gv3yTOCqa2fc+
	 VCpm4f+Ukm5+oYrn3Zxa1ix1WVLRaCg6Oa5thKtnClgIYxYs32I63YyoSZQQTOOfZY
	 54wkSWIKb1FYIjHHFMvdOuVTDY9r4O/li22E38tvEYo9ziM8BMZIxFOfIoz9oLqzTG
	 COdCV+qSEUJXoAcol9iS957n58GFXWP0PPUrJlTPFgwUdwB7AGTRwc7J08ibvINo3V
	 DueLReqyvsupQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 935D4C5B543
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174902519359.21386.11398672790888725265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7469d243302fbbafa69cb4b68eedb8160070da20868e443ec4205a2b3644d4fb
Date: Wed, 04 Jun 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749025193
