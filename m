Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 103D63234
	for <ddprobe@lists.linux.dev>; Thu, 14 Mar 2024 03:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710388097; cv=none; b=lHMEJdTNe4w7brEP9+ubRHIKeVK6nf6TZAlqjcm5E6j4xnqMnlxqVpcUdaEbHM6kNnvkN23XdX2ZOJ7Kf+Dp+oq3FldKOoDDvI9KOdSxaOwDgEMNueBx5n3o5X4aAoqfaRjQ1OlV+T2f8dEx7vgkUmOj85LMOtUvNHwKfepv3G4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710388097; c=relaxed/simple;
	bh=0K/qRYrzYMF/HAJd+90Ex8GkEuAahrf1jECQ/perJxY=;
	h=To:Subject:From:Message-Id:Date; b=NjykQkB6LCb42W+yM2eM/2TNFVEC5EJGmxv1jCq8s1ikoXrHOg3PhvLbSYfZelO3jpCgHMstIgpYrlEV0JReyVeqveiFltuS6NrQFD8wHWvVbi+PNWC+zE39Fklx1RMYZS337mkWwUvM1zIK6FrNdq+BnxnluTsArREe7cIOD8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n8Fd1opG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n8Fd1opG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DE2FC433C7
	for <ddprobe@lists.linux.dev>; Thu, 14 Mar 2024 03:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710388096;
	bh=0K/qRYrzYMF/HAJd+90Ex8GkEuAahrf1jECQ/perJxY=;
	h=To:Subject:From:Date:From;
	b=n8Fd1opGwhl5lQ2Etfnxf5lGltMw/lswAUdYbgmQxlknlBhBsoCjyUz+clncL5sUF
	 M5PFBZqz4sBkLuUwvx8ulfmzABHkkeJZLp9jjGEluE5u0MBv5RKv9WVn1RvzgVgH0K
	 afP3ZHtl/uwZE36A1XqAMm5UVz9eb/SlrWwgWSZpdrplqMQGnV5asGoLSE1NiHX7LT
	 NEgLSQ4s9nlVfpgF8A5NAfeqqcQJOQxckBBjcFBAIjIbTQJQB8Ud2qBx2wnWH+Cexd
	 CNwkgotaWW36cd96E3ZYy/domEHlebN9Sadjnolt1HTMQf++YkuU4UXNZRVWz3jq9V
	 teinNF9FaKBnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62C88C5475B
	for <ddprobe@lists.linux.dev>; Thu, 14 Mar 2024 03:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171038809637.30602.5157853696626586319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8d95134d590ee600800a4ae398ccf4722058f04d1d71f69c873d0f308d95652
Date: Thu, 14 Mar 2024 03:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710388096
