Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A4A3222584
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762394394; cv=none; b=WB7tGGHa6vDi/eC+oeMOu0spPM+7tSby6k1UUzh6rPveRg3fTM+Ak7MDol38g+2TUcwkEzDnzagX/rx7SEVLW/aoP/B4th5ptkfExwgdNGFwIo9vYuzV3/hezZeof1wIwj5zrkjbAogHhJMYRAMqwT25VJcKEBnYtVqwbnMjqcA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762394394; c=relaxed/simple;
	bh=psvDNdntzgIdHCOdiYy53xJl5LIkO3A7uueaYFIA7io=;
	h=To:Subject:From:Message-Id:Date; b=W13iUkKYBGJKwU7KOFqLyuC1Ahhb0oTA0roVs9ZD3hro5SUaXvHh6tykpJXKwaJISsqnLKOm8D6V7IvQVXy/i6v3ttUQqVFLgdQnnTXH/XN5ClwLejDuk/yEyomKEybxu57TbYFoUC1qYvTOBjeu9xDGn+cERzAo8PNqBVjD3Zw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GA/5y7da; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GA/5y7da"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC67FC4CEF5
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762394393;
	bh=psvDNdntzgIdHCOdiYy53xJl5LIkO3A7uueaYFIA7io=;
	h=To:Subject:From:Date:From;
	b=GA/5y7darJVtuE9HqeCpRqXmol32EQlM48tKzDeJyOJI3vWau8r8/rBpuK7HKd9WH
	 UIi2MZmNyyigFOp6xbYF9yPJbXo71S9dxKfRRoL8cX/opxdAAFSkooaRVpirF92RUU
	 /hciOsFLOsoksbhSbUXm6Z7/M8AMDwuTh+3MWovBIc764N4je0gvw4nf96nv9Np+a0
	 WUHPg1evFSW2uzk/HlquRRreA2GkzVdwOBlyueAFd0DXVINirnZETSJng/Id4bp0zq
	 xSfr9AETGnda/x/i58ok65TTo+P245kSAaWHu/GMjsEnjI7N8jF3b3IARFJTOSaj8N
	 GfSEV8OsTCcVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0856CCF9F8
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176239439362.20903.10161944280557286222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95220298756be0e71d2df7c2ea16d1d1b20b1fb42a22b36aa37c3831c5a41c2d
Date: Thu, 06 Nov 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762394393
