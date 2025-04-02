Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 309B3235BE2
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743596394; cv=none; b=PsIiDH+WVRGSxwztFCKMejOyq/1XSMxzjBKaxW5fiPmdjZt0LvxW3evMy1KmStAyvG5GMa5Y/pZg0CX/tpU1hLpi00Uwgqighn2ZnaMCOoU8U7qFogMRmiTbQDygRF94ndicvmObHlnFJHW5U2BETjyxxh0IYcGLU/1QQ7a6kfw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743596394; c=relaxed/simple;
	bh=3/sOu66/4XIuhH+1xp8ILJCYaGK13jacCsXglIEevBE=;
	h=To:Subject:From:Message-Id:Date; b=gLAnacq8EJl2A7xOVoBRlxF5bGyuKB6WRrKebxuhHDEDXPjbM69hRocOMhbYH1xW5q6kjk55fHdh7T5stsrxDrquzEf0yhmiT8uTGjq5ufyiSlV8hLm5e5qz0OnOQOhjxSJ202DVG0PmWI5FWgWRFIT/CnUsOnR41gjxweDpSMk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TurV7sZI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TurV7sZI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB525C4CEE9
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743596393;
	bh=3/sOu66/4XIuhH+1xp8ILJCYaGK13jacCsXglIEevBE=;
	h=To:Subject:From:Date:From;
	b=TurV7sZI8q3KQxqrnC91EQcam2Kb8itXHNYqF86InQ2TS7Dd1wzZ/5HxtuPHv2Ayn
	 ZxZDp5Kas4CyE/dqykE3fCiXWmmrdUb8fcV3IblsDUThVMVWsImSzK+W6PnJbmKiQb
	 6m2euG2Iro+lay8n4Gdml3pLDc/FyATS657zYryoyFlphhyOby1wT5fTD1gxYB/dam
	 8y6INW1++5anM2LHO/xaQUpYAwu6ci7qzKvqTVlwcQBJWjdwMfv2aoGxfcaPTvWnVR
	 5RsflviXkgHbSO7JE2UKWDZp65toN2ou9KkQ7QSlRNbPlGj2yw7AHRwcKfMVx22So+
	 3vnBcZcjOiMRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95779C28B20
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174359639360.29999.7850967921366507618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c02cc4254a9e59b01dad2317993c629b6e6c7d80b0c4f60d4ca1ac8328a3fbe0
Date: Wed, 02 Apr 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743596393
