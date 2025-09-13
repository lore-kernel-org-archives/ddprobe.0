Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E138727B4F7
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757765995; cv=none; b=fvjWBnLi0wNu0yYX1BP/YML6IO25JHfM50YcwpfD9PWV/g7rB0I+AmDlPgDTU7vHUoOsj7bJNfyX8zkS5VyuU8QQPaP4LZ+e7oul7Tjux3HUTgTUsX6povpchsfJ+kUVzY8WK2r7ScMQfZJSRxryWh4KreIn3uEs3aN9w+a02hA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757765995; c=relaxed/simple;
	bh=rfU9Revneyb+xvjHnRW9glu2ELTWYumPPp0RmB37SYw=;
	h=To:Subject:From:Message-Id:Date; b=jhuwc9qAoxRic39r38pFtTW0L1uLR6bu2SThGJYeRoxeN3/FFbthg20QJckDBsfwkCKv8is84/xF0O+ugzZcbL8ipnkJZxNx5SN6MxiJRcMnI2sxErE4EirdEHQxckNz/mZrACGE3F5jVM0uK9NeVHpkLrKTsdFK3ocEqCg2dBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=soJvS/Nz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="soJvS/Nz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A78E4C4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757765993;
	bh=rfU9Revneyb+xvjHnRW9glu2ELTWYumPPp0RmB37SYw=;
	h=To:Subject:From:Date:From;
	b=soJvS/NzPIWZHHfuFqC2+mAx5aXbpiJ3mcT0Nsj55SEsfi/meykXP/i14NOtwnY1W
	 el1H/PqsvErqfUVpq56iiIdKkL0IRE9SEvukFIYXGJCF4PDcnbMAjaieFNucKY7QDp
	 YxxrJjLWqozwoUk2N8J5GMwNt+7Sabs8oDu+cCm1gTm03Qu2B2SWyAkaUiIPyxFQZX
	 jvIg8mN/GMx73DGzdcBk8b8WQ+mB0b+GsaqPMrSh5AellqLrNmS1fq7jh0QKYvbZk8
	 WS6phpidMPw5nf1pBOWvJ63/bVUkCURMC7tI5vuCIw3IFvJW8Qa8A2WixRTK7opBRC
	 peywQwqklGH3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9869FCAC58E
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175776599359.3583.5283937684897802264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 360410faf8f1e5b73be62a23cc1b08e2b9091eaf40e008b0ece2c87677703104
Date: Sat, 13 Sep 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757765993
