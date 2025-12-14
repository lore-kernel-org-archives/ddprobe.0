Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A60C246335
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 12:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765716174; cv=none; b=m90n1KyXHO9m7pLXxWxjJLEsavfEmstd3BG6kseZAKb+ARK8hRKwtetovGRUcbLtAmZ+jV1a/UDqeGKJV3QgRE31/bcyn54wQ5lNXpOnJUD39q/No4zzFrRjHVAEtY3MRPQT/YX8/cArreoXwP3P1ek+MWHzJXEzt1hX4djGsug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765716174; c=relaxed/simple;
	bh=S5Ei0tXH8/YyL5lgOyvNDYQGshgkCac3SfDz7c29kis=;
	h=To:Subject:From:Message-Id:Date; b=E9ydOhsU70wuveZJfpYsDlf1PbCPfbJrC1APs6aFMz9h3YifZZgdSMDOPvpE/frPm4EzIPemlsw+UxYT1KD/Ja5/MDvqjIpfXHWt3thxO1hdpwY617RK3l2IVNiqAauUypO3Vg0WrSrEae8HDWf2LRZLJzIJ1naO7fYYV+Q9NKo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LY8IKCn1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LY8IKCn1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5AEEC4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 12:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765716173;
	bh=S5Ei0tXH8/YyL5lgOyvNDYQGshgkCac3SfDz7c29kis=;
	h=To:Subject:From:Date:From;
	b=LY8IKCn1lmwBLFQ6r690WNG+b4XmPOcEjq+e4Oz2iWGJUcpwxt0VMYH6wd+HGaKua
	 r+gdNFUdEt6Yof6bJXPgyJDw2WvkL52gN0V66W8Mh0vKav4EWIv5eWf7QGPMOAvrtx
	 jPgqKWphwAMedeSV+JhgM82mcUzDShSJvYE+J1B5KVW2ZKMCafrlPGEdu5HbLga4cA
	 kmcNbweZUI+WXRG8px16+ZKVWBqMEqlL/1aI152KiJeWUYiREBn2kl5iDpPJiygdR2
	 Igc/CYe9N54Wq3vkMDo2gkfwhEH742AFNUfate7soqAg760HUNeFj02pzNNs8hVrT9
	 7PmcD1z58eg3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91337D59D99
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 12:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176571617358.16362.18374204020735190954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccde95e3f31e9f62f4b91702eb5c2fadf1f6c1c43a573b7cd516ff551a41318c
Date: Sun, 14 Dec 2025 12:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765716173
