Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 396C45672
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 16:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732380954; cv=none; b=U9FC0EaRkdTIdF0JInnfzbEqBgyUpzCoL9flwEK+Z/Dim//6dZFf220n6pDx3s2z+7veHMC0LqgR0v04GAI5ktp1kPLvgrSTDpjw/NXtwnVRldMTvicvp+LEKvoxqVNf7D2/Z3TN7AmLlp5fPGd+1a06PwME+z8yNUe9uaMImz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732380954; c=relaxed/simple;
	bh=N+b/08m0Q7qYSLajuUfNinBREP5FVyLHkc+IPj7y2+0=;
	h=To:Subject:From:Message-Id:Date; b=HOVwzjNraF2A+YcC6jhnRRQDAaqQp515Ho+I4jyJSjSvfG++tQWdMVVznyVR9ULiiiQRNEmlzB9dvd3+B1Jut7yJDPvJjHir4EmUcr4JiAZQzwSLjDQ51BJ22Po4urubJzQJ3vxRgM4CExuM+EPeVF1HFZzqY5eE+0r1+Mlz770=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V0S68jyu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V0S68jyu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7575C4CECD
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 16:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732380953;
	bh=N+b/08m0Q7qYSLajuUfNinBREP5FVyLHkc+IPj7y2+0=;
	h=To:Subject:From:Date:From;
	b=V0S68jyuww4lEmFzGoszoDxls8gq6gYH3c1m5gGRhWPxXzwu8bLNbfp1GcrEbABKl
	 04sBTmNbdV3sfOoKvoMzWdgAvXpoYOFDj8ClRyltKr8DN2BwuubNE7clLdBu8e/mn1
	 TplwXhYW8Xyzg6VG/0CQIBQr5hppwYVQlnahha9oJZtbgSAyVKuDDmb+xbZap//pXc
	 1lws3REgoN4qVi81TdCKYQLg8uPUpn5uz/rAL8BghHVrxR6x7lMg0Sg6psl5FPPV+Q
	 N/FO5Ec4g5z/Nsi25hPF+SqwwVsqAvMFr/6RN3e2eRxFcyJzljhV+0A17JIOS5X1CS
	 C5LtRWd6k6/sQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94476E6ADE3
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 16:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173238095359.7002.16667075139484463696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e20902bfb4e2a4639b37d01d2ed19f8b3b4614ccb6c94d89b38cf3bcd5aeff4
Date: Sat, 23 Nov 2024 16:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732380953
