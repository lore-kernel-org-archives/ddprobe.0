Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 155EE17A2E6
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756728594; cv=none; b=QZVEuCjFGtoFpEFpKo/bUE3qhv8wBIJQNA8iiik4BDuYaHVSxs9jFCbnNTWkCz8nlnPPo2W7hIxbRK3mjy0Ze8KIlePMG5+XK9wrMZfZAz+EX+PHzNeW3HU/E26z5Rwan4yPwKN9qToZJ57HfwmUSIfp8NJ27Ltprc6/5RZK4Wk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756728594; c=relaxed/simple;
	bh=QNRxQbFOLAp7ZMPN4Sb4M7/02NJyjYgxP6CH5qUvfFk=;
	h=To:Subject:From:Message-Id:Date; b=kE5Rl2U+UbfnTao1HN/Hey2Wq01U2nZkuzYNO7JJf8uKg/JZlNQkQa0DwltgPZisb09M0irOwnOta4jl2MByDpzelSuqkgrrjplcD0805rFtmgCJMwOWvrBqWoGvX6UT1U843fUz+3bL+8fa+iEadQl60yZJ6AhG8huI7Tl6EXY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TUU1PYzA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TUU1PYzA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A33C5C4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756728593;
	bh=QNRxQbFOLAp7ZMPN4Sb4M7/02NJyjYgxP6CH5qUvfFk=;
	h=To:Subject:From:Date:From;
	b=TUU1PYzAvuFIg9m09qMTdNu30YQnfZZlQIyNXbhawVZaBhPezrXh8YeZ4Q0BML4y3
	 xp3fNzwrRGcKpXJwFORGsIyHJ7C2tKJQncaiu210HOTvVmOTU1d2cbXcGObxNCTwlK
	 KeotTH7xN/lQ34t3PydhjNpueBylIPHy6QNmLJ0dAyctzGg8hTbkPoEg+z4r9xcBXs
	 k8EoEUTlrojM3jF0z3fVd7oyehUMVbu9kn+Ojf2jnkzpyrNRdHrOGKC/gNRCrn/fkD
	 feKub11XiURZZam1mfkDLUufsJidRmqmsp0CkWAhLsDSudYFFcy/aFE7NC59JB4X6D
	 B8XlwgGNJ4/7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8D3CA0FFD
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175672859357.9931.15995674628722935367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c5401eb318e09a435727ee6218e6cc8f282656b64f6c3682360f48c96c654aa
Date: Mon, 01 Sep 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756728593
