Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F063146A97
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 09:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723107954; cv=none; b=fpxK+IHcW5MwiM9VdBVBnYwEA0gTkEGpRATr3IqpaBGdzgd5rqkALCuh4k1UtrTxeTp+1HG6dCM+FhUds7HZ8HZWSzle+f9B5TImvEyVd2V4UhDcx082r90BGqXKcV4q8pChDYEOMnZHWemC0kMx4UsQhdpxcdEaWsgGQsOekB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723107954; c=relaxed/simple;
	bh=hGmHPG6pPMMkBf6lH/9vV2UW0jZmw7NHyFqjlVgr26c=;
	h=To:Subject:From:Message-Id:Date; b=ddDCS/c2/DWqSYokzNcEUzZJqUyZylQnco1k3PWJmZvdQqMriadlgy4hvEGrk3GUukkSsnrwuwEqg9hwlBdf22SYa5ppYKje08NuSNkKMadMXbWfLJ6b37rz4dDl0E+OGRMTKVuXn6yrSpdJ6y+Tx20r63jkeUblDCIi0fmZyU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wzmpsttt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wzmpsttt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF998C32782
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 09:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723107953;
	bh=hGmHPG6pPMMkBf6lH/9vV2UW0jZmw7NHyFqjlVgr26c=;
	h=To:Subject:From:Date:From;
	b=Wzmpstttw7FACHx4vEGaReFiYvJ3oT9vSdcn3F1gPDT68olUW26I0Te7Je30GCSCw
	 +jVurVimFiAPnuvhIv966EN/DQo0a3cIcfpyQF4oLLJz1/k+I6wyGXaw+rJ4eGZraf
	 HLEnJB9laspfxK25I8tAu0az+ofIN4Tql5NlJFOdSkYsgOqDY/vhFZN0p/ylDKcmiv
	 L5J47LxJFIztwGFr7ox6fkzqZhbtG1RN6cONBQDBE0fLCRfjM3L0yU0K6nW73hnwLT
	 0JapEnsVC3FHBoqBw0lPOk2UDdwjWQ2F+GBKYXRuS3LLSuNof67Dsz4ccuGA9JZ4CY
	 T2JEenRFodfRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7A9BC52D71
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 09:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172310795367.30679.11804084068368015322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9a0ce54e3ff9ec8d6353429b256205d6e884eb59a8331f505e82ac4d83b1cef
Date: Thu, 08 Aug 2024 09:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723107953
