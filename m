Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 178D7D531
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757870394; cv=none; b=kFI+BSgv03elogykWnjI7FEe7H6sjgqpS2htrf+kc8H0jQbxjgrmFyGT+MthKvEf+QZL6gwLa8wm06Is/Wbk6IsK3Hv+1JPsEE5N3pejubTc+k74Q/jA15T6lwLHJW1WXEHvplAj4xTwM7X5HePLz6+DfDOZRJyObB+tA3Mjin4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757870394; c=relaxed/simple;
	bh=/mIh8oh7XC+sm8tp0KDjwFteJ5tZyWAzDu9NhIIMQZI=;
	h=To:Subject:From:Message-Id:Date; b=kTZVfk7ur2DrjCYCjYrIXF/E1rUGmbwhOgCLdHLGq5erihkzazB4qZ7WxTAb9wh2D2UAUmPJ4R25a/CHzzwU56jeMifIxC6LqKcN+9UlpDwqvgOCLyp0to8lVSsMWkDUUgxOhHLQfIbv9+ptGwP1QqVjP+3g7oiiuklMnKKrELE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p3HOZcM3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p3HOZcM3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6226C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757870393;
	bh=/mIh8oh7XC+sm8tp0KDjwFteJ5tZyWAzDu9NhIIMQZI=;
	h=To:Subject:From:Date:From;
	b=p3HOZcM30F/72Fp2iCOOsq3Wiy81opDKfCCFuUEN0/7Muneqb/7BKgxsYUFcFChYT
	 kqlm/qPiEz1nNQsqZjzbzEOJPGBm/KcNDOCsc5FkuO1bko+Fcbhx5ZL1Vpj4eWyZGa
	 dsvnF0QhlfmJV+rTcRdIcT3Tp6A9MJPZNJFOHl2we2YomfMQi0jwdfJNqd+oQqbXAF
	 9K5JsAPzuUz4jfb/wcUnbMlDUrjBKqoFQ6kEpdt+2JvjZzgIfCWIH0NwF0f6CYuICu
	 6QNhgHkG38zoB4nENajbxG2f9hhoTpzxnMgpKmlrNhbFQO9kKfofLv9vTcC4p0VLyn
	 YpJOcFJz/IOKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9459FCA0EE8
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175787039357.12760.11935530922273376006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b6ee2c3057fc3c2057df70034173eaf14d435cb1c3f13587c2afc5811a96f24
Date: Sun, 14 Sep 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757870393
