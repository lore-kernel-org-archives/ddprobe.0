Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25B8F2BE04D
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761294594; cv=none; b=bXr8v4xMhrum1w0mHaX22iDsAGmSts0prgXn8226vblPGWPP+4CQBZ5LkWGk3/9vbv4wlnMJ917BwiNo7d7Au3Lw9stP/BOhE4GCqABTHQwVCe0m3wDA+qeNk39PKjzPxoSoyeN0XuFAHWvMtqk1Vj88375J5WyL51GV4EVvxYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761294594; c=relaxed/simple;
	bh=YIDDwRWiGOdDVfy34Y/F4Z3UK7qtyMs8IA9ROA7Usyo=;
	h=To:Subject:From:Message-Id:Date; b=FTC+rEKzkgdA055Zg6TRrHMjEewG70JJR/WkZdMczxFbYinola7ZIL2uRJCDECJmladR1DCUFbCYn1qIQMX2l01ik5NZeqXoiCvdJH9nbeQCyfbuzNFmB8/xPXXhE+QhC8Ls8zX75/txFLWTXFejTLOzSaJi0kx9n4cT78swMzo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bSKYCKgD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bSKYCKgD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E10C4CEFB
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761294593;
	bh=YIDDwRWiGOdDVfy34Y/F4Z3UK7qtyMs8IA9ROA7Usyo=;
	h=To:Subject:From:Date:From;
	b=bSKYCKgDCLIE/HpfM+/sUipj5a2DsMfntH5rp2XDkzfvMsqm8Zxo0Qcc4DlYI3YY8
	 UbtV/n5C3KCqACW9aKJFN4mK+UESNV6dkRvqia4ZyhcVtZ3184wOJ8sJxvfbu5zJ8j
	 UfQxQs2J5aRY1HkGYs+MxA7Tbr224kcFwdB/ssSEo3vrHpQsDydHfWEAw+oVIsxG7B
	 Z5xFsKI7HOBmGxnszJpqBqpwXumB/kL2jJMlv9jcjeF4BTLQYoAj2SiMrYbHdldMVS
	 qe62ZAd9iBG9i5FiS5P00P2yRTDx7p0m5IDjaHqGzTvrmgKij9MVmjztpKdKa8wTwH
	 /zuhs/QEdVOdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91569CCD1A5
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176129459358.26222.12166796023409019522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 438a38c8377519939bf9dcb0609b50664e964e25b51051f9e426e46376c8d460
Date: Fri, 24 Oct 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761294593
