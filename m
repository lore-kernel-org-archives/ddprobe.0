Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16ECF25D21A
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752152994; cv=none; b=G7GTSUQLU0bxzx4g6C3d98qSnYo+mchypfF+4xb9eAJtTO7Dc+VI6tY350yX2u3aohfl6QPrc9CspiAQnrfDIVKiwHkO7rchZCmLrN94EpWENmZvVMB7AqZWSqWAlbmMsviIPfBExiRypDHDf2TrMTgwlojEZybQ0K320jHvaiQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752152994; c=relaxed/simple;
	bh=IUkQPUEEWNqbeFPw0zXFx3vJdSYUK0tZ1YDcbZqOOj8=;
	h=To:Subject:From:Message-Id:Date; b=N7LWeBt4+n8ri2+d41f3VyFrNi6XMl/IGUb8eMkt4TVcwd/3E+sVEXqEwltUL8207/vNum/jyFWM1tweglFXeQ++zqktWWETICFX604/lpjRZNipZQtx0Hej27bGO4R11mrF/9v9ddewo8yqVya+rzogmx/wq19tBzsZcBsy4YI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cTQXOJfP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cTQXOJfP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A28F0C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752152993;
	bh=IUkQPUEEWNqbeFPw0zXFx3vJdSYUK0tZ1YDcbZqOOj8=;
	h=To:Subject:From:Date:From;
	b=cTQXOJfPVEEzaDuRe9jfwQBDXBi9w2vtWOeY0rbB2AjlnT6An4nFfhtGIOzib06ud
	 E08OTSDkeAZnWSwYBOmErTHzR9LGxjQTn4vnd7MjLwTMia+rYwhBqIw/LGMBhKRfZ+
	 Gt4hZ2ecV27bFx6luy9K84fwG7zRa3WucHkmJtC1ztzBghoTPBCFftrWZ+h0kFUHlt
	 GGaG8YaeY18UHBhcwfp5Xvok4pefxBPFytbkpq4LUZW0prwUOQgL8oWPr9DACsw7YL
	 y3ruBJva1HbYqWHYAMT4tZR07jU/DdXW9j56p4bgHoZPKtm+t99Wd99LxBTz3DmbgM
	 dCuX8tUd/6VJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E48C83F1D
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175215299358.30971.2370637498712418501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5428328b742aaa878e516ee634b9cbafd5f11250f88d5fcf781045babd970c7
Date: Thu, 10 Jul 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752152993
