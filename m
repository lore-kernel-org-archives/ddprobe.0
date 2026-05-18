Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42271381AF
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 15:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779117034; cv=none; b=bUcRFhe4H0ay9NQ+Z56QBKc+l947MrgHE3QykAfjvuXTi27IcNDPXsrA0SloNvMWe4ITAM52xK1nl45sJQsLl/+s7s6YKveszztaxw4x4GntOt0RoVYlFJHRVwTR/Hjcz+AUQCjQ2xPxYMFiJa912lknVFLzsbII9lXPMJuyC6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779117034; c=relaxed/simple;
	bh=/HI9cXNXZox71AUu7DbA+YV86lJx2RO8iADqeLp8o9A=;
	h=To:Subject:From:Message-Id:Date; b=BD4FVHVCCWQd1l8jarHiH4XBVfONxBn4CK7HTXsEB/UUg3eF/mDwRw6EzvaJT79hzxMVG9nhRuKN5VLBPCC1jCPBwdS0i+KnBOq1HjNzWM1CWCMWDyMgLFsyWWxvTwArO9dGa4Rq1aPCP+f+LYKwmp6ZaQTMZQbngdo0Jx6fEUA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jSPdp7EM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jSPdp7EM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE9BBC2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 15:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779117033;
	bh=/HI9cXNXZox71AUu7DbA+YV86lJx2RO8iADqeLp8o9A=;
	h=To:Subject:From:Date:From;
	b=jSPdp7EMJnn/q67abQirLn5obO0NQdSPgTGVJTSSLa28dCK40appVeyVtO/NXn4Pn
	 XHObapj1kf8w2nHAos9dKr6RqPkBjEKS4/u+E5at8gohXJEdaEJxKqAPJ5T45yTqVu
	 s8+JqSy8IqAESBf5t1UjQKb86AhOMAA2NxUyM9JNf+uFsrqtjsith5kpnNXw6lMLZ7
	 JX3NOXzHyJcCS2sssv+AaIGcEE2xwduiGroh98SMh/K87k0FdCOKtt/l6w5xuhjDMT
	 KSZ+7zW/c52bx6oG3Ibm5QakgeODCWhExDZpUibDyeWrRXDkUSigvllpYWLQUjJlYP
	 Q7EkXu4wL/NHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA57BCD4F3C
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 15:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177911703374.7381.771937496690266363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19a2c40508007924b9d36d69ea5f21ecfff1479909b85ac22fc32bd54526d2ea
Date: Mon, 18 May 2026 15:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779117033
