Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C765231C9F
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760871594; cv=none; b=bGz/rCzlSRiZX03XMwyEJCAFo7nhMEi2ZGO7nMEHiQt6/6VOE0RfGrPCT3V0MX5nxBwCQa1kqj7UmwqodGJfESk8jzY5Q1HI0puu4TlE71MGmaPpQSnUknzd8VEFLVdEcyZqEm/ziAi7BPNSoi0Qz4A8rPeFpACyP+Ba0LpC8FY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760871594; c=relaxed/simple;
	bh=VTk4RX1fUZmky4Z6XAvgnjtSVXsaMW1KTUukWMiT1lM=;
	h=To:Subject:From:Message-Id:Date; b=ZPzi3w+MCu1MpAsvtOnTr0oWNFlD/eGhFaB3zlXgqLeVJfcU/y2X72+D8+nF3INFUPgjpUkL4FNT0fb1XgYKnaYo1gjdAaQXpn8ClOKnX6QrwsshRrn3ssQXQ9e2OSYy35NTStTRIEUZM7UdJKSWn1BRFyUEjCy/X1l6nS+bLKk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jfAwsY6M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jfAwsY6M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A750DC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760871593;
	bh=VTk4RX1fUZmky4Z6XAvgnjtSVXsaMW1KTUukWMiT1lM=;
	h=To:Subject:From:Date:From;
	b=jfAwsY6MrA9//lDlkKoTmqWUJXBGxvdvN5EOe1b3QM3Kzzba+6LC5VbhbgElxK6B4
	 o8obWDN/OOEuuv9j6vK+BbNb7vd+qbmLjzoYPqpHCbHOcvIfaHBX58zdbMTwOGOM26
	 N72ZfM+Z2kIGGHc3ab9E5q7T2L3ObXi8G1tg9RzuzGEIZsZtV0gZsSYFIgFQtHwBck
	 5jC0dvP0DFQIXl6dGQFicl73+f8ZKveYbiREYX1rJH3W8NCitx+AKh1T1ODnScdSL6
	 P/6TlJX56I9awS3oa9WuzDDnnz8tuntO6jJcDuSGsI0H+gqvc9aHXX0+cxEcX85HVt
	 wBL719tOnB9AQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B4CCCD183
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176087159358.29754.548538118230128878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f94d668fbfc02237da8e7192488c23354c7750ac482678e69204a0220bd14da
Date: Sun, 19 Oct 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760871593
