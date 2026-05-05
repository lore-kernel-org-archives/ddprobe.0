Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2835C37B014
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 20:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778013454; cv=none; b=tb9PkWIEdJ+aas8Fx0XUZACC1Hh+PClte8MtD5G6rSQzNLnS3gubJ42hCng7YqhKmseRwPQYVor0nb2b+36I2E00VDzMeVxWfrImnIx/DC60kUHYNO4hGUIDic+F2+y3AWQ8Hgr1o0bUNCywj9MpwtRElL5x3zxsocZOEqetapk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778013454; c=relaxed/simple;
	bh=pqFDHmGw5Ahsbd9K1RIhPu/JLBrWFl3hIzi13SbQXAI=;
	h=To:Subject:From:Message-Id:Date; b=bdjql0XlBlyzGUg4hm0LFODLVOFxPMma8cuDpNjrfTk42A2AQ8DkLjkFr8m5TX69SVwt3jL7+5dRUlezktUr90SDqkm9a3liGAFcr8gszrl3CcMBWt1vJZyQCAJi/szhkdK1+feh22ey8dKtr2rBbYTnL8S9ntkPrpBDdWqYrmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=arqsgprM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="arqsgprM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAABAC2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 20:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778013453;
	bh=pqFDHmGw5Ahsbd9K1RIhPu/JLBrWFl3hIzi13SbQXAI=;
	h=To:Subject:From:Date:From;
	b=arqsgprMy3egJLR3iRezcq9R/Cr6lSL56S4aWRbKUbqibnlLHAfigZstnkEKoeREG
	 DhYeIChdR1Is2VizKaHQfvyP9HncHK4dCNnJG63GxtaTcoojgTjgR5ZHKVHxhNgFNA
	 9mEdQw+K2fgWrK+S3K0GGoC5QqfhK5su/+NMOJY2EPNHA2j2IzTS0BpLsUj8JR97qo
	 sf+qBUtDI6iyZWiLh72MUfjWtrtesbOVYhJO4k7EmJLd/6g9Qiy8FUtjuFmHwm4Vzr
	 XQk6DlMkdqG8PIkqj/ohArk6YMS9qcEgf1sp4ujrYw6J1Re19pxWzPqUpRUfBFrnPx
	 5ufFH3L6Po6Qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA5B9FF8855
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 20:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177801345368.31119.12733631296132862669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae4aa05d031d23413207a66c7b7f17e7e30fbb06762674748ea825ce124a4825
Date: Tue, 05 May 2026 20:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778013453
