Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 233F822095
	for <ddprobe@lists.linux.dev>; Mon,  9 Sep 2024 14:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725890754; cv=none; b=NnM0yS6qIIz6G05MihfGYrEL+Zrly3MyVV1O7DJeK/0fj9LJGzWyHlr/DHpPkaAraD+hF0w7rf9MG6qMscvYZ3BVcudPDfMsyR5yziv4LNIFhG1v47p6A+8+fVRixAedwYPT1jk8vSxi2dVvKEuef5+wK2gw2ZKKHOge7m7BNXk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725890754; c=relaxed/simple;
	bh=6Qhp00+pBmOI8Cf8uQ4Hgkpfp4CsYG9jFwx9KCh6kNg=;
	h=To:Subject:From:Message-Id:Date; b=LIzo4zJOJls9JTRxKfPR33t2O3zSkqDHN7epUu85RZO1XoC3sf+Jteaj9TKHIFOOnLjUv/7z5T3lJPwF7R+IPueY35ioC+pALhEBIsN57TIMhaR0sNaTZ6q5AvEWoYUOWsNJOKQd7w1fDa8a5T8LQwXVZGd98qNbaP9Ma+XBJME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=itNUYRlN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="itNUYRlN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A275CC4CEC6
	for <ddprobe@lists.linux.dev>; Mon,  9 Sep 2024 14:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725890753;
	bh=6Qhp00+pBmOI8Cf8uQ4Hgkpfp4CsYG9jFwx9KCh6kNg=;
	h=To:Subject:From:Date:From;
	b=itNUYRlN9WYEXqLZ3AhL8uOWhxr6YCKYvfz4tAmUgZTXRd9X6JxrN4koQ+nTPMhtl
	 PaRjcOLWNSe0HKFpT6JzVHHW9RGAWfwxxK1UpF8SubLlXZuRrPP8E5W+HAC4IiOA2z
	 Dp5zm4nR/u/xiiwIEe8MxkeU4rPAKarIUja4iKLWdYLvn/4BU6uYSW44iguQF2Jw49
	 XOVsojAZ0n1IekiYnw6NJfozloPl4hzepfY+s35VgK4EMN3xxuDyRH8LpWaEIpRQyh
	 QUCkYb+Rx02+kI6PhStWTcStr3X7GKfZxKLDuQhsgokyPInAxZl+TeQZMCj9BFbGvB
	 5P4dk1AR3c8SQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91892ECE57A
	for <ddprobe@lists.linux.dev>; Mon,  9 Sep 2024 14:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172589075358.15092.9635616600650733316.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67c999b3bb5ef568e1f3bc9cea50fdb98b599d348343433923d829af084b9d4f
Date: Mon, 09 Sep 2024 14:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725890753
