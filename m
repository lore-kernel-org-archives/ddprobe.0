Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36A75205513
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745554194; cv=none; b=LmIHcp6HGfEaJUsNB9lU7yRNbWJ7IQMkiCPhMOX8OtijT6DRRx4IqHluQ3xR6KHoo6MQJF/JF0xgWer8lCIGGAhquQ04gDDQRL4Blt3mOtiUSacfJ/KGA19LOnSU+wneCrXxbFuwYwMpBS/sul302ksLNYZciKTLb3ULvSer47s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745554194; c=relaxed/simple;
	bh=0ysGMMJLxgP7nxFA001YsV0D660PwAGG9yDlMhBa2h4=;
	h=To:Subject:From:Message-Id:Date; b=bt3UDCApj3qYy/hB/SFhzjIujKV4UYu6GpUBy0ZNRgGTBHJ02OzuiSiynoFTwGYwewec8n7OdghhMmVQu5JSdHXJx8HA2mwqLR2S2hfpWOkJJQ4PvV4OyjAkzvOkxzcaKkIFaefJyQGSoVwM+HOIIG09NvScqULF8wQMIukBhFI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PMGRj7Ob; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PMGRj7Ob"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F74C4CEE8
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745554193;
	bh=0ysGMMJLxgP7nxFA001YsV0D660PwAGG9yDlMhBa2h4=;
	h=To:Subject:From:Date:From;
	b=PMGRj7ObBFwsLZLEftKRJHAFhggma82jNJQOcxESc4dB/5CLIWKX8v5XBbndx5QJW
	 P4x/mJDwqcKvyyRxxPFMPPZP473uHhKpHx13sb5Bhv7DRCvFOxUq1uW0wqNMHkGM58
	 aPWL4V8IOTBT9/5QK7TqKY/4prMEJeS8hatTRGNf/0kgPx+rIim100x6ls27o42+7B
	 1kxZM029cg4QRA5MDzqoFIvnkBUdb0+JxBr83ZXT6Uyw83ModQWM1cXXwjdQB9BSs0
	 lwFlFihPLOM5J/8hm5NmPouQtc2iIuF1HfyfVd+L0nMl7Ni07262rXQD4KKvNx7PqN
	 hHMGKnNGfVLuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB3CC369D1
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174555419357.17574.4985028172470363159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: baea652f8a08fefe7458ffa2cb5059b6d00cc02535a6f3e5e2ef9fadd02c900c
Date: Fri, 25 Apr 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745554193
