Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10A4827B357
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758553794; cv=none; b=TMT+WYAfoFAKZNbdtxtlfLxSDjs8MCkiKiXmPfZSDsfPOR4cbRctS99ibv1LlQhW9eZM/YS95iab4YSfCuMc6bh1/F+nvlZc3f/ZdWBH+LHn4Yzm7KLx34ft+U3Qlps02tRFxd80l4FA/h5tZuxqS++pqFGQ+XCM+NVZ/GF7BvY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758553794; c=relaxed/simple;
	bh=yeYE0xjypkCyDBVxjyE7sW0ZFpBbHXJEthl7id6bygw=;
	h=To:Subject:From:Message-Id:Date; b=Shj/v7ePufUHPlD9+TKUPIgEGKowsGs4D1SnIwfaMP4jO9SZP3eHr8CE/vYZej6jF/sRXiwLGobL28EIkes/wW3UsWxeWrgg7bltHllhkAUc8pW3I//V15ryJsFwHkWAeY58nD8gnoQ9779bzM4JU+xkJFMFhDpzE09+FHHYTCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g/iiGKXQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g/iiGKXQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5365C4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758553793;
	bh=yeYE0xjypkCyDBVxjyE7sW0ZFpBbHXJEthl7id6bygw=;
	h=To:Subject:From:Date:From;
	b=g/iiGKXQkDK0iP5scSMd8/QEC0DdyeRYgtU+zpuSen0rNYOLr1LO3nWPqwuQCxlHv
	 R5KTURFwRd0XXrZYjIuMfoC0j14vA9f0gHpD1WMnH0JXYpuYhuAvnMQviPsIcY+Hvi
	 /JY94ddail6xCWoXQ+K045owqn/TazRMlLmO1QJgEPeIchdc52ZhMP6X3lq3sOACzU
	 TTLE59RfYrCm+Pehqa5A/SKgZSmGSF0Tau7M/gspDrrGdYvkt095zwDocjhn6d0OWX
	 mTJxMzjmq7KTQuS6J4rrEbf2u4UYV94EqoixVbpHi+O7Piu8OVIMgqJ0ZFdHuBFQZA
	 7w0fRSv4IEPIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92682CA100F
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175855379357.4314.14603101872316642416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ce8259ac856566b84b0d17097c8095aebd950d13d2e662bfb4dd886de41f1f1
Date: Mon, 22 Sep 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758553793
