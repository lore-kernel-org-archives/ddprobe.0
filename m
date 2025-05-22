Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3557528F3
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747889994; cv=none; b=HbB3xDuEqRtcA9BiHbinEAwvhiissit+pTC49a0qCaOTbmCkqdqJv5nUqA8oItDMqVFyUF5qG3EVe/1/jGWsSU9vGzjeaijk4OZugTOMvF6Uvv256vh1HF5GDQhkYA4GSoEoDNrw3m599nvaHoh9ua2O/lhkQk8OgPgWCnwcrG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747889994; c=relaxed/simple;
	bh=LoFWmaKTfWWCMJdH4KwLqioP9Fwdr/SvyxHjM2APi1Q=;
	h=To:Subject:From:Message-Id:Date; b=t6ydFjj9nAp6XtfbedKf+9uGQtm2Bgl7GZxtjrt8tdtGoghJ1WZXyF0NQhthB0G26aOSUgljmuTXEBvfnyPpnLPFziLCjINv8Xy4WxhdbERvtvirIRpXruer3HRA3Ihaz3pwt8wQ9zYRNCT+3d3Vs/lmoJBOGj7ACTzArdz7chU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s/edIsKK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s/edIsKK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1447C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747889993;
	bh=LoFWmaKTfWWCMJdH4KwLqioP9Fwdr/SvyxHjM2APi1Q=;
	h=To:Subject:From:Date:From;
	b=s/edIsKK6KT9ghoApqwuNACid9HvLq1bQyu+LFivNM4RDdh+qtCxupuiJl+s5zWvz
	 ACmm/a9TnocaDCijIk6HqYjBp5VUIpCXXjPkSNVxtRdYUBYZwA9Rot44UWzSUZwCJ5
	 RmT7P12dVIqLnYfuAw+huzBoOWLlDzcCSSJnzzVCrMxL57lQLOde+2SXVUaa43iBTY
	 McV8Gu4Uw5lP+k7f5Ev3RhGtIGwalLEqXMTvspMCoCc8nhQSDiH+PB8c4EWVokOOEz
	 2/ekaZXip280Ka6XnNfSP9P9uCMVa9kWFoBnr6zsS+DsfRE6QDd0TFsvFsTYpknqu5
	 95yrmpceAA8yQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F642C54756
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174788999357.24500.16547983923297375785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64a515fab9e94d6791fd8af63a47da64cf20494404dec0757b3967386280058e
Date: Thu, 22 May 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747889993
