Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 121973BB5A
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762027794; cv=none; b=lCieKHb/UZ6ZCngMEYExp6SyI03GUJPd0TlG7VVSJlaykmPioHZk0gN9d/JuJwfAB5VIiGhz/XmjIIizlviSYIFuBMzX+Pa7DqE9FUJyKQNIxGNYfCn1CTXHZRKfUf1UygLPUruxwI6PrAE0JUZqWoEiIlcAB6Ef0sfiyZpLB7Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762027794; c=relaxed/simple;
	bh=8wCVRDI/ok8AVQembfWdnCeJSi7feilwmoMMq6UZd/I=;
	h=To:Subject:From:Message-Id:Date; b=u8qz5kZtzfzMfNJnGXcClly5X+vDEcRrOuWXhNMLuZQAIDEydJGpG+Yre8p9y4SGKwQPxPMPWIko3wIsUPiDZs3defZOz7Syo37YA11o4fRytoEBvzCJ7BP+jVKDKbBIHdbeyeOqUETRhk5jk7zCUSDP3RyAOrMdP5DPTY/ryRc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CI8o3lyD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CI8o3lyD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3BD9C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762027793;
	bh=8wCVRDI/ok8AVQembfWdnCeJSi7feilwmoMMq6UZd/I=;
	h=To:Subject:From:Date:From;
	b=CI8o3lyDLJKBHOZ/Im5BJZCI/StbGnJyTCOkN+CCFAH3aEmCFBwE0yBQS87fpHaG0
	 d5N+FLI/+wxdnuI9j9gKld/c+NzO7nh6BQNcTDd9orBvz6ODZmJq5FUr53ojXoHx9V
	 uwVooVZak2+Zz9nIUaGvt/81Ut4YDjdciGsKF0ymUbFcG7MqAahb7tr0jdfnDIBPY0
	 4eje3GEiHvrjG3y8XE7JTalL+1wVDWCt94YFtHN+B/s7i+4vdzRrxqHNpcvtv0mJHT
	 Fjl/vAE3zzRjZ+slLsAzwjuGpklKHGxaW+vnuoBJMn6oSEFoo+lOgjhjj9kZkAUL5n
	 jZX4i0P96L+Sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91129CCFA00
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176202779358.13047.13026454372753279292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 225491a55a7c0d4a08dd262a0a29d56d86a2018e46e00f89ad17345bbf86d78a
Date: Sat, 01 Nov 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762027793
