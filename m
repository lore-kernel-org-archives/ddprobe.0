Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B7133C488
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 03:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727150154; cv=none; b=Q/aNFM5sg67wgQjoWeyPPV4EpVjDTyYlF6920btYvnpsQgaHCITfvI1WoY/QOXQ9HutiZtzehlbY5MmiJm5VvI166H5r2qjRbWUldvWnpEdKvCg43jPD+Vz7hbYXu3+/C2IE03Cx8fjMfEpaTJtSakREP7Ke9kXPSp37pzKBS+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727150154; c=relaxed/simple;
	bh=tuq9EHWI/Rr2EcVX/WPq1S41d4NIhKWd6A6dlmmVzAo=;
	h=To:Subject:From:Message-Id:Date; b=TXGJeirGKi3ZGpTLEu2e2sP8vkcyFW9RRsiBNis6ag1Dn1bG0fHVT3b9A9d+y4zJCcTXJjbxkvunuroOgFFRLjWRGmivQoXcyMuLGwhWjzHIhCzS26fCx3lYKXDUhN6pf2JmGdNCy0EAi8S/cyXTRvA2ZgSEcFwGNt9bMWaUTmU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H8mfGjeK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H8mfGjeK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7358C4CEC4
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 03:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727150153;
	bh=tuq9EHWI/Rr2EcVX/WPq1S41d4NIhKWd6A6dlmmVzAo=;
	h=To:Subject:From:Date:From;
	b=H8mfGjeK9PH+f02F9szqmBnTFhghh97IPQCAkZSrBUlFYQKr7D9uowg8aZYenqqmH
	 LOrSZkI8YGkmGFRq2zM8fc4H7NoBWJRydE0TJJC15O/M6bt7Dlqqppx6/E2U84EV8g
	 sG0LUGVuE0RsMBrOmUD5ut3wu9kUm+vofr+vPkaANg+qROcRPdTzg30JmX4f+Bq0JQ
	 PKkM/9WHMB3YxtEGLOn3ZWnpUcApgaTDvSHQoNeFFebGloNHkX27Olgy63bSxHTuBN
	 DeTl8F2/EO8/1yozYuGdaW2fmNOT+N1N9jYj51Dq0NZ7ZQneDMEO02jCp5Mr6Uengm
	 plpFqTmb/VSLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95421CF9C6B
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 03:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172715015360.8876.10853378591804736453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3b52fb10517a6a5da5a49404d6e62452678098c415955e5a3a75ac8adc59406
Date: Tue, 24 Sep 2024 03:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727150153
