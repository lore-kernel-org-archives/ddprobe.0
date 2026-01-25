Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21AA6F513
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 10:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769336034; cv=none; b=b9U3GwqdF4Av65nXMDrMiU+Hp4SSr3No7L3pH4u+vx+LXuto32ai722Vx+hDBJDtgvVRtZPsph0Y0cTa6NN6SCUdNlMzLbd1riHD/TqNgIVRUleuw2tQHzGiOb7Y8jiSxuhmPEo2YMPtll0UCFBehkR9Ge4br7p2nT3b10A+S/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769336034; c=relaxed/simple;
	bh=aXBMbJZyq5IH5RpxMxVftkpnA94bq7umLibZ2o0pBx8=;
	h=To:Subject:From:Message-Id:Date; b=Uq6ekjwsyl3vN1o+jNtbfDSSnix6Jfbr7K2bBmPKaNoClulPCmp833BgDT5VjgyXpFqFG26in9G4ityqvl/juvdgj0P4Gvc3aTUy2lmXJ8F46rYjY6ceiBko6kn6IK/evZrKEUOq9LcFYUGz9nFoFhwQf8Yjg4KpC3KauApq6X8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ripabzCA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ripabzCA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A56E0C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 10:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769336033;
	bh=aXBMbJZyq5IH5RpxMxVftkpnA94bq7umLibZ2o0pBx8=;
	h=To:Subject:From:Date:From;
	b=ripabzCAmvheEDSB19kfyl9jZKK335W33/y6KuEvcNDnBmVk/4Pg7sTYqyx71TwEq
	 hND+Ec/fxvTKGM9xWx98RhUTnI7e0DZkcs7xmTq8JCsNfzycg+UcIvDWj1vkh46Xmq
	 v59FAelmZD+YW/IX6PtQcpqfHRBHF45HhzpOVk6kuUgVC8yxS5nmajWo2uvc88oq5Q
	 A0xYuX4eWJLsFI2eZc3fU1/n1hH8qw26GPthCn/5Zll6QtNZQCZlbw9snmi/Ll972/
	 01nlx17t9dJuwwDxa/3tVevTYWG9e5ChVYPfFCEoCrkUYgDyuZtHPtgvuREK8BaniA
	 Oc7bmuq0qJM6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94AF4E63C9B
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 10:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176933603357.9695.9859084063821319097.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48d248c3866f36fe66bf57a299a1625229576511960351e4f84e4fb407e6a372
Date: Sun, 25 Jan 2026 10:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769336033
