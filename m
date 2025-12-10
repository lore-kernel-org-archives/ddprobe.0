Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 350E1155322
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 05:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765343574; cv=none; b=YB+Q2qFRbBpE0GVKKMM1DIVMPLeqUFAkI9dB/2qa0qV0DTTTNryHWLuYw/AiWl6dEUKkDv0C8yXk0R1LDm6QdaTogI0+ANmtgRH6nTxXtnfyMY71w4FOpu2fIBBrIgl/umJ/+nRrbKnxcW7uOJoQsstEon615P7ud6WoL+ecAiw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765343574; c=relaxed/simple;
	bh=eA3Zljo+96SF3IPeJfIQk7o8/RdQUe0ySx+C76Ysizk=;
	h=To:Subject:From:Message-Id:Date; b=pgWACuK9ZCBkDMFNbGSJVQ0pQh/Ph5XzAeUbNNunB+qjHMO2jxSY4odDgtBr5tSsueaFgWMT1u9OJUlqiLPAR2AKhAFSMALFoOiT2iUTs3jsdCo5NgUB5aavm5a1IbG9kImajS7uDq4uxXAppQQKu6dsCgu59rlpk3GtOJmuDnU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lpbEN3NH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lpbEN3NH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A857EC4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 05:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765343573;
	bh=eA3Zljo+96SF3IPeJfIQk7o8/RdQUe0ySx+C76Ysizk=;
	h=To:Subject:From:Date:From;
	b=lpbEN3NHH2jETzbhvA9kT/5AjqLIRhvzTNbR8nwrkGz1ukebaHBV+ujGXmNUyM2x+
	 6OHBn94SkB06PVTOKFzk2wkDhJhZ05qwT2RyT+arDWqJBEo2H8B+CLU8zvtONUyxhF
	 X//BsR6hg2QiGJISCb+weeCg3QczUhbdSF9/Gd9JyJ8W+RMcdyJe4V6/oOdXNIjuOg
	 mKHT+W/D/Wq6gBzPNrFayC+PJoZzbzXkjY0t7VeuS0jimaSizUGvB1aB1+of5Dz84J
	 vjvLCIYOHJI4a9UNB2cljr41PRJZsh+40i3tUZoJ9Mal/RP3Oay06H+hEyFDJUAGaD
	 sOMvIucx6zvdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96059D3B9A9
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 05:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176534357358.5763.1545458872046777931.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb9a397eee3ed08c0ac5f53816dbde8bbf1076eebebd658143a073830f1d0a8b
Date: Wed, 10 Dec 2025 05:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765343573
