Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 346B44A11
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 01:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732410954; cv=none; b=DZPN7SrO3hEaYB688gHO5dUs47w5AjuyoaFu2roXeXfM5kEDDY8JUfGFH6DKTybLjVerVWguVHHDn3BABylCLUXKmcV4exNxcvW/t2J24FqtjL6AdazCsSmejLEAChb5Vs2i8jsUw4bJQpcdnbvzjNyTf4m4cOy+loCMvLZWvDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732410954; c=relaxed/simple;
	bh=IVTV85oHkI/My2KGj30+mVDJjy2oxYRL/cqky68saZo=;
	h=To:Subject:From:Message-Id:Date; b=t0HNRY2mlFAmoLEdgSMkZ0Vfcuac0Y4Tu46EITf6t9ekp0lX6Zvwwk0mBbNXUWx7XAzoAVMp2bktpjnjFucyAMsZpKTLn6x39lPUDOjRhcxqeMWU+w3tCcE78zjGuKnVhD3UeDVR+Cl9iyA3M7hd/mCD0UyXsxW0Rd2u/4/XZJw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A/y+isUl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A/y+isUl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA5E2C4CECD
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 01:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732410953;
	bh=IVTV85oHkI/My2KGj30+mVDJjy2oxYRL/cqky68saZo=;
	h=To:Subject:From:Date:From;
	b=A/y+isUlY30y8IveHQLamJAlbqeqCfzddE9PiQhrtwCKiY9TS02Lq0aF+ieOP/QQc
	 h+p6tKl16fSW2eH6v6tITNm10WHeDHSAeN8IiEVWOa/17aSAhvmo0Pt7kWDkXybZ4z
	 BsdHagx4ZY1onYkOH9aq+5EWfMv2P3LqT1P52RdEnvCtKBt9LglanmRSpH7ReI2yiE
	 fG7rvNYY42SNn9Ud4ltks18Cmz44SuvU9nQhF34Iv36sRVSTdsImVv8YMEkjnxTrAA
	 aJALyO0xRetgqQ7hFaNLofxcWE8Q5NSSY73pJ05WHHXJeZlH+bEtl1LXyU0z/bk46l
	 lDu63K3NW4ILA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97BE0E6688F
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 01:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173241095358.20486.9849470008671192309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbaa03ffce3e8e57a6f604080562d8721ed1bfb72afd6ced94fd0f9dc86d3dd5
Date: Sun, 24 Nov 2024 01:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732410953
