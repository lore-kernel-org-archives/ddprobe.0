Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B8581DED63
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758446995; cv=none; b=vCixY2byJh8XabnU+a612F6wMEKPwnRx0sIoiKVBgK8p4me5Bs7B7SSNoyytmGvRcWH7XA/AoxXReCabk5lbOabzWCie5wImPu3p1A8oPRZS8b+hTWoYWICVxeBkz9yzfk4aP+pIzdBCEIkUJBy7Ttws7uN1ikM6JB7dBNeb2ts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758446995; c=relaxed/simple;
	bh=lknFcP1e+OzkbVAYEvCmVNtg1lGDtY3TGHfkAAYOj38=;
	h=To:Subject:From:Message-Id:Date; b=eXgS6sE9TlF7PrGvmMkQchOHInjoystTQ9ObAPaZjuKVLNLCpyaqN6Fabsynl35/d7MJ1oo2fzuVEKRtFnQCCowfyttY5s6xOkBZGUiyGWTSdK8bujJfG2IrmUBrbQ9/KnjRmZlmF0iF8NJFiuqJaG0ymo9JE5QzQ0xY2Zwb5OQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KAjkfRqH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KAjkfRqH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4886C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758446993;
	bh=lknFcP1e+OzkbVAYEvCmVNtg1lGDtY3TGHfkAAYOj38=;
	h=To:Subject:From:Date:From;
	b=KAjkfRqHWMhISfuf73wwzL7S0/tFR5X5gJDXNJjtllcfkJjYGTUeq3CpeDGVksnjT
	 EVx6ZAnEHeBXWBTL5H3WU09mEMOYe7g/VnJa7eI/BMu0mVULEoTG98Q9UuApxWn2Pa
	 gESttLWjW+Bdc5gUKLxRY3irdr6KVxcbIc919rjN9mMPw6pz9sIvwGaALtwKb6+HTF
	 BuZjVw+YjN+KWY4S1gvOXYmqte/5vpNOkzpeFFIDstRt7dUV1BhOKCr0kbqYigN5wv
	 y0KAMVwQkUZvS2EC501lUbGZ9+/ME8KY1+yl5TCPjVDrxbXFGaAnDAJ2g6nESPq3d+
	 rchnA5HOE+V+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D7CCAC5A7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175844699358.14702.12408815131009916942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64fa821f51fb3bb5fd910dc4b21a87ebf08fa36b9007e689c5036f551314abf5
Date: Sun, 21 Sep 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758446993
