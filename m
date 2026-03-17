Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07A741A4F2F
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 03:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773716694; cv=none; b=JnqeaxsdC5TissQkdUIIvvEn3a5+ZZ1H6rX4/JDSri99sogbbymRnV6MRYFIET+DmaoKqK/spYl8jG9xyXK8R5R8P/iUM2drFgkfer8+1qr2EJI8/bUISmha9oMsBb14xIWKmV8AiLWpPCZojSq2FnVRJ/1kgtkqmZ1pky1N048=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773716694; c=relaxed/simple;
	bh=AhABco5ruFvWNsgUyHpFFumCWkxJB9ACbfTgAzmy1S8=;
	h=To:Subject:From:Message-Id:Date; b=poPXNEVIurTvXy3mzvi2wrYYpXWFrU4/NDlKiT6tzeX+3W03SWqGCjCQArAxOw4O/J+noit/0CVimrBXZpz1igKZ9hq78Uw0+FifMHzCtvncGWim5a3DvZjgfu8+eKRLuCYL7x2/SrAD4/BB4k7uFKig9MD/dJla953qNamQLUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZJz8T6N2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZJz8T6N2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A38C2BC87
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 03:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773716693;
	bh=AhABco5ruFvWNsgUyHpFFumCWkxJB9ACbfTgAzmy1S8=;
	h=To:Subject:From:Date:From;
	b=ZJz8T6N2+75fcI23z4peLSwoMzYDcdOhSW+5bhzItq+mzupiVQdJWyuMSPp40eZZ0
	 VP7jkwY4DynpckC871t+wnpAXJ5+O13ekdQqJZ2gW0/VOTN3rsNX1UGgzAbBD6kaTN
	 GUDde9BUiVX9UR+nUxTGcVZoCELpS4zOxhtpbnTHZ5sH7HYtCM4IwMbmgXrOMN4hCq
	 CfIOM+s8rnLJIdFye+6DOOLQ7cWEcCkSrfmV8nHDgWAgFdis8JAzUXvwxBCN/NZgj+
	 oAb6rjMzk58tdXq/1rmeporHSNnhCwzQPh3tLvIX28hnd2IgvaSABR62zvYU17a8mV
	 DORQr2oK6dQQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F27FB5EA8
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 03:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177371669359.25759.16517556090851438532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcc8ffdf6eb511e7f0508ba41a3c98db46abb3c931e29fbda003085bfb74c466
Date: Tue, 17 Mar 2026 03:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773716693
