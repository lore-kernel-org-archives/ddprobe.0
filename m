Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 351D4126C02
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 01:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765763574; cv=none; b=bYWo+gZMvwJa9W7uIfnweXDnPpThEgUsbwOG/5cBlxQRQfafUGM1sWpwpfVse7D63c6Kca08SmoVGjosf10oTVEG0xA1xSRUf82PDZIpL+XuJA2QaTeGAvfNZYsgf/5yUBB3uBfu9jgOJ8atoBqbU/S1OVcC8cUXqkumHgsRzYE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765763574; c=relaxed/simple;
	bh=NhIC829KNAAnbJNr9Ht2KKimgHHrOxTdpjRw76MSEp0=;
	h=To:Subject:From:Message-Id:Date; b=lcKHJbu9L6aO7SkKS6n8lrFIX4fEgj/hoc6lLZvB1BT05SBIpVurw3HHQEa2xs0Bd2ZmcG2cd87VwyVMxzeUft7p1JzclNBoCP6CaFf0hvJ4SOmZC/BIbA4EIPOKk8fnL5KevaV2J/z8BGeHJsojqpnFgCLlGTVy1tUpbJ0m64s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IA4sv+07; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IA4sv+07"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADA6FC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 01:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765763573;
	bh=NhIC829KNAAnbJNr9Ht2KKimgHHrOxTdpjRw76MSEp0=;
	h=To:Subject:From:Date:From;
	b=IA4sv+07DzTeUMN7jXW3RFhN04hxc8WXUZQPVCY02+k4wnkRIt7+jJlnaEaN2w431
	 7zK2wrwKjo4c7ajZkMljCAiXAN2tM3ya1xLkZF7/CnuJsAgbvO1XtxnQfIujroRN/8
	 qKgznx0tq+oszQM8oHhOhdxwb2wcDzH0VA+FwADIaT4LxZherJUokD851yuVDtgY90
	 QzZSnnnciJ4+oxUGNChJ6hqstk7+ce7y5CvR9OCXwMl12chDGp3o9Oth9l069oYIF2
	 ZDdQxMi+nHtP3M+7h9HR8sO/o+YCou67fx/aEyZnlZn1IodkIAs5QihYNGC1tdbwKz
	 XFOmh0NB9Bokg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C87D5B16D
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 01:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176576357358.27900.15963783781608537456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4790a6c2a07c598ba1cabae57a51f3d06d6207049a99901b76f8849602bd966
Date: Mon, 15 Dec 2025 01:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765763573
