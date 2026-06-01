Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55A3C3D9DDE
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 15:14:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780326874; cv=none; b=MVtVAZ6sAMRH+RDG/q/ADO57JiWFEMgpakzIHjc48Hvwm4gJPFIDlH/9JoUdTe9vaz8Cq8xkEG3wv3C009HNS9OVlchxOAbvrAlk+M+uwXCUqM5vjelotTVriY3uNHmkrVYMA5MsAqLaGhX662BdpoUvgteWjWERh0TSIhIGkUg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780326874; c=relaxed/simple;
	bh=J5Pt3PKkb20zG8LlRO536T8h4hHNKVepTp0edaXLCdk=;
	h=To:Subject:From:Message-Id:Date; b=UxQimM03z5lkh9A5ZZWQUyGCCtvNVIhQ5KLY33qGo4qcvZF2dsuhWsIVlRT5edaRcQj2kzNJj9FbVMplmNH7xbfk7QgpGlYJkt0i6Rd5rx8CkRm8hFzPvi3g+kIkaymbGWoBhq3o0gsPE3Y9Kf8h1h5FIuVR9iZBwTSVcOrGhOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HBMsXTPB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HBMsXTPB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5C38C2BCC6
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 15:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780326873;
	bh=J5Pt3PKkb20zG8LlRO536T8h4hHNKVepTp0edaXLCdk=;
	h=To:Subject:From:Date:From;
	b=HBMsXTPBO/yhou97qd4gD5xOlQHRNOgzzDOXf3IibNk1652PtwhPBX2c3XFw2sff2
	 deV9Bc9mIa9HwX/DIOsH/YJsAPlVj48qx9lv5TXPhKwzvePYGgAnYjocEpEgyA8hv/
	 ZesERB5DLnHFAJZV+ynfDLv40Ooo2Bx3bgGTWHndGTu+dEXK5OVorLDuTlRI/ua3JJ
	 go0Nr6u50QSZq3oJBLmWkid2mINFhxj6fxcgqjAhDqx2CwFKKHLnnuvS8yR/O6i8N3
	 H8pZ6JZ6ASOnXnMVlIjEbQkqWaOoRddkC0VxZEV3Q7MH9eQ0hZhXTq64UOVV19QpRO
	 7F0vAlFPrunXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD228CD6E55
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 15:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178032687369.30451.3303899422417631916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e36b4c73442e69ae8de6945c161ce654ea9ac4e507431ae13fd680b37116afb
Date: Mon, 01 Jun 2026 15:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780326873
