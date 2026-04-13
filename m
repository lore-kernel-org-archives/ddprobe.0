Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A7B43932C0
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 07:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776065254; cv=none; b=aWOCLhZyP8oFEHQ5LZodo2WP15JyzComfXeu6V6/T9iZYgzpljXs6Az1Y5To4iI5sdQJNcePZkGYctBD3ijPY0N39DIow32xbNSHbsWxObyGOddFaGI2WB06XyADztNqlj87hctJcv099SK4P9L72eY+G9JmblzrOAHDOIUTKwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776065254; c=relaxed/simple;
	bh=HnAqXfB9ArGDaxomGo1jCtmwiAjwyWyKbzJ0Tf9jICU=;
	h=To:Subject:From:Message-Id:Date; b=gqoiwVR1fEE7SFGy8Ft8anCxOjY5Cyy/uf9DdmdlSX1EWi9D6TMh83KGAQjQJ8mWvmIjFAtIDW11VXVq2S5cYiaqfMIzNmYA+yYSQvBzLC+PGFH65GoBN0YZiqUYYPEMUl7CdNzuqMpSZNFGYMWsjOumyucRtvHPpSWrXAnuiIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oWNxMZ+w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oWNxMZ+w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B98CCC116C6
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 07:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776065253;
	bh=HnAqXfB9ArGDaxomGo1jCtmwiAjwyWyKbzJ0Tf9jICU=;
	h=To:Subject:From:Date:From;
	b=oWNxMZ+wI+/OAXyd1OgMhvBX6dWBV6SiM5Def0pg7GNzcGnTNiChPf+la3MVDgh+B
	 IY2Sx3MVmgI4rZ0UvVJh4FQczGWzBqN7XXgdmBsXk5v/57rQ4WoL3F9jck4gZjzfMG
	 c562wjYKC5igTUKjd4V+7ja4fFDZ8OzwBvoOGfcQzhjA5hVlmTTKIhaaJnWn0m9HY4
	 gNUCArFBKId/k8JWfP9UVEftHToPoHfTrl4Ou0r8VIeEK6iYSOMZW0LBS3Lzpl+dST
	 M5BhF8NHqFqx60y0mlxK4/1pt+j44DhxNT/PlBa+U/9TAgIer0yuV/KEc/MUesm5vk
	 G84lVTrEEhguw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABB3CEBFD0A
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 07:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177606525369.19036.6818549971796069805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52d4b87e27717b9028503f9f99c79897d69cba53d340e39193b4fb38142e8a2d
Date: Mon, 13 Apr 2026 07:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776065253
