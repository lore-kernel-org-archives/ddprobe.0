Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59A3D3E1692
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 03:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792379434; cv=none; b=G/AGXgqNji8R1XVlJAEni6PEshxpFwtavVPriJHmTjx5h3K21mJCNkZcBFQvJoNc7CI/nhQ2FZ8yBilKzZpH7A+J8ZNWloPmShoXjUWcxon6HkG7xfrzFU+JvJ2m0fBKK6hxlSoLsywgGMd3+xa6QKSJ/TYXyk/PhbaP+D0MPSs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792379434; c=relaxed/simple;
	bh=3lKWSvAoooliZeV2jc5gAm4F3KWi8oH8tJD6Bx9MwvM=;
	h=To:Subject:From:Message-Id:Date; b=FIFbukIzogeq7+hlKoKZI/4PTDOXDxcOKxaApEQi+lkeRyYtvExCzm1bfAu7jSZ+I6q98R84PzlazyAjrBHLio7Ow+iEMVyfkXUZmeTRP22sNKQ8ILw/TYW4RCi7sPpp6Nl1HM5ukYXqidnAQh2SlFbnUyZ38yGk32EBN7CLL5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cpQCHO9H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cpQCHO9H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCBDBC2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 03:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792379433;
	bh=3lKWSvAoooliZeV2jc5gAm4F3KWi8oH8tJD6Bx9MwvM=;
	h=To:Subject:From:Date:From;
	b=cpQCHO9HFkTe5cCDxCjrB3wMEUerxdjrL6aPNg/u1EdYjPEftckrrnx3v2vsTUiNe
	 7/53QP73cgqm54xtf5usvj2ffNcnm32KZvrIk8XmkCPVfBHRVmaom0JkbG3u+nL5ku
	 L5ZWbhXGKtdVk6JbtJdn0t3SBot6S2kuPZiBcgn1d6k7wF3KGEkUXYfZtcADwZOow/
	 5+Xsg88QEaJLumcQO6TqSfjDgQkQyOGKaw8ZT1BNy6JLqSpxIduqAtesOOOfhvurd4
	 qmDLFaS8PeZnYL7oFdA735uKcUUQTUMqlRl7leCttXON17vX5iUiVshNjVN2kH7KyA
	 EDx5Ujn+hSSHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B76D4CCF2D4
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 03:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179237943371.375.16879007703817794707.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16e1109ee97df2df81d9b8b1c27b80218f358cee0921225ed7a91b8d736f7e3d
Date: Mon, 19 Oct 2026 03:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792379433
