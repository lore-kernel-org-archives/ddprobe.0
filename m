Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FABF2857CD
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 20:41:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763412114; cv=none; b=rVyyT+Xt/Y1cc6+FeK2BHfBBNUJYV7S/r1v8nL7uueIe5uHUDdOj+S91bomgrfoJlwjs21jWwFyssnRZgHAqOG/CfegF2cu9orsNKZ1n3WuytULjGuyxFethNo2ir0z93G7udQ5qtFf3kuGwIN5cxeHhIR4zPvcXG/qb2Ntu3/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763412114; c=relaxed/simple;
	bh=hWro4Z60eRCiKSTKeLz1vaAGDQRy7kVAqL/WeNGSoVk=;
	h=To:Subject:From:Message-Id:Date; b=dSCbTI/cdDXeobglns2uvtNqT1pDcOgDpMOEY7qWUyivmkqPt8gKrljcCq/E3yAO7BWinE7ixTuWZhFVCftrExaE8ilNnqT9fO2x3iv12sXVzfD3ySaQGw+kvHYUrO7Aj3wwl4p7ff5faMtvrk8x5grRjlsaV/kShOHdWOw6j84=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ttxIDSBh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ttxIDSBh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6B10C2BCB1
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 20:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763412113;
	bh=hWro4Z60eRCiKSTKeLz1vaAGDQRy7kVAqL/WeNGSoVk=;
	h=To:Subject:From:Date:From;
	b=ttxIDSBh9KwpklUGXB/Ijd7O4mpnbp0uBuKDS8xIuzM/neTcbdtwVkRZPahEdV4Tb
	 kbFchmeadGUNK1D7HHYytHR7DmUacrkzTV3FtERREvAVS8DskVI8mvHoRclVVBXVpX
	 6kZki6wOIHHdD94EoaSUMrby8J8eTWt7dPd+zsjlKC2AFH1/vJG4L0Z1kx1NsYYmHD
	 +07cq8Jv/U59+L2M0h8DzdX2zkYe6fxVM7wvJRgu1Y8v1DIxPsA4Ad7VrkEYKTsxAf
	 AOu4/HQtbUdUwsQ7fzuMRW2CFqt18EQ/eKmQRzj/PPGXSHWBs7vifwnUrVzGroF0Uu
	 oWO2Dlu5HDj7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9790DCEACEF
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 20:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176341211359.30182.14669369545308329637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ef31ef72e5542dc6f6293c4938d0c009f98cd5a4f9e8761db2533438eb5a028
Date: Mon, 17 Nov 2025 20:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763412113
