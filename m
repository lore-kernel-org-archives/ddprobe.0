Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FB5A1A8412
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743102595; cv=none; b=n364ewefiTbrv5VBLtaytijJc/2Rff6rSGavDYHeTeLbgOCI0Fr4bS7Ca5MbNPA5QWfhsTulh3WAOc0row9OU19IR1uM20RLvYB3iXgWR1KFmEgcEKl9hrFWV8lHXUKfkvxPhpxQSHG/tY0opu1IeETfOFM77LRkkOyp3NE4dOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743102595; c=relaxed/simple;
	bh=VB5mtzUEBIuNbgTM0nZKBkUTjKDQpPyvbl+EbJQTjYI=;
	h=To:Subject:From:Message-Id:Date; b=sLf+9WRWJXh81vKEkhLrc77YES4mSe10MurSRc8hvj9ZzXVVUqR30MHIlFfHS8A9kSXNH017ooTaQ/2lNVdLyAidNKnoIyVtiiFzHQyh7F3iVG6O8/6sva8J/WtRTHBA6HZb93yZBiBICtQBIcfkteVeq+y0GbJX2XF+tKkIv8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cnlPqufk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cnlPqufk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A53D6C4CEE5
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743102593;
	bh=VB5mtzUEBIuNbgTM0nZKBkUTjKDQpPyvbl+EbJQTjYI=;
	h=To:Subject:From:Date:From;
	b=cnlPqufkBmkjfmQ7RfbNsYQasUUhgf4ocSF7z7Sh643c7aRPqS8QO+3CTvR9VE0tl
	 a5sSHXyjSezojVGR+KqCy2SInZtrOe3MbT1kUM2/ZM71R8OSof6VXML72mNk3hRyKb
	 BhXPVXU5KLYJGwj6WGfXi6mUkn1oPIN8/q1y4CHorUmb1OB4bWEjiuF3cx1aEXNGcS
	 9nqFCnlJOzpiD69Hgst+Ry+8X76q+4VaZ4LH4wdAkMq4Qq5SOPHLWO6MAtOrQ+L6wf
	 UZFcyPf8otQQkBCwWuYbhXPQPJSy7Nkvtj7IbA98aTwstMGTwGfJWbrRqp8UmLGP+K
	 vyLvsMq4nX7PQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94104C3600B
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174310259359.20522.10356454546865363271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23f7bfeb02971f9ffff9c13449fec85d4e90a0c56ea913c27ff1fb5a727ab6f6
Date: Thu, 27 Mar 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743102593
