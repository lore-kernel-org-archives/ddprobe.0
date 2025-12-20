Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1912A2EDD63
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 05:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766208234; cv=none; b=pprLTaeg3xUVNxmnT2cIBAIQ+WMhjN9CtjJQG6pwgV2KO3G7HsQGFSfzf8Qf7sN146wZ7D4sijQm6xuPb8h5C9OP3wVbZ1o/gYKQtIQN/lAvpc4heZ1hOgmHB8/M7yDeFtl9Mb+i1PmoFY0xW4mS5pUAwdwOPSdnMnhFTGTYq24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766208234; c=relaxed/simple;
	bh=DIlbQW0nus1f1+hyOLZs30mpifDyiWYUJr/KXHW2Mu4=;
	h=To:Subject:From:Message-Id:Date; b=h/X16ufOqXbANVb6qcBvX03Oi61kE7uG4Bh+AnczGkNd1oHbpIL8+nAJcwJC2ARYqc5TAa9S8nCy2GGRVycNj2E8fAEtxUSuqSFcjPGVka6UAjeQwmbFBBztEqnf/u3iqFBiiXSi0t7c0gvAqO/uryTAjEsei3TWueuLyMBmHfc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sXsjKCDK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sXsjKCDK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F83CC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 05:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766208233;
	bh=DIlbQW0nus1f1+hyOLZs30mpifDyiWYUJr/KXHW2Mu4=;
	h=To:Subject:From:Date:From;
	b=sXsjKCDKwpNLeI9bNTjRZvFfmGcphYK6dQqQe6Cmp+tP+Bbh7mxgNYc2M8YIAYhz2
	 vDBvxfMa99RsGk6jgtmZpOhIubV2zV5YVbD0ga1/5FOLxJ+s6PVk4PQf0vrE8EIbKn
	 9vZF9qBm9zkel+2dc8JnTV7yfvEFPzJ1mDlEKarAbDvSs7IjB7Phd1uIjwrkjx9rhB
	 SZuL5Ip7eTYKNtW+Qj4SW1dRuJ2fTtxmFXdBB9z+zlm29ZJC9QsKWJ59PCqnpQcqyv
	 ZUwUoWe1+4FZ7IpsgOc7c3/ugZZBwO5Ep04xyLyU+s4l8hAUKWbwuZKU1XV+VzcMlm
	 OB+1q1Il2fMzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6E8E6689E
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 05:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176620823357.9060.12955323682710563696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aab9036dcb4635e943cf3648816043169eaaf333851b7ad29f3cf02a0f153522
Date: Sat, 20 Dec 2025 05:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766208233
