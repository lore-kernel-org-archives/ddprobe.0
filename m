Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02F4533A9C4
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 15:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771514094; cv=none; b=q2gpGjFSOLeeeMZOgO2ISAEdDaDuy41voalKOgW/69VcJbCxmfjvUA9gW0VrNEyRd44crNghG2LGYKDyPJA7itW28D0XAjJmWoZMqps+4qp5GQA0gFsYaEvydzQXTB7Ft7YZEKAeaRGfh0iSWpS40bGeBVcxC1MIDiqYS5fjQ+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771514094; c=relaxed/simple;
	bh=+o7vocWAj0r1I2p7AUYjkNCtkcM7lhZpb5V4zQVRj6w=;
	h=To:Subject:From:Message-Id:Date; b=aV523JJ089NsSDKhwvOj9AKHxaN28gRNB5lmzh2EhrbfRzp70vVxp4HCOouo1RcZU97UKYHD04YquJ1IKHWZ0KEERoNcJus57TpSS262klhcUXLGvWnsy5QcdJuRls90GtW7u45RtHtgCqfGxOYXDJS8rq3SdLI8W5vrHpM81qA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kxyNkk92; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kxyNkk92"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A91FFC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 15:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771514093;
	bh=+o7vocWAj0r1I2p7AUYjkNCtkcM7lhZpb5V4zQVRj6w=;
	h=To:Subject:From:Date:From;
	b=kxyNkk92tK+4I3muRqc4TApleTdmG9bU1/Liry0C2WJ0wBNEWrSCILLxbnwWFUqNF
	 n9QbZFU3u9cT/WNcK87hRW9g5c4Xzd9G1HRffPip1o066L8Gn8zQ6ktXJAxpkIf0FW
	 EOYgs71fq29RC11OZ5kScmPwL7jS6kK4kUag30dW21yzVLpUQv8seUiCBWQR8XkhFU
	 FqBBTbLvGCf/8ldixeqgRnvExOFdKUOKoBc9cMWM5a5C8dGeZa2mSu+PZoD5ba3hYA
	 DCDnB/cC3VE05itleDPfWQtXENgAg9M1FgutvoUe5vVgJUCXZZ2TeNndbvNwKpYQ7L
	 cP4iZ+y+qzTCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94208E9A048
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 15:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177151409359.29786.11338844958869849020.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f825ec392f65ec4b6c261b87fc1cacf6a82d18968c6d1cdf48475f62870f0fe1
Date: Thu, 19 Feb 2026 15:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771514093
