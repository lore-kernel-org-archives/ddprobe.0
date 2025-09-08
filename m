Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21B982DCBE2
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757370596; cv=none; b=YUlegUQ4kqgINLu3fOSHW8kanZEqAfp2dVdmLtbr65FLf+NYYD0pzeZbENXscETFyEeOdOffQs2TZ8IXjpx0hDktZfY2eGHlmG+ZW98o+7jyfI/Lhm8wx6t+rEvhen1bPDTzNYO+pFkdNgRKjHx2o9vkgmnU2RMzp4tSmIjdkx8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757370596; c=relaxed/simple;
	bh=/YTMrxUnlLq0zTiY+VSIIqfZiVnTu3HsVzWujaoHz9o=;
	h=To:Subject:From:Message-Id:Date; b=FFri2u7tumV7m+kpFES7kvsxq4qppBmGdYL7QKUhICkpWEyf/nl/5o8C0UevpNQ0wn/zezVf0H1bDiVuFBErh+ULMLgJNIy9h5fM+fH24/3hal0wb3g+3HxMByNeng6V7rA8Puj6vb9seHtTNj5C/WZbVX5mq1eBfRjb4Thj+NI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sTMyfh5/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sTMyfh5/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4929C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757370593;
	bh=/YTMrxUnlLq0zTiY+VSIIqfZiVnTu3HsVzWujaoHz9o=;
	h=To:Subject:From:Date:From;
	b=sTMyfh5/brlfPl79GT/WiZhc8jz2lFOeOqsZ6xjqUNugXnbvAAWGzKyy5bmNFowk2
	 Np/PIil4vvpc2e+t+GzuMP4KcI0O+M3LnMfFzn220bQHiLb+1SgpQxv9Tc5dd9ooK+
	 ByoUayDFfvvFdUFOn8+LqOmhmtLzvVqtjyheb0ZpobnT7KfA7MuUkd3OGjdqXKHkwy
	 hCIerF/4jzh5/DQvVskm7Lp/rSuluQLZRbIq9NnZSdIAvdWvGbx//5/nIrMFwEgTs/
	 78cFyRgDqN2Z161uUnpb0jilDo8mwnxTs5BToEaHonYyExpEW3ZWXGP+GiesdjWP/f
	 UC0o4nKosegew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 925CFCA1016
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175737059357.19108.2017780974661183087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e26dc410b4eed6f9ec179659810bbf6e511b9a76cce1df3b961822084b9c3aaf
Date: Mon, 08 Sep 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757370593
