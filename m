Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63DAE3911AB
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 23:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787874034; cv=none; b=o4klTMPkH4NrXqBizS8PbPPZa0CqJFyN1tVRXC6pEk8zodQH44HFhcLZICpT1G2EkQEmVEk6TLYTyplFpdnhuJkCZd85dJySJW9gIWSv6iqelpVAeOMVfzZM2OtLwcmBSH6ri6AdJUMndT8VPrkbYrSqXHLFfn6tpBulveOHAsc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787874034; c=relaxed/simple;
	bh=HOfJLQeLJ9RP6VKyL/7YhtBkQAt+Wsx3oAAqNXJo+Vg=;
	h=To:Subject:From:Message-Id:Date; b=EJ560UulNO9wkLl0J0FBZ1Iuba7FXF43Ulo0w0euU+NJuI4xwHWJa5yVgLNgWu91jY2LQtvlMcSVkg5KdGEsHhedY/8QIVsL3rYog0SgunQ8H7pGFt5WgwYXtXeZVJMiYcacuXHpfGJ9Uq3/6hCcYRQCZrlQZItgoptp8i3NQ5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AbYi211+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AbYi211+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D04D0C19425
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 23:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787874033;
	bh=HOfJLQeLJ9RP6VKyL/7YhtBkQAt+Wsx3oAAqNXJo+Vg=;
	h=To:Subject:From:Date:From;
	b=AbYi211+VEkELavR2+uFhNfem4664ewhTGX7HjtyU1sIk84oGgjm/4XxKFlj/LCU9
	 ugaXXcT3tQpFO9OECBUjRNe44M12Glb6Id+2OxTrDZSru+ol85/ev1mwY9y+n/S0W0
	 iC5sXNg/KR/ooJvCxlf+M983co8l500L4HuDSuXv6Su85HIRqKYfZT8d1JsThefHbQ
	 qTa3ZRBxZGJ3eUvlnnB3FdG4p+V59fZxhzB745azxuErUxf+FXckSRGDJaGQm4F+v7
	 ruVkrOclVb1s6+CE+3djTyvV0yLGMEOaQnYKtvUBKpgRFOjlUdqfsZnprz8QZJIxTv
	 +EF7McJN+JkhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AACA5C61DB9
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 23:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178787403369.6375.913616602134331751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91889024cda2ca5f99375aa7f74fa9dddc77b7fe10d5d82b7e7ce659116a5337
Date: Thu, 27 Aug 2026 23:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787874033
