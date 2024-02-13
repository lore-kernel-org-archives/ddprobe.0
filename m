Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 245FC1B59A
	for <ddprobe@lists.linux.dev>; Tue, 13 Feb 2024 08:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707812297; cv=none; b=ci3y996v9hwlOoXLKurX0W6pAC20lat/Lgx6f5/2ePeyL8xJ2GivKQ+hLBhNLpigQaf08UXlFRP2hB8vQ4KShB3MvmdUaGQ6UuR8Cr2BT/9JCSYhc53jzx/TDoj9ZizExeb82dLLw4xvRQ15VMC7ZHJRWNl6cHijXpltB1aIIpE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707812297; c=relaxed/simple;
	bh=iYwoXGEG9UGfe0GxVj+uH42NXL5huEsWRNLdeDzuAnc=;
	h=To:Subject:From:Message-Id:Date; b=GCL29Ff9zSl6M0hlKmJxxv25l4SUF2eozKh+R64BQpo9Bu+vn2tfvDJ8Vhnqkl+2hinWanpHOKgDYdF/KSinhY3K4Up2MymMEJtNl9q3mmDTolw1WRs+tkx2xWgJEO+gybzVQIKLYkIe7sR3vk7zQnKpJeTeQC3EM5N1oKZpXZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QEsk95JY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QEsk95JY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76F0BC433C7
	for <ddprobe@lists.linux.dev>; Tue, 13 Feb 2024 08:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707812296;
	bh=iYwoXGEG9UGfe0GxVj+uH42NXL5huEsWRNLdeDzuAnc=;
	h=To:Subject:From:Date:From;
	b=QEsk95JYd8xiVLFZ/hvqboatWp1DkAdVvUvWFjm2HqhaiARRxlatV5PJu39Co0cD8
	 pyOJeBlvRMT5eXIs7vndcj5KT9HeqTRAxt++Kob+kCpqNgdqqUX4ugVQ00sPomOvNc
	 mSDSkvndCDAT6toixKz+P4LTGzAG2flOgrjB7zG1e9EOIk4BYUx5ABal9H71oNLrTF
	 0Cisfq3WOWY0ihFbnGPF4J+ReECkIpjc3ox7CMC2/WACcAUDIVaIk5g9IcFf1ckIaq
	 D4WG/qoJ5gZasYkSTO6e6gz2q64LY0s+sTI7zEpLjk0lTr4YgiHe4iPYFMkVSuEvi/
	 aT5fvk7vN8UsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C48DC48260
	for <ddprobe@lists.linux.dev>; Tue, 13 Feb 2024 08:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170781229637.22163.7869359479313874981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56bb16c760eddd6cf76df2e375efb3b79d577cc377ff1d43561ea41c9bf20807
Date: Tue, 13 Feb 2024 08:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707812296
