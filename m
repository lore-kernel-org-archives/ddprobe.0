Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FF5D3E0C5F
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 20:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774298094; cv=none; b=VGls7H81AWKblLc5tgX3i4aYjBXGmwr0kTSgPqWortNlBHqzr+JcvombUM4By6UMDOP/4Lo5onZB8v20hqLOXA+M9kvHVGL+0+rHpB+OP5ZUJpMVyktFJBjpBYMEWlhaDvX2Lci04Ynv/xFzAD4znJ5q2w8VzpF1bc40qWnbWNo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774298094; c=relaxed/simple;
	bh=1Rzrnm8bqDucOTjmywWAeuUHXudcWOAY+z+C2L1M6Hc=;
	h=To:Subject:From:Message-Id:Date; b=DujjqM7Zab7AICAVKzt1KY/Be7cZV+J+mUa0dyFwA9smH5rOdtMAD9Cl7gFt50F5M5X6oYsB3F697ackqAKe5e5idcP+eJuHTG9Mh08s+5qGcjv020/yEy/JgbYoveBf+eesjRe1mzmjPMHzPnNpW3od6jTLyJw5Pords6MpCS4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A3u9Q6Af; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A3u9Q6Af"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A23C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 20:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774298093;
	bh=1Rzrnm8bqDucOTjmywWAeuUHXudcWOAY+z+C2L1M6Hc=;
	h=To:Subject:From:Date:From;
	b=A3u9Q6AfTeo+8DYAT5S6Lgn2SJleH7CjeghMULzCjlL3Oi4BfFTZR3wh4842X1TVe
	 /St6qeXQgMx9Q9rtwPWEQyRhIq7TxEvnwM3rZ0baTzHhNs1hfq/e8XSI5WGRi600NN
	 ZfH+OVN7XjmFwlQ/qgYlf5eiYIuRvGU5HCO5KRJoomUo1yJm4fjVHYMjWtkmXsTwf6
	 xl4PmMC31SECBB9yds5YOz6/KthLf0KWB7onanvswxm2fWSNzsaS20E10s+H4aI5EN
	 vjV1SfcCNEHfQzXNqiQjZRVj7QhoM8jD4wlD0YXe2/QkmT7QPj1eJd7TRhRtqPGmN7
	 56KM/PbzQ0Reg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9160AF483F3
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 20:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177429809358.23651.15660562786219905902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1dfa2c63cb970862713aa591b2b2cdb4197f11d2b52e20fff6d12c311f52b97e
Date: Mon, 23 Mar 2026 20:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774298093
