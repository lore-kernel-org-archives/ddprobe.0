Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C09782C60
	for <ddprobe@lists.linux.dev>; Sun, 17 Nov 2024 10:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731840954; cv=none; b=JtCRIjh4z3ZKk2JA0iifMqC7FveoS3t2zsM3hOTdgUmXpV9GYZ/C0bSIXz3+A2HJvvsS7ojXW9JsaRY/ZY87ircxxH5GaZBK8UEoTPn4AT1CDOZ87xIlJ59HL4aJqSX/nBCN11gMepJlE+HOjHPrf9BPQ4WRI+ecQkTfWwKfKjI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731840954; c=relaxed/simple;
	bh=h37uwN2MGjxbggsraqelcDhluvDZpwoWtH9Sk1Zfyi8=;
	h=To:Subject:From:Message-Id:Date; b=qyFDDqEQw1c1IXnc0PMAFYUe3P8tBa08IofUkVe5wFi9YbU5SNtC84UHA4Y5u6HuAMiqCv/saQ7arKYu5PARI0o3B77fKUPVdwUdpSkTx3XbYYqGFPrqHjsmxW25/BD/uSLUZpYg3V+hH/pmjctoJs+PmSMSc09/u91Kob5bbpc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J+ME70Sd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J+ME70Sd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9780C4CECD
	for <ddprobe@lists.linux.dev>; Sun, 17 Nov 2024 10:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731840953;
	bh=h37uwN2MGjxbggsraqelcDhluvDZpwoWtH9Sk1Zfyi8=;
	h=To:Subject:From:Date:From;
	b=J+ME70SdG5Hj8M66KscW9oiBfr9CMmopjrW7so3fUAR5r8wkY7tKdGTVu7AK8tWkx
	 nES//Nclp1d+/v28KOrAdIXxq7FtigxVlGDIxsIR/uNe3Zk3/vC8tjO8mCefmkNc7Z
	 2Khoafs2G9BeJOQGptUt5L7pp+oMokQqyzE6RZGG1NtMJ5VQGN6jCrUav9ZdFLwfnP
	 9coMGFAfFUa+hHys8NE83izyFEwQzEACbXIsUvr3qrNVBk7ClGh3jYIDmKPsu7KNK/
	 OtnUvDUVt2nqkUS6xv2I+QjGORmy+ueQaaFW2k+ub7s5nAUKF6kGAObTdY1Eget/Hn
	 2DF+xBAHhQYPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93BE6D68BF9
	for <ddprobe@lists.linux.dev>; Sun, 17 Nov 2024 10:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173184095359.8745.13925851979174253053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b9a2c1c8906f8bbccfd2cc11928dbce165909c689f0b9f9b4b267356915e630
Date: Sun, 17 Nov 2024 10:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731840953
