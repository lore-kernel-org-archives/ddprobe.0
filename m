Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 207AE24C692
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 19:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771876494; cv=none; b=UVCgSukZnqoAIMyCLayfwyk/njkKo/vzpa0xtskYy1rwxMqsLEafXY989krWnyJWoi53Udu51FrGkBTdI92OlH2aO1juf/hjxmPGzw8oL96Fp6xwWD7u/VNClvhIs9FB5cDMR8CzTZNsKYSE1FQsvbuEpBEetHNBLFk4U/uEh5U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771876494; c=relaxed/simple;
	bh=J3ayDeQX3hKRBxmWhge4ugyYx+UwNRNeo0rPQWDrAco=;
	h=To:Subject:From:Message-Id:Date; b=udx/Ujwyx5v/719aYvE6L620DrBIGQqfSYFrQhAhP2xM2AcQXFwUwnRuWgz8geje/ttRd4Mwac3T5duxQ27d05lEQHJxQ3WPi+Vv/n1y6d4CrNMMSJxhK2iOysO/vMkEmskuIPmbeNckK+YyyFJulDPg8jkrr2ekHYRzdphco8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Skfs7ZpO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Skfs7ZpO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0760C116C6
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 19:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771876493;
	bh=J3ayDeQX3hKRBxmWhge4ugyYx+UwNRNeo0rPQWDrAco=;
	h=To:Subject:From:Date:From;
	b=Skfs7ZpONbllhs4MjiPK8UlzD3bOjKVLpeRqsUtMNPh2uCNY/hRxNyhmWIEfvY1+a
	 phvZkoml1KTc9GK6+1P2FDOD06DASTQAx1bAHAExp0WFKl7y/EX/NxS+aEYliVN4XO
	 1QkM93vX8J1fzV3Gb5Y/7gGkJp5KORRPYJfHk6KknIkhOBGJeg0q3I8dbncBgtehUe
	 DOXdpSVHcFA2okCVlIahPejdBVqniZOHD30u+2/iWm4oMDyOhtM8lppUV03JOoBvd+
	 Yf1hsRIa5c3eMmW+7wLq2J+d2ldOv70xowHxUDIoSW1vLANHRIpWb/PEZZTwYbZZbV
	 Qa6+7T+hyqVeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A7BEC1126
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 19:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177187649358.3848.6779745379659998790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17dd184c830d7dc3e0fc201fe53b504503c9faad042827d84a6858defe0b252f
Date: Mon, 23 Feb 2026 19:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771876493
