Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 268F413D893
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 23:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735254954; cv=none; b=g1y+Cn5+QPP3z7VBEZib/cnKbYmGdB65YjF9n87JDsOYzQXvZlyQJw+fPyxVTB3RYdEab71aSODwnFo46bMH30NgdhhSD1teUzD/pOHNMObz/9GcSal7XauZyMaJs5uts32Mqpo457PBmqn87c8syQH9CuHXl1EcJvR9ru1Qdq8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735254954; c=relaxed/simple;
	bh=eb0taf3QDKRUvvbaKv4+mRaUE8zcv1CJ4xxY3JDGH1o=;
	h=To:Subject:From:Message-Id:Date; b=DfC8AmhyQumoqtUFl1ggOagEQQZK5V2bOrIXMo2/0ud6WsqzN0bSiDXOIjM4ehikWzmq5yH7RNr70YWqxSZgxxECVLViHXsdPX6y3YzSoIjRYwPsoE3VJSENSOuodtju2TAReJLCekfiGgiAFTLew/u5+T9Hb+E4itV3+6e/svo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A9A5AWR/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A9A5AWR/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5219C4CED1
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 23:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735254953;
	bh=eb0taf3QDKRUvvbaKv4+mRaUE8zcv1CJ4xxY3JDGH1o=;
	h=To:Subject:From:Date:From;
	b=A9A5AWR/Q3CBwERo5J1J3c645R+nH0y3zHMThDiFLbaO7UaCA35Pj5eBt0cDYMtoD
	 YoyFd+eSRoQjswhwK6UeZaRjk7dkt/oYr0EIyfg6adUquf1xlRgMxfw08BfUVBlGKL
	 3LGPEySJt5uy7I3e8yiSkb8uoBRZ7Uvhg5O+R7jg4ADrwvQJN3j6X/Phke/lBNPcJx
	 +QNgWBK83dZ7DepPIWegCWAOMK3cfMPWocxYLJP9imSnXod1hMQcOpTpyI4FzM4yQg
	 ut9HaWMaG5AP7u5Tzdo0lo6n8e+oB6QbHnWFlUqzMTHM7Hnro4s4G1fdtg7xgHobGk
	 2lNKFa9nIRpWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9329FE77188
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 23:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173525495359.1567.10399456269337009289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15d2be1d1e19bb3e084e2844a485ec25568d3bd1386581bab5adb752a9f419e6
Date: Thu, 26 Dec 2024 23:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735254953
