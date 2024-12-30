Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FC8E126C18
	for <ddprobe@lists.linux.dev>; Mon, 30 Dec 2024 12:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735560354; cv=none; b=Wr2kqhBYOyVbE6BqgQyv09waQLu4+GnSo9cot/HCyzUcrGLmcf/iMin9WD99Bx2WfFPs3hg2OJzgjHChQqSCnVEZZee3nMC0oiah04kEhGZVcsE+0Tw/LI6pB3jU8dyLZFIABpLyshEhYWReq0y66iCnZZyhgTvf5HTtF+JjDXE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735560354; c=relaxed/simple;
	bh=uoAft97mGi3cLYW1OK9RTID8xSSYPOlHcCIUxtrejFI=;
	h=To:Subject:From:Message-Id:Date; b=t2dRJ9trRfRDzYgzuKCoj5+B4wXZ3rsj6QsgGi4WA4aa2aERFKvVWSzYsH7ZnH/8iBV6r/G21hwtTcCXaCMB7GycoyJmnW7x9/NoBXjZ0JoUz+oNppGNROmEiQ3tfgQ15Nzl65h5gNJahrFZqoUlTokw2xnMW4e/cMwqtqWq3z4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wt2PmkNN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wt2PmkNN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6068C4CED0
	for <ddprobe@lists.linux.dev>; Mon, 30 Dec 2024 12:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735560353;
	bh=uoAft97mGi3cLYW1OK9RTID8xSSYPOlHcCIUxtrejFI=;
	h=To:Subject:From:Date:From;
	b=Wt2PmkNN+rihwX+bZTjgf43hZCa7yLZhdJqDcunH6r+Ab4xicz/KaePzaT57f00RO
	 XmPjn0HCaQRvVR9hgadGvxCNh/vM3T40QQGayiufiB/R7ZCdGqG9Nl8zzDaaUd3Bc8
	 DXA5DUqXtJr4tWKaTfF/aSSx0/WJ4Z3vXCv+tsN3dyByQqhj6qKQcdKmxOuF94Bbf9
	 QByZsS3O0dgOPOBJkXmB3NTRfxfeceol8gulMYIXGuFDMz3gFfMUfdxKQhCl4u+u8L
	 lVgXRJJ7ytviBI+HAtEA3Pii2fWFbczVlLQh5DOrvy2uR1ttEpU4aMnRu8mYswQNHO
	 YS3acGrzlioNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 950B6E77188
	for <ddprobe@lists.linux.dev>; Mon, 30 Dec 2024 12:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173556035357.14570.10391517492294111410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e67fd3e327091187b7d3e2a8a86ebbf045bd1fc49f475fe0ded33c6c90ac96cb
Date: Mon, 30 Dec 2024 12:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735560353
