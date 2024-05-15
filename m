Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 689AA200C3
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 12:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715776943; cv=none; b=S5uoskRtiaUOofPRCRA2A7s2H28n5ltRlImTnQ7SknXpsdy9Eb9fdxa+RGmxFCTE1M4p9l4mYSEKa3fQ5nkfRcxtStUD37zFVPg5Xhz0A67xEu9gpJV/ROOF9UCw18gq41bAWnvHurigEGD9OnALO7HLlP7VjJm4kl0h6gYZp7A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715776943; c=relaxed/simple;
	bh=PARXo90sh2tqKWosQHLza5FBKwSzO7KJ2m+1CsuaDnQ=;
	h=To:Subject:From:Message-Id:Date; b=ukkS2flVIFPthha2H7WxtLeYgZx0nVQa3bHrTvtJAnsqquzzybqeNcGw/1FQIOCNS7Im3uYidrKSqcZct2GNrRNvKOWtppCNe3xCQVddK7dK81MLxvttnkKt8dihV3mWF8uTH0ffJM3G9/MDv1y2yp6S7D9I6U+DrMLZLWncIlY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M5BglQIR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M5BglQIR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE9C1C116B1
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 12:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715776942;
	bh=PARXo90sh2tqKWosQHLza5FBKwSzO7KJ2m+1CsuaDnQ=;
	h=To:Subject:From:Date:From;
	b=M5BglQIRGDYJ8rkXUqbb6VZl4tLMDw+yhq8GH1/ps6yd+JB6/uPHXzpJ6RJ+MxrSU
	 +jhXnJLA7kuxcTRuHoypCcpjrjKvlJm5eWuv0IdBSQhx8o5TAMGN/e5a7lqzO33/SX
	 q5sZ7TQK6vfD3N/PnXwJKE0EhdAZV3kN+F1Y1VkiVTeYFXtC1bou4+Tqhn/jmdPhTX
	 ElS5MGfFOzG6dOB2G+V4kULB7jzq/Wn1abQaLjs1nO6iYHOooBAAw836u1cSjMQLOe
	 8n0TW4BMyYGQvby4imHIi8WReVoM1SLGjJRInuVIjK2i5Arb/zHlKZxrUgXXpDUMGq
	 sFixfQzYk0bQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7B7DC25B79
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 12:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171577694280.7437.3428521842960245322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f2f76c56cf3063d6572394bf7c20bbf4850fc2bfb4a99defde16f5a9c4be3bc
Date: Wed, 15 May 2024 12:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715776942
