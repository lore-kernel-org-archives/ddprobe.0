Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24FB9354AD4
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760831394; cv=none; b=IyxDTNL+oSr37HjsQhYlLuKo/Z5G+thhYodZ6PNUxDzK46o94oy5boFGMhrv8kHFNlRomCNKBodScP3WLpDJ7HLyibJxyhLZDH3XRIRbq7rjlB5iWH+12hlJvi244gfXly+idr7CRSxL7NozBG2ys8jRLb6xmrIWMY9VhePY5n4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760831394; c=relaxed/simple;
	bh=hFNqgPRTChb5I3GA78atDWATfDOOSXVMTe2nzS3bK8g=;
	h=To:Subject:From:Message-Id:Date; b=EP4AligDq40yYTJVr3YeuVV7983CF8zLc78fCuGtRoWnMAntbwGgiaDHKyftnq5c91SdBBWfX9MXi+pzJrJ3bkqZ/ajB6irDnGRmCnTXOi19MhYS7YltOS/Ecwa8sWLqYqDV9/nqUhdGqz6KvkfciWaiXh3lPkthqLuEcFLscUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ofmMo7vV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ofmMo7vV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C66C4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760831393;
	bh=hFNqgPRTChb5I3GA78atDWATfDOOSXVMTe2nzS3bK8g=;
	h=To:Subject:From:Date:From;
	b=ofmMo7vV7GK6dZfOu4c7kd3EYWH2cIkNaN5FfwrukMG1usQQvIhVakjkjOw9h6296
	 zac0ImZI6iBB2LYo1eUp9FmvRZawBm37t1k9R3eZ2apbjDkgvz54TRHN3amthdSvbP
	 3DztSlsjBSxjznvN8LRNaHaR/3grk8Ebp/errI/kIq9yb4Lojt359UfCyjpOwYjhKx
	 cyNSyxKox1D3JHuHIZywi1W1XhdrywzFd8LBwJg9+HRU6m8/DL1CzgTlsUDRkxetuS
	 nlIuOlz8E8PW0NnJe1PHOHr09xpRP9XaFqVRhcBRsamNmjlNJjVjMh1QioSYp44eyF
	 KvSM30FYAsA5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93BA5CCD193
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176083139358.26175.17174805308091368734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a754edc352b4278a1a1c489a9b846ed0516dba71b63438cb58faebc15b04376
Date: Sat, 18 Oct 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760831393
