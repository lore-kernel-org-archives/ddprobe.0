Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53D6E2931FB
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 05:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789363834; cv=none; b=edZXqYSVIaRjX+3v/V4vutY941Znaox6qt2Yol40TmehpWGpQ6zcy+3aD3wRPZkC4JfEB95OwCWX+nG/YYqXrXvjimF0yb7R0xC+UehWVs4Sad7KWxwgKL6EwLQbbljFMEz4VEeY84kewt0k3CfQpZTQ+tm8ftTYZvsRuM0bQrg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789363834; c=relaxed/simple;
	bh=oRot2kGeHbnH6+0IQ5wFGMWXlS6+a9rCYFfEr5qAdaE=;
	h=To:Subject:From:Message-Id:Date; b=kSEqV+pXOk3Iuwe2+LIkGhDgKVMJNT/VjOOq4Y3wzzwmkiEbH214RMXSMF6aLPSTnGiqNasmqtq+5Ukn9dtNc3+IpvoX2DwvH6U96OGbs8f3rqMoXHzKMmjwx/SPWFgICWSIrXEjFvnb5C5luWBFjRGbu1jlNjd0PQ2ceyte1J0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TucKSR1J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TucKSR1J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9DC7C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 05:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789363833;
	bh=oRot2kGeHbnH6+0IQ5wFGMWXlS6+a9rCYFfEr5qAdaE=;
	h=To:Subject:From:Date:From;
	b=TucKSR1JD037sjkv4VJYBG9Dto8MAauZPzAUdwAgQqiv2nOqNwBWm9Hqn/5iqiBKq
	 If5GarysoDTs2jewTA8fsX07k3V4ilmX7+pRv1kqP6hjvKPIoYca6+FGh9KWjKteWv
	 WOGYdh27qVIUPE8AGZkaA4+7hHYwc73/3vzInFMQDwnd2PDhFtRAbayTA1BHNdeE6h
	 LvsmFHcNgNA5CymjTnUoGKPS59FECo4UjDgdEsjaaWD1AL8nbTp8IxL/nfjsPi32UC
	 yrjHfHIV7R+3DGgGMl5wiqeJDO2gTUnZExMWOtkQR584X0bvhKx7F/8k/hkyP2LxAh
	 7FwwTFXN+k7/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7B4DC88E67
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 05:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178936383374.19391.599659837337419855.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a62d526ffb6a61577984217746d39590c73f3a6a500bf29c09252185ef3e2b67
Date: Mon, 14 Sep 2026 05:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789363833
