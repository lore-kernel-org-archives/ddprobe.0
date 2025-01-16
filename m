Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB6C226AF3
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 22:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737067553; cv=none; b=k6p8htmypde3ZKj6jjFKS9Kup/Jp420gXQ9JoIzX/QuNkSiBzZDhWjTb5iO1MQ10Im3CwqDB2rpymKm5GOZjXiK8CsYdTvVRCQTHHRxHDrbTgcMSuc5DjbUfidCzZV4MDYjsapa3gfZL9IEIdQ3YxqNWlLsF6YIxluDlcp+rQco=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737067553; c=relaxed/simple;
	bh=oNnnpQ5Ms8xvvg3Kh24ntA4GicYPiNVZPdpyp55UH2A=;
	h=To:Subject:From:Message-Id:Date; b=Uq6RcT9+zN5soLIy2RSS9voHtBd5sE4YuyDlF4M6KyiLINSCT2G6vIDPgTymzNppyL0oxrr++X0grASg9ZqyiFjDFQE9sTE8QC8q3hIg1ISwIL2QhjCHuY9dZM0rlK7Favu9lFL40b2qRbaCpeqhENZxcBY3o7kXh8iK7O64w2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TTXHA+b5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TTXHA+b5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB10EC4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 22:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737067553;
	bh=oNnnpQ5Ms8xvvg3Kh24ntA4GicYPiNVZPdpyp55UH2A=;
	h=To:Subject:From:Date:From;
	b=TTXHA+b5EcaDsYNph6O/my6jupZ1Ql3PZFedwSpW2VlJOmtaV5hdWeAYjUk3Ca/q+
	 uHzt2YMoMGkIJpyfvumWkctaKi4EcTStC9wcsfLY1jlJiDWz85YvwK01i3N7zi4CPJ
	 5HXVJnHgWZ+BxanqeriFuwfZpuat5cyi2aQAE+DeoheVi3Y2wE/TCGAhtZ0jLQuSMX
	 T4wwQrmDIfUxAKY0lOPqv+G3XyCDaj/FEYWHEVwPYyZxUv3eZ/jU90SqhLU84O23rQ
	 Ugkh9V5D8WdJpBzAUnopePKkTx8iCL6jwDlVrAprjXMBFbVoRUB1PuS3Wyz5PJG10/
	 W5RSKDglTqMiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9630CC02188
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 22:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173706755360.13826.3791526222233758949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ed574f1b003c0261b01dccf1c65a0045c68da3c4376f80c5c53113ea73ae532
Date: Thu, 16 Jan 2025 22:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737067553
