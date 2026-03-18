Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FE3837E30E
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 21:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773869694; cv=none; b=XzjfPwXV2y3UyqOVFhfQM0WgsVyV1fg1g3odwdiGFhAYoW35qz3tOgaTup2AFldgIZBOFBcINuuXZt52R9eHYnJX3qVqk+N3JiHH4LB+DzomI070TAe/9fTu6Z0Tto17k1n9OJn5jCESKpsi9cOI+LdspmTBNQNo56HSM/Fy2lg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773869694; c=relaxed/simple;
	bh=JzW4ayI/r2qiytrqP4s3xBAOhWMwM/ZMwKMqm7Gap5o=;
	h=To:Subject:From:Message-Id:Date; b=awH8hj89lQIf57XY082H1qf8ljMuSgnUXw3T2ITrAARaUmyvDjKF69k7+gtBxVrdsY4D7U7SROLXDJkMSSv5AKZbZML5Sks9HaIicIDTIR2VA+5QRhYW0iJM6x4sBMoxVjcbJKmgfIVp989ao6I7r7ZYTSxFLX7or+alElRvu/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eN+kv5tY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eN+kv5tY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A48CDC19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 21:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773869693;
	bh=JzW4ayI/r2qiytrqP4s3xBAOhWMwM/ZMwKMqm7Gap5o=;
	h=To:Subject:From:Date:From;
	b=eN+kv5tYUPPbCj74NKksAkOfLktpraOP7AU7xdil4HYwoNjbEQ6QCnADBi/KT+inX
	 DQo9EQwqEDpMku8Cb3LvRelASs3g3PT5iUpva0OLZw/NNJYDE40ZaTwsIHz6CW8peI
	 fhkhLAxRWLGJ2HI+2wE0/ssrtgEfhCwA/LnOiRir6RDDtIqhCedZUdAO/WXjbGEn6c
	 EDSew8a0/Bnn0ddn4rovDxAMQ7FmAqlrJhXMXiIel1qu8V2KIEvvUscO84a4IAUBdD
	 hyOAl/rFHs8A08DsrCL8pAa7LDiUHxFXwqUjgiGKIQ1MA9lLIvkMSN5yEVMupe8vui
	 dsxi6/B7A/D0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A2D107761B
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 21:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177386969358.3400.12690321216566504691.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 968f2e51743a57bc86f34baecec94c93859bb0f601d187d18b1efe4dc7d5585d
Date: Wed, 18 Mar 2026 21:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773869693
