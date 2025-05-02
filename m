Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2546013957E
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746222595; cv=none; b=BL5+lTQa6fTTP2TpSyQeISo832NitP0ZCjVE/ptSSFtDhv/j63PtuDx0L5ESwFaut1swrGvWq9jnXEe/qerrNHx3kz9LuIVgkucfJnHnafTCUmZem9QTWjG7zNfeCq4Z5hXWvn8jhGdxMwbTjKAXYnRzZBV3CByGaNYqK/Twens=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746222595; c=relaxed/simple;
	bh=uoNQX483fLYaIzKqvJZuWQRypDKdxsLHFWVFOMOrl8o=;
	h=To:Subject:From:Message-Id:Date; b=MMH+AUSGB10rRbRFHrVDBLe+R1Tf+46MUY6XPLRh+3Me0e7B21YK+46UKPs8SWbOfVyC8uB+ByMqudM+1Yl8DQLTgQHoJpXDEM0zLTl1leSYAgXzz9mdlX75g1GERQVJ2irGRUJy8xQ8MyoOqWkbTvv7k08tiwuQDGvNpTADwoQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FXA4SeQC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FXA4SeQC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B866C4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746222593;
	bh=uoNQX483fLYaIzKqvJZuWQRypDKdxsLHFWVFOMOrl8o=;
	h=To:Subject:From:Date:From;
	b=FXA4SeQCJgsnCumwTEAvp5A9X8Sxsd7nk4Jiq9Yx9CVntgM1L3t565FobQKVQJK3i
	 AOO1d8g9MzH7SS76lt8aE/D4xvkrT4oCNN+WSRZEsLQrRRYR21n91mCriT6xrD+eVA
	 Ad0kUZ8dMEo+elIi3M9qvSZ1fzVL4nFqrz8PpqCcUk06N0xx7SR7f2nonTrOozt/YI
	 DwA2GCneFM1RYsDQc9CEKm1EFcmRiHUg3Y992Pl3a4S0sUT59glyF8M+yYdIRb3iP3
	 I4N0FvdNCQgKJcq/wF+lhWT4nkWXHvMAW+Cuc0wP6A+RRgMdN1Lcl9IkKOH1RnCZwd
	 j3m30X9Hw6wHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB56C3ABAA
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174622259357.21926.10834340685745099877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffa7c590c1d4b5147b33688c8f10df4ddb80142398a0c48bd85bdb75aaf87a35
Date: Fri, 02 May 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746222593
