Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C6734A0A
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 03:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732332354; cv=none; b=IqZsZTbsFQuwvFCRNrR7e6lHcAChRvZzjjvBzhGCdsTrbyDXZWzzjVFRCcPheGGvYftALny2oWMhqVYQe2mGN7v4neEg6jIgBCjlTSWtXHygwmQadN4U3g49KfguP5gwy74f6SRtBRImDmwibZ4e/zBsS6zMB/Hfyy1QUC+VAwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732332354; c=relaxed/simple;
	bh=JT98We9oroPU0btmuQ4Z1Cqa+shY68f7Zt1o/iprBog=;
	h=To:Subject:From:Message-Id:Date; b=E49RB/WPv+9AV/9r/Dhhwfh41gz8RYabSIm3bqRxD1e6hvI+aQyxe69goDBV84QxuDZq0GxAgpgvqjuReaObWBaZuGmTMmuURNaKN+k4gfazZFipmkzvVW/SDBFNIJT3MbE347XBtELJflOUOFVgAlAYcm/5TJcC62qz8RV0Gvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tx+0l5BD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tx+0l5BD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B86C5C4CECD
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 03:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732332353;
	bh=JT98We9oroPU0btmuQ4Z1Cqa+shY68f7Zt1o/iprBog=;
	h=To:Subject:From:Date:From;
	b=Tx+0l5BDWbPtgNlkQoXydQbJa6XX5cxHQ8vRMz+N2GELBkDCHQobxXR4iITtH0FXP
	 K6xxkbxQU3D75cwN0JGEOAwP6b558OqlcI1o17WmxbJPCeYa01Q9ASiupALEK6nsxB
	 KmwumnVHct7IylFf2nu7mBgXtAjN6XRv9jqdFkCmj6vu+FQt7migAH0pnbSY5Nw/nM
	 GjsWR7LXM3e7g7o41SZR+V1Bi8ec7ojZqsNjh/8HMmOLuGnGaC3/SFx3cpHuutfKyZ
	 eVAnk9cilbgIeAU85D1sbHELxNdMqgXSkrh6tBLSLUe8HKEDp5/6o+s1+7F+6EChEP
	 VfiEkXSi+pZ4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D80FE6ADDE
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 03:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173233235358.26591.14453893627714119277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6d40a078158a012adb6f39016f6800de85a543baa8d554d60f07abd6c24ac3d
Date: Sat, 23 Nov 2024 03:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732332353
