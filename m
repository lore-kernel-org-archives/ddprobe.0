Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9BEC15C14F
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 06:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772260493; cv=none; b=jzECGVNJoJAs9PDeDuznI4LfzlSuuH3nD/+5boP5dn1Yg4z71st9W6kOia7jZy7Kq4yk3u8Uk5VCwno1N7uDbS29b6f0nhOg+zpGugQCDXf7VhTxgPBxOe8eq+zKHhs4CVMUtn8Z+XC6bzcjc5ha9XBVRjMb0JXAPRXWKjlPnF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772260493; c=relaxed/simple;
	bh=SYZ+rtmzZK+esexSVRft0AgK96Hn/lUfj2h3fLKkUrI=;
	h=To:Subject:From:Message-Id:Date; b=LEbSj7WlXzp587p+IgJ6t/zCxHL9PDP4kibhnc8cyQPQcna0CcXalyosx3vk3AlMYQ0jNmABEKeP7WovnUNtZQ9Mxh79De1JkxkRBHuYOERac6nlwouZvkWdBY8nV21NqOqQ7wdkw87XyuocMazcipd+VVRSV+8qyuglsNquBns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SPyaTI/G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SPyaTI/G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C15C116D0
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 06:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772260493;
	bh=SYZ+rtmzZK+esexSVRft0AgK96Hn/lUfj2h3fLKkUrI=;
	h=To:Subject:From:Date:From;
	b=SPyaTI/GaWs2l34yHxL03X9FqxhUAmKp5Zh/DbTrR0yPsKxOSUfGbmlGG/n6qkKp/
	 kum9OyjEor4worX3XM+ON3zXZWRxMC7mSog50g2E9zb1Xfrrzlk/xHqb+pUs+2ROa3
	 4QUmU6+z9aw7ekFWQgfDJ3EpEKGR/31B4LE0/kbfRtwZ6K4kFw1QN8kXeMZ/XRBrSl
	 L3wpN3f9RWKbXK2GUyJNiKfjk+imTuqSwwtfKdabFUUGTv3ugjRFgQlBFjFcCwyrIi
	 QHX9cikNoWZsMY+fx7enReYX2677sA/5Dem3fz2vY/+zd9dZHnre/G906T/zTAiCXQ
	 bStU1GLwH2zHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA34FEE4CA
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 06:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177226049358.31413.5927935639505336034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8e90f5c2f5a23db0f46b798447eeec3894f83f42d2dccdf090aa4cc1a938c34
Date: Sat, 28 Feb 2026 06:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772260493
