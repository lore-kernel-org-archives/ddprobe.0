Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BD37242D70
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760594994; cv=none; b=jfdNHgvShINjt7XSPBgMwaPu0f/sQPon5mrdDNsZusHs0ktFNRfJVSpnkAGrskscC3kFtGmciSAzwy/XoPKFwxQF0ye8j5vdYyIENcDbrtQOs8sr77B37/E9I4zc5m5kbdM4r78TYDo/6VxKXDysD665LGGHUm/SkehJro9aKNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760594994; c=relaxed/simple;
	bh=aJK44ujni5hLOeCMse1mLb7AAX1aMJ2cot62Q1kmEmY=;
	h=To:Subject:From:Message-Id:Date; b=KZHTvu+ewkZdjC0cjIR6/6djJJQ7I4EJPNjxGzAssqOUjogKThpxlihUHHUdMXj8Crr16J50qPnqoa3ozbtQrkCd4kIKTE4U57nEdsIlnzP0bKPgan9W44ycmN/fq/Gf+MHg2BJPudXf5tMkJe00YuG2zdlrSSnKfslzY0xHCzY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eTL6JkD+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eTL6JkD+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F54C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760594993;
	bh=aJK44ujni5hLOeCMse1mLb7AAX1aMJ2cot62Q1kmEmY=;
	h=To:Subject:From:Date:From;
	b=eTL6JkD+xKAwTNsfjkMlcQbEQwAadPwygFQNQEu10ibgOt1B9cRPOUTTcNj04OpgG
	 VJsENgPDBLkwpWjbYl5JcaHQby2mmO2vhAQVNzhyDqFd1f4MwiggR2zAu+UD171WfR
	 CMo8IrRE2qkfmqvyPF6HB/a3swSl3sq+ed4SP4+QhVnuS8fLJcNnvR9oKd0IhtFlyI
	 jbpAINdggD43IEGGMCHTHOxS3qeo90meOexZnSzCSIVI0BfeeKaI6PwDMC59tCl103
	 ybcQkhgQst9AJRKUg9WtmeI3hAqWa5s9pN9ofjz0ZA1zkDvkBS1uJGXJcW+LmGZEhl
	 uvy1d03sWA2Ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909D9CCD194
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176059499358.26178.6632918832226672104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35b23256ff3083a687dd55a6462f756fb586daad41105ab9588be49cf70df66e
Date: Thu, 16 Oct 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760594993
