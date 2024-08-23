Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 366B2186607
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 13:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724418954; cv=none; b=NO4LPfmI70FAEVARQ02ek/du25fA8kiLxhBXntrB19Nes8A3oHm2zWpQ+uYvtEubuvgquHDZMXsFWbyZqMjS1r5qjGKx7QNYvAcDQ53oyfhuVKa8gtT+broItR8BrAlU+mWgcG85frKcgH6E0o77thiwQye1ULO5pl4a/dPJBTc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724418954; c=relaxed/simple;
	bh=R41m22VqLdV9ieTzkWfJYu+fK7Uesgdqm9xa31tRfvY=;
	h=To:Subject:From:Message-Id:Date; b=qG2vHo9eg8MFn4TmY8PlQT/YIJbcCRTl4aPRqeMTZmIFbQlA3DAZ8i03vWSlFCsnT+Dnt6sJPDpk7/dY9ro5nnIHFalyGJ1KJROOWoA/7UWvvyH8h7+5nl9jL8sqAFVbd3LM5Gddb9h5uX5i5suJ+1tHw5zoVoixbbNc3Z7JotI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xy9b57UC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xy9b57UC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7736C32786
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 13:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724418953;
	bh=R41m22VqLdV9ieTzkWfJYu+fK7Uesgdqm9xa31tRfvY=;
	h=To:Subject:From:Date:From;
	b=Xy9b57UCbpmIBp00VnxPryUJBoJAGWhCiR1jaXYxvh/iDHJYGJb8inVNGP+hBBavK
	 tOPZM9Hfyue+LuFJnQoGJPW1D8mpQe821LtfDBbtan6H83vIH+3JJNQrGWNjfBQSOt
	 wGInyT+rKfoMWGpYiGErMrXaBdDRt+EX08Eydjx9OFS6oIKdmYNDpF7ghfPizRb8D8
	 D1cTwk0VV0nyr4OIF5O5nEfpSQ8WG652ShZUL0VDCZhd78ko9SQ2j28QBAwEkfA6+U
	 65vo1T4XS6Y/1DlIQgj0banQ9xMcbfcJOsZJoL+aXkgtQ3btVRXjcOCZkf+dCeJ2FD
	 LRlzFtnpDSQHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 972B6C531DC
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 13:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172441895360.12344.8292696540224594552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f62fdc81ff57efdd901087fc7d05dcf26df34bfac87ff9f1114860b8b8a7f51
Date: Fri, 23 Aug 2024 13:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724418953
