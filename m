Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DD771DFDA1
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 03:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775876854; cv=none; b=WIi5FIk/Agu0g/sBmP0pNLx+YHbfGQxaDd6uyQsTSJz+qKbihVm5Nl06tZuqNv7YFh1+uDmcoPQOP0WyqN95OUyTccPObbeG5ixXI3KsMG2RM8DKBjIxl/fOmd+s6T+FaHn40rqfLFob3jz8VQeT2VGHKhDFf6Dhp+gYOESu/7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775876854; c=relaxed/simple;
	bh=cvvF6JPfu7eQw+KzPTEF/TO+fMm7fLqA/Re0d5IelVc=;
	h=To:Subject:From:Message-Id:Date; b=p6Aft31pDzMNpQ3CvbViF3l5rHiDwErBFr9nx9ioS2688ZDJ9b03csby1y7Ezga4l03xfLrE5k++DgHANV2xCu7XwA1jmuorPOxAxurYht1X8JioLnc2S4OWtf4W3bXI+5D4urQTmjefBxrPTFx409szFcAxzNk6hLiYBpz3vWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NrL0TKK9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NrL0TKK9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBD99C19421
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 03:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775876853;
	bh=cvvF6JPfu7eQw+KzPTEF/TO+fMm7fLqA/Re0d5IelVc=;
	h=To:Subject:From:Date:From;
	b=NrL0TKK9c5HN7OLlX7aGDnkOUD8i0hWLg9yCvyA/jbdBA1ViZo0nfXh34aSbMSF44
	 0G4G3lLKy63n0rNZ0OPDKGqw8gEK2dZ/WNtZ4lJKM+huY+bTxjSKr/tgF67VPEmwi4
	 aVV1n9uVwipt+2NOJHp0cQjkPR57fThXhydkev7R8K7cO9lrBU7TN7MB0sDL+IF39a
	 qVB07m6zF+nxJIByazJ1Gm70h1efgNx8aAMi1s32fisnZgoD6Eyd8TNpWIrEuMpl54
	 vt8OU11mY3k/4uo6uiRlhzXJgQfmdun7X0D/gAQU0FabrFdgY421SiNZnc1moDdJtt
	 KzWzYNc4I519g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA57CF45A12
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 03:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177587685368.27184.2722579098531670026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 975f2fde4535a02fb79be7bdc50e5e75e8244fc90f702d1341e1af7ce3c923c7
Date: Sat, 11 Apr 2026 03:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775876853
