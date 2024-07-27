Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43EDB197
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 03:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722051954; cv=none; b=NJrMKIcMeiXBnBr4OOr1buB8jxoJnV5wi2FCoHH258e10DDhE9GVkZ322hnWWYPdjnHWsZiMRZXAZIUnB9KEiOy/j6Cq74TweQKD5Um6XwtsL5XUhqR2F8fyMecuOMECbjfNIGeKxMKA2j5yqL2L4M4W+r676Z3+tN1e7nqzw8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722051954; c=relaxed/simple;
	bh=jnEiJMcqmV0/cHU7z77JIhFboU8xgkpemdYGleORyTI=;
	h=To:Subject:From:Message-Id:Date; b=HL78dVr9EOYPR0Begc8+IHp1hEDrTnnz/o3CuxkcZybL4oV0Y9YuskYADAcJxTA7MNy0xlPQSeSoS7NXG+imw62zL8AXPjP6w0k+4Ek2fJBAzlapsfVK+aCR4wBw1idj0kcI5e2TLUCdKm5DywV7sXM5QlDhawxDPNbXSayNG/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ct4WpKnb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ct4WpKnb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8BEDC32781
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 03:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722051953;
	bh=jnEiJMcqmV0/cHU7z77JIhFboU8xgkpemdYGleORyTI=;
	h=To:Subject:From:Date:From;
	b=ct4WpKnb+w3RoToxTlnQjZM/By1LTf5WUTjNr4JrS905oQgoD4A47khQ24Va1Yexn
	 5M8VRoCipZe/DcPOlcVSSwSITt0IhlYe7gy6otB7Ea/7J5Cio6gn01JsAtHY3W+lFB
	 pTz6SN7B+FvrdOnzg7zv1kn3ueBYqWiinfnVMLUmXNThLPRCn/NbUK8lrUKryPv5lA
	 X6n3deerEx83sO7fAN3eJjyDkbAdutDCst7iDU+bt77SusQ3TAy61zcYsE0QQrrkLj
	 rGeq/+gYf3I4xiUvHKoUPiNuRWFXCeJYnECgWXOk62oU1LbXkHErUWrj+eMC2jW9Jd
	 a7Ij/gnzAff6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F06DC3DA61
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 03:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172205195362.2701.12744878358617122731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1824d8d3ef9d2e71d40f2e82a7106540f4cd6ea8747c457e57cd6fd99f397cf5
Date: Sat, 27 Jul 2024 03:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722051953
