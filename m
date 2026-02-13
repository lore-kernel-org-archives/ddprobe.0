Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C54F29BDBD
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 07:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770967494; cv=none; b=WXF5yKVVJF+T/lSUCSS2LqXljZnzr+IaAy4Q6xD9E7i2SMMh313SoCHEyWsFaqPMb3ObdMybroYczFAgiO60e31/2L3SRB5dYDueudQgeIudDNbTym1e8c0u5RjOwU9fkd5EeKbnDvBnnwWRRidcKWvARhENIgdOnudzNqUJqyo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770967494; c=relaxed/simple;
	bh=1yOD0JU+vDTksUrN6HPjg4UoNlhBlrDbOf3YjGEqTBE=;
	h=To:Subject:From:Message-Id:Date; b=lB1DGYROpxDakyhvlodJHH3+3OTpo2Gvr3mk8oF46yZ6KAIfiiqIPIa8puglmyFYoW98hQhTmrooUR52ECJViT9rRv2Bpp25JcJVOFhm/gbjTvxhPEc5zHjvIJnbco2jKPey7bplHJ7x5s5+zSmc07FiHIMxpUj3/0lVHj8eNDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BCqaElfj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BCqaElfj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3BBCC116C6
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 07:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770967493;
	bh=1yOD0JU+vDTksUrN6HPjg4UoNlhBlrDbOf3YjGEqTBE=;
	h=To:Subject:From:Date:From;
	b=BCqaElfjr8qaLiGLGBvDAKEXBnkS5HeF3aSBApSLm06YaVfnyEAZrfiAycaCgBfFH
	 5e8GPBcs2AAV9JbME/1aegbC5WzAUhCe9A5YLfkmfPUMS6OvWZjvQzTSRpOQcuQqQ7
	 D/7XZSfIyE8w5gxwciq3SzdeJxvF34RTs7ucGiefuki5OmibQU5IwgkY1Ire8dUoRU
	 B5TWpgJ09ejwmzuJK/eesDnePR0MlbnmT3YJ0HnxC946P5TQnV+bYMLCTk2C2XoeQg
	 0hPUl5g/hAtATzkwgQJ0uVs3B2HQou85yp+P4im0nlOb0Dxf6IjacKa8Le1bU6pguZ
	 XFRuR4uee6ElA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BB9EEF48DC
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 07:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177096749362.13296.10160037586017463310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9569a71295306d9f095fe7ee7f7c1bcea7d133a4ae2c2acca9a7f6294113e881
Date: Fri, 13 Feb 2026 07:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770967493
