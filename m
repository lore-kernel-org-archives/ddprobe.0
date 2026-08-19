Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 500F315350B
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 02:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787104834; cv=none; b=soFwYeb1KQtFAPMULhFjpOjKmvkhBsEZESskH4Z56rO2kpw74nf0LHkKn/Ne4ApNSNCKiWzh66s2i4dhLJ6dmYUavkAFyLt0CwArF2edGSFHbD5xN9GTn+rrt0xDat4R97Ma9dWKcTZORS4FywisWW66PaHiXWzgTlgzqY8ZbOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787104834; c=relaxed/simple;
	bh=wEBTP6gyoN6M7JLENChDforkif++80kOarwuzQJK9xw=;
	h=To:Subject:From:Message-Id:Date; b=bpUND45SdiwAXgo2ayfINcNmxRLohCz7LzAReBq6K9ggHuE3I6dhTzG+gxoXfyhM3QsrBh9pDGpsPy5AA+qBbkTIGuQcTSI6I/YeykjtSP/YYwlUPI3gkZi9+yRrBwmxPjEv2vhQPUBCVNIbZN6Gmw+n77yIIaGgd1m2rBcqbDo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nqESioAh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nqESioAh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFF89C19425
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 02:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787104833;
	bh=wEBTP6gyoN6M7JLENChDforkif++80kOarwuzQJK9xw=;
	h=To:Subject:From:Date:From;
	b=nqESioAhfs+nENIlvVsjsuuRmE5IeAMOA4YQr2JrPEUcvrTXKatkhonJZIBrXVs6L
	 6xnPUX4lhl5FNxtUFUtrCCLn0ZwCMKYu5az7AhG6XRnco+N/HcNWmTfQPzQRTISkSW
	 Mvl0hRj2mXwOCPjDXXMbtSJC+lds/JGnsR1yB0D7L3RhfoYAhsvC2XmkIWAMSNcQB/
	 tlWG36NfQ1IxOT+yVl+y1+pc61XFqobM8FZgkLsp+Q7/Euw4vdUFJnUsZQ1NVl6upF
	 Qti3qTIEiIPERXeBpESCHCb19PXJm2fwZFFvb2NesYuUA/Y8kMrfWzOyTBCHH+r+s9
	 WgUwyI3UrNjTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABADCC5DF81
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 02:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178710483369.4310.4638416457451794545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a82522ddbd06c061129c5ce9447781640c10e267c6d140a056dce1bf4fa654d
Date: Wed, 19 Aug 2026 02:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787104833
