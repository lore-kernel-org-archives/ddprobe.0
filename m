Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9417E2253A1
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 20:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789849834; cv=none; b=u4o5ngkcWPkPwHW1tfTcZQYJ3CXn8aWo5sOzFZryWONMMSDtJUtjZIvlFifA6kx8p3ovDEevCE7Tu3T7XNfGUnwM0p9uDt4/lazCm78V5QqJFB9jgIBr0DoChr7lx3UmyJ1X5SXr78wJZGfduxYHQldbPqNLi71BwCtiw6OM3HI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789849834; c=relaxed/simple;
	bh=sCVn1zHRnEwBx4wE70hUVj3XPlQE1/bxA5Z4nSdUtG0=;
	h=To:Subject:From:Message-Id:Date; b=jfclaxHqQcIkYUQrc0zJmVrRDKnScfUhptMBWo4qZ/slMVMhYzGHED8a8C39ToSiQq3M+TbC8N66uK06DJFFyukmmB4SrvMc3RRJ5mrvwvNzUd4E47i2xcdSR30/FeKEzRf11783mMaGUCJfskLjdUyuJYCKXXTzgaFcLhmAxQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kuN4gv5h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kuN4gv5h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4F7EC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 20:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789849833;
	bh=sCVn1zHRnEwBx4wE70hUVj3XPlQE1/bxA5Z4nSdUtG0=;
	h=To:Subject:From:Date:From;
	b=kuN4gv5hhU93oHErhqWoEb+XWf9A6YE2n6OjBvlfLOrzw8/Z218yLtl+8IggF4sO7
	 RGzHBPbrGPQgvKCv8+3P6cFqQZ3JUrn5PC+UwXV+/Svbg1EnkoAxkWYZmpNRH2FTza
	 VGdnoUIdKMcDwcTTF0RRJ/ZDTWlz4ZZmSaxzBRwiQI4MqPh5kimhk+l84ycapIEqma
	 48zxwuZfbMtvjxbx3aUaEWMzprDGhoqHpZkmqLwzmls8S8M8/9MOOyrExeLtinhXwi
	 x8I1HK19MFBEW4dxQIQvHBwbwaBWzoKhPJMVKfIAs1pJllbC/+uXl33cOqwp3Y8FTG
	 aIdtZJ6qftYRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B091FC982CC
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 20:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178984983368.16477.3424221489708599954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2ca896db61ea9825826ac6257a6aa3f059c03e12ef7d8876d21881a39e96036
Date: Sat, 19 Sep 2026 20:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789849833
