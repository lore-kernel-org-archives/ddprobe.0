Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B3F71C8611
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745257194; cv=none; b=qYruNW2o9I2+saGH+tAK16/hBmpJLj5lrFSfmGJ/WzGZbV+DuuauQfkMicF86DbZdJGh7TTviBabFX5PiLR4qm//NFYVjtMfa4tJSu2vPuZyPOQAVa/mHIzWB8B2g7GZygoB1pkrJoL1yZONbYE4L6AFdS8VTYDFRFoXjbImBAo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745257194; c=relaxed/simple;
	bh=V7CbUFikDhFWLVDy9JwrVmp1obKEBJUEqko/QyOKz5Q=;
	h=To:Subject:From:Message-Id:Date; b=IuhBEwYzZRcARYq/dnwtjKen0o4FMgQ2NsFnlXl+hGxOLjV5ol8ckNHTrL2vtfixhGuR5F5XKJ4+jqsxJNjHha2ml+o6OgtTefmnl3+WCaxIRIm3DVeq5C55++PkGbatkIqFOYnYJ6FbDsAQxOTq9RoJv8DJ3opEXJQz9Y9Iu/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MRqeoa07; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MRqeoa07"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4A17C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745257193;
	bh=V7CbUFikDhFWLVDy9JwrVmp1obKEBJUEqko/QyOKz5Q=;
	h=To:Subject:From:Date:From;
	b=MRqeoa07G48LhKzPsiaq7q7gH2hdmlStuusdUhtfMVbNTXi6KEkQkR3eYTI9QgwJN
	 jxr6SOo+UPNgacT00gVHrZMPuishwhgdYxzeh1v/Fk8Vp4aGb4G/74ZYzpxtJyiSgZ
	 PwUS1AHi8ryIdmKrP5uWADyZpvqH4vMGSgfvhKMzzxV2W/4D60tBe2wbPp8yFudrWz
	 0VukUSRsvuMECEOk0cd/wsWRVHqAaS1UHKzhGgVInkO287PwMjXUWqQkc3HJRSVqcZ
	 sHYUL149tcxi8Dpm9cf46ezE10gu50C6AgkUBkaQ/CXSVwYbXzc44gFF40Vhes9xqd
	 L/dHO6aZXw5Ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF20C369AB
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174525719358.14363.15450706261506862825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: caf968390ed7a465642af6b81ee15921944b2250aca3106b601a4cd7e2dc2264
Date: Mon, 21 Apr 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745257193
