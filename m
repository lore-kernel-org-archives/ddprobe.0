Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B7F8242D88
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758960594; cv=none; b=WjA/HFv/mboVJvjmF2CETrkJqInPWB2HKPYbPomNCplLUJiVq2gQh8QilbyWM7AfwaMihGiycCxIu9+mVHL32zVAlzMy47Gn9XBlX2Nc69ZzH0DmAzYhVuTScOOCka9UdvWtH8QUDQg7ju/W5ZDWQ07Ay8naZ91dklGlljK0wd4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758960594; c=relaxed/simple;
	bh=YXDKjoV8C3PbqYjX9MlX32fhVPEVkg8LlgheBv0BPgY=;
	h=To:Subject:From:Message-Id:Date; b=XySSb4nW7huTbc20pcpB2/1pKnUwF72/Kd6fjdKvzdx03kxIqGylX6BtazQFjZmnl+0hOtsTwgrvo29CDcZ3jz7T7Z/h1bMhKyLp0vwtAe2per6eLvcHbGdsy95zDI9wnsDdYsXrG5l92z33jNN9ldWXEo2bePxcGkLSzHRrohc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i+sVxMra; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i+sVxMra"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACCE4C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758960593;
	bh=YXDKjoV8C3PbqYjX9MlX32fhVPEVkg8LlgheBv0BPgY=;
	h=To:Subject:From:Date:From;
	b=i+sVxMraUqcheM68dZRanLXwLOj9gDvE2t9U1e7maAlq6yGusiNRWTcqn2hDMS7Gh
	 59GwSf3prdsejFz9lXwFSsJ5ek4vblZTy4wcG7KJzQZ5GY+Wz3/SiUk2/g6MoJ8HpU
	 ZNln3XDU4057ry09WiVmhio4bnPX7Ut/qB6b7cCDujr7Hlu1jYeeJ8K65UJ3gaskFd
	 y+wkM2lKWSPTD1pMNAJ7zPEoZscI4GquFGJXssS+cfbWAuIY7DrJu18G/iercLaft2
	 QPrhsO+8FTBw8wQEr9yy0WqsXtuF5pBt9OmrLWd8pTuYOWRiePTc/6lKI4tVK/Nxaq
	 Xl0FTNkXsOLbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99ED3CAC5B9
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175896059359.26517.7747958834801970386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 734704354d65b17e165b626c8b730521eb1d2ef46eb2018c75eee03bcdb62e2e
Date: Sat, 27 Sep 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758960593
