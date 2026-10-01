Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB77941D12B
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 03:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790826034; cv=none; b=d8Ub2wsQLVEnUMaTiQmMDtoha9R9j1qnCys9F+n5ZdajvKs0S/H+glNcThyQqrZNwInaqwQg20AWi28wmOAN4/J2EoWWsdRbu/AMGUszJ7Ph4ZwalRMFY65VF0sBOLIAa/eb2xCkUol6e/sF600DT5M9giUuLRn2BnG+1ijzMVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790826034; c=relaxed/simple;
	bh=34DxFowjC0VNUZXtWN/pjXt8mOyT0yEdqad19Wv+/XY=;
	h=To:Subject:From:Message-Id:Date; b=Yc34zYwDnoYZ0Eywho89EEGoNbvOUOvjKrnLjbw/+HKa9uHaSYF+JviUJksHfGnImYBci55ZgO4p1hNNV89/m/jqNVrMLBh+nMq4/quMow8JHzRQBBaQgVXxQVk8siHjpwz7qR7SBIRsss/u/uiBu5dPOzsmu/GPMxuX8QrYzvI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IWzRTkWx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IWzRTkWx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6FFEC4AF0B
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 03:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790826033;
	bh=34DxFowjC0VNUZXtWN/pjXt8mOyT0yEdqad19Wv+/XY=;
	h=To:Subject:From:Date:From;
	b=IWzRTkWxUoCUmbpjP80vP4TgN5oSEhzn73W3WAKyif2sjUfeBtUhZs/Hd7cMRdXRQ
	 wRMLdpwPpte3Z2Qky8eF+qTk9FhaCIbiaS7De5C6zH3iRJYwkEQFzoR1uvmp1P93Jm
	 C+ySeFjnahLqKMV6JRVk8KBlbq5uRRddT7GtFe3YpDs97zDVUsdPDZmrQxiva/IfHj
	 DzTaX6wvZTVRuci5zBjZlhhSkWksWmTKaSFGwuGB1Ddr1TONtd8VI7skhAdBhfyebp
	 9onM/1kUllx8SdTZ61GHJLus3DJqP6UrKgNnbFcNQDTm/esin/3IIA7BSz/KaEIdoc
	 zezFef5VgoUJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B05DECA5FC4
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 03:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179082603368.29195.13847398987748561724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 099772e5ba3487cfc0f4f36b61e0ef4829d790e0096cf95fd7dfc54373b9a086
Date: Thu, 01 Oct 2026 03:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790826033
