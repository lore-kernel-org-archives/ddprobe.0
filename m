Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E38A361DC6
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 11:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772450694; cv=none; b=YJyl2ouQXZF25Wyn9pWApbNxUhp4097bW3zrTO2BGNkrFWuR7mJYDJhTXtZvkrxjIOfUolVKCwE3iB8mdLUN8DNeHg8rAY69HtLZCfmgjgr4tlLv6YzL4l/Xw8kNx9mzgmo5OMlxhVjb4q6++PW/7mIStdDbndbyCwdAIOvHzMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772450694; c=relaxed/simple;
	bh=mmtAgo8HHtk4eCNfsnePtLngJPvKkyJuXhWxW2L2kBU=;
	h=To:Subject:From:Message-Id:Date; b=R0/dmPpSqemzsBYcM2k9XCTncz8fk9ltKw7dIcDM0RVY3POJrQiNQTOtzIANQvVMaL8yZYIs1UScJ4Ad96rTQixNaU2AbxaHP2An/9vjgyDeiwH5SqD9P56VbaNjhGL3Z8vffddSXUeEHwCA6dA6w8vmFsGhGMnaT1uwfRKIvuE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M5Ehu8QE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M5Ehu8QE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBA19C19423
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 11:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772450693;
	bh=mmtAgo8HHtk4eCNfsnePtLngJPvKkyJuXhWxW2L2kBU=;
	h=To:Subject:From:Date:From;
	b=M5Ehu8QEBiBaGLpnVCAOMn/PGR6OMpAVinYLMDp8TBAP4QG96yo86LCLaxj3vuvfA
	 fE8YQ0rPaqwL+Ji9zF2gzQPq4vi1o64P9FRputuKzZ4XjJm/guZUN0m6DALYDTPBYF
	 /FmT+uAwOSGQZC43oRamIfIxOlnE/WCB563a9bpFaMxCQSJKh9C3vg/so+b6EVxI4M
	 i4t6Gi2cbMw5335VGRsbFI/0WJBCHSxNRMvnA+fJAgx+KQ8loeoRT7+u7eaQBydjbY
	 75RG26GiFx7v3iY/H/ceXyhpvbpJUOAYjpoJmtygSsNPw6bzA7IWzeKNpICbhBNAcL
	 gOfnb+dp9RyeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA2C7E9B36A
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 11:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177245069368.9971.16413273001553922593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27595b18b18a78fbd9f9ff5ecde470e0057cf100961b8112cf6f6ac80c6880fd
Date: Mon, 02 Mar 2026 11:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772450693
