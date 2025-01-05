Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37F9F29A0
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 17:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736098554; cv=none; b=l7e9YgZlWoSFAhq/Dzkuot0XuoRGcuddZHzwFlO5tGvMh/gwoyPpmxleM6Eq8QNRFK6ZZ3KZs7AWj0vy4b2jM5W3EoxYrzXV5xYOzDZr687YOqNf/f3zFo5j2NypFgH+ZNkjeJUY0LoGzBBEXxi0f0wuQBD//Non8HBtjYEYLMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736098554; c=relaxed/simple;
	bh=XOxmcHdSVYU9zkLygXFarScWM2h/8be4D36AW9ars0k=;
	h=To:Subject:From:Message-Id:Date; b=Qr4iYJlaqmW3xVuodntdeFn+kOHrKjAnZtwLP2MuS2XponaA+YDGrnhXVwIKJh4U9WvWSOu292KqZanFsgQ83V/x+IhPqRJXOBwnbWYbdbbAJ8rHIelrqykNqVj7w9JDZn2JzzmRoFjfPGigKRJ9hYUh4QYmXi3sRLMvmO05+kA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XUJQl9QV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XUJQl9QV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEB73C4CED0
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 17:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736098553;
	bh=XOxmcHdSVYU9zkLygXFarScWM2h/8be4D36AW9ars0k=;
	h=To:Subject:From:Date:From;
	b=XUJQl9QVDWaMp4J0ejCx17U1evybUGslOuMuIHsGBGV4J3gsYCBopgrKg6Unq+BgO
	 D6gLR4LRTuuApwBK6RUocenLQA0T3n7rkEhK2STrG0AhFdHmc5EZ9yXn209xkVb+S0
	 io8DME0wzsQWrMhJOwPggZ2//MhuxKDkOoftXT+oIc1ekJs8r7bCJdLTikMhM52/Di
	 5e68rxkuML6mBoPTksph3W+YiRO/lpvRpXt5wtDMsLjOVuegpo09vg7/lhvYxQ9iOG
	 pvpyyxS6PapFFiuhP1XuHwsIXyh21GZY07aBB2EL0uvSnsO7ghEN4Qf5i/vHIikNgV
	 v986BAmTLh99g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97D1AE77197
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 17:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173609855360.29908.3205327051327820007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a5bf27d2b68ba0f9558b148e104878cfd0e9501920d5729f11f9f8f9bffa448
Date: Sun, 05 Jan 2025 17:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736098553
