Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21FD4395DA4
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 08:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773824094; cv=none; b=TkeT4xMRWYXO6ZM6BfKCKejuDKpnB8RGHyPMe3M5rignzAh+lwK/0bsxaSk5Zb4HCg4QPuKcS4CtujbUTDtMf9CJYy6GTKI2U631xaBdqZo+kaBYGv4+PmBgZekw+19HmuY7dwFyeZxvVWbJb2qG4zXQrOxa6V8Hwmuh6a2Ux3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773824094; c=relaxed/simple;
	bh=XWhjZxq/cRCCq37vnVKb42VdDc8lgIEezKfrJCQ7j00=;
	h=To:Subject:From:Message-Id:Date; b=eIQyJXrdUeYPo2q/vC9xjX8U6SJ1YSHX+542wh43LlaAAtxSfGed7tRtWAZ7pFc+WLLltPPWA4ZMkOR1q7Iu5+gPZF1OWT/uuCEOW6seqHXlKu2exAOsO9wHAg3OUvzuyBki25JzY+F7Hoc+bQcVZ4ELUkuB/NoRlQHL9HZcpHc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hLfatkc5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hLfatkc5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E1A9C19424
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 08:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773824093;
	bh=XWhjZxq/cRCCq37vnVKb42VdDc8lgIEezKfrJCQ7j00=;
	h=To:Subject:From:Date:From;
	b=hLfatkc5CqGMMnjn1HJGlJ6yJ94hf/Vs4WamTtE+r45RRIEz2A514oSCYb6PbKmXp
	 s6UdNleoHrTpXPH6zV73+ylv/ZkzYmswsnQ3E5++HHPL73g+exDor1a7iedyXO3/u3
	 gpNh7WBbUo51LElSUpAyiBFzLo2qsSX13lqni0gnJSYo9xZXvYg4ulxx0m4LmGiaDR
	 NRe3jDQqXinsZK5UghIKeoCXNDK4bNS5ZNoTMjEVIc19DpzlZouW1tjVAufIkNJZ7c
	 jgPt0h7Mu3XfmdCKfUMmI/bM977c6MhkN09BRgQ11aD5xoOhI2gc3o/0Ew2mbUZN19
	 JqLzmUukRvA7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F50FFCD0DA
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 08:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177382409358.7737.4990760264429841862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41b1ffe916e9fd71c734750ba8661194ec4e8d454a1e43a5d2f1cc2f90b9c987
Date: Wed, 18 Mar 2026 08:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773824093
