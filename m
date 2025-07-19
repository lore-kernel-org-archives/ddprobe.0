Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D9382E3716
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752919794; cv=none; b=SYRzp953+UGpMg92HBQJi2W+iZ90kYD5g6vBLLFWZVFb4xd2Ry5R+kPOAdddP7g39wv3TQhrBQFERrkV2wQIXbJt+h+XwlMiByBFmq5gOEQo/EdwvtWX8V1CwYtLEUHCFIbSJCCt3CE65ddblJsU8xiSLo8dLbVQn04v2W4bbqc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752919794; c=relaxed/simple;
	bh=DJBfYYE7YRMqyFPUw2awKPTZgagLGgkrE2Mnzf6Av40=;
	h=To:Subject:From:Message-Id:Date; b=fhSxRyUSuWh3YDQf4FaRDdgLEDN2qkpPHw1Dzto0pK1EuJVRz4KR0hDw3ZuE3z8rHIpHAl0t7LfZM6tLprn7TtQNWteu3XX/eltNpHadxX1U3ptPiFqKjjpzKbVXWhnvid5xLQtMImaDqVz0UuJNCVdWqClWJ6bmVS0TZLkb7Ls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z2yAw356; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z2yAw356"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A37C7C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752919793;
	bh=DJBfYYE7YRMqyFPUw2awKPTZgagLGgkrE2Mnzf6Av40=;
	h=To:Subject:From:Date:From;
	b=Z2yAw356BITy5rNp8eMrF1mHfyOir6wxhhjWuUbe9eewZvNTEjjxr3T1TMx4TC2R9
	 cMntJB+4yL8aGCAQ31n6FQHh/R3YIv7pitL1cc+yp4GSVrKFHHypBMOmHcmrB1YL6G
	 57ZGEWD/jdc2pe+s6TcTlP6+Y0X27tKrGZInMZ3rGXH1bD6FlGjDZVNNDCH6sJhO/h
	 CPylgb/4tPubewJTaGiLjbtnjJxtyJLZoz8j6yaPKnnMbetICMyie7JNKaYx6jUrTt
	 UeSSHhtK+O5dmYwZSRJcXLxoC8cP7lXuFKvgzDxKsgp4myFLZPhNnd6q9DaIPo5HsP
	 V7AYwwz7rQNbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9058AC83F34
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175291979358.24866.4343716395523517955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a11449dd7191e2dce6120c412bcb27617dd5aa02d0eec80cb4de5c0812ec65a
Date: Sat, 19 Jul 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752919793
