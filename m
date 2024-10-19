Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 340A0190045
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 23:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729380954; cv=none; b=Pbeb4R9hcB5cUFNOSdJl+HP+GgXusih6vUbyKRe48gRkvafCizAtnpCbBV3FRStZZD+vEO7DUnSzPsn/tpjX90iSZB781Wc3pdxTzJMyJqlG/0QhDQwxHO3Ejpftg7EvTLYmPi8txp3JAMVb2yOigyST50HQJ8FUkoW5IGy68Sw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729380954; c=relaxed/simple;
	bh=4MYUuRl+AtVTpOhMENrzUMp0oo0tcIfHwbAmGWVfiMo=;
	h=To:Subject:From:Message-Id:Date; b=CSvAVpjyP25tTWjoab+yb0HryAPOESa3jQLukUY76SQJ0skcUSn+jczYuQoR6eFaDNVGQLl53PnjNzrCojcw33VsoU+AbJBuE4DG2rzitW39tS/SXq3myTzAaJF5zYMsUoUxbgzRqyhYKBJcCOuwJeeYTfNyvO5ZNfzowe8MpHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=foCyhkKH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="foCyhkKH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD553C4CEC5
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 23:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729380953;
	bh=4MYUuRl+AtVTpOhMENrzUMp0oo0tcIfHwbAmGWVfiMo=;
	h=To:Subject:From:Date:From;
	b=foCyhkKHeDglhPjGR0u/wipagcXT8/pZIRPDVsStnMXomlH37sAkKyaMDnobyf3uj
	 fBimI6pHG5S23+Ul18bT86LAEe9pnne2VLXlgsHb+C0Nw/udoNVkd8pt0fCKXEXJml
	 lxGwpF5rj155sObJnf7FF57/ikMEcCoYUeppNTcvIX/ehx1wdK9WbGpowmyC/oiqC0
	 bCPRce6G09iRiek52WzeMsbxvv7lIgLsnV1hSpiaFJrqmX8C5ga+dyzUvXHJv0VQ/n
	 /f1MkNeY1fOZc1D/jUe3pC/jF/RVk9SBSZuMoDjAkX5P+MqDn684rhjVXD3VsZukPu
	 pZxDQh0cMsaUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 995A4D3C908
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 23:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172938095359.25266.12007981027169370716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0be372275e9a7ed4d963dbf7f366163a1eef6e49d74bb41cef11779204c44d99
Date: Sat, 19 Oct 2024 23:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729380953
