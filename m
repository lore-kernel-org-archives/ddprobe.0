Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F0962557C
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746473394; cv=none; b=FjBDAkfFwfJmyHcrKOk2YsS6A0dmqt//FMmiYNU7nxCO0ifRTv8ih9OQicfTj99oUSs+Aeti112jnrvTqcwJs+/MK9G98rUgwC2LirYAb/AgyWjuskiC0NhkGmb64JDusf/6zK5qExgXjQFdquoazi7ohtDmcDoHzSCR4Cr/03g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746473394; c=relaxed/simple;
	bh=jd13o3JZZvAxIJYTEz8/Lp5pFKZdcCxP0J3k2+N1MnA=;
	h=To:Subject:From:Message-Id:Date; b=XgA1pxW8BOnZ5Wkf1Re1qJPUuLLzeR1GF1P1D7VB3Gj3iLJU+XoUwAocQr7AcojmIU5omr99LyVwlpaBf+NMJ/ivL/omRvEz/fv3qcWxHpqpXVz5LBBI4ehTQm0t/9dHtXGQ4g9ADz+RA6BsHmnBrkyQ7aFygr9Q51/CjA/uuLQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BoFVGhUv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BoFVGhUv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1983C4CEEE
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746473393;
	bh=jd13o3JZZvAxIJYTEz8/Lp5pFKZdcCxP0J3k2+N1MnA=;
	h=To:Subject:From:Date:From;
	b=BoFVGhUvKbMG3o4AJqwGvB75LQIGmbwn96OfCO9ch+qTCJty0kDhIBnssxqb39Gpe
	 DdS/AORmAl4mkRGgMqgi9APzxjQ0i6fpbvId44+YEuRL5ocAZ4w1BLu710QU20njQK
	 B0gNKhT1cP1lO8pGPDc4ncgT+A8Oj2nLTKTiEipTCrE97HXnb+0pDzGa5v+AltBF1c
	 3t6lriiSgUPKxkuunsb2YIG4TuxvAuPzB7EPYp6EvDBZj6c2hEw01rcEaApi1GRVcp
	 3jBubR6l45ADJWCmLz8OOjvkC5E07dEfmPOjrFoNJ2b9KPpt+yzlYtLIswc9xRax1P
	 Ohc5C0T88Im6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E784C3ABB9
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174647339357.13290.15431624188974287256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e901828ed42423348ffe40d5853e1e5eb69b3ead2f9a787a95ff68747df8c1f
Date: Mon, 05 May 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746473393
