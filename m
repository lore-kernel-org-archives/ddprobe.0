Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 272F032C85
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755011994; cv=none; b=jwW8r+Etevme0RW3EoKIzbGC/F+4WusJAFQfmzdez/qK0O5Q7IKsMkP3I3KMxE8X75RFOnbR1HZ6YF98yQdfw0Kq7S6e+vMXE9bHWpX3mXUg3ZJTfo72akWwCZ7VIfMjNA5S7q3ctt7xffYpsPp8qExMhy+SRuYEEZ9+Lmnkkv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755011994; c=relaxed/simple;
	bh=C8/AQ5u6iNLff+epYsDVJm7fjz1u+faVBK0yf/AB3W8=;
	h=To:Subject:From:Message-Id:Date; b=aVa3XIB8iGv7M9SHwlRFO1oRftqJQjYIGfQkxXfa11njFYG86k+HQjBAMTe5f3z72nbYC+09alJ0V4oXSSo+28VViD9vv3oeiWoZ5lHs6LZRa6D1hwHaLe8AiWUWvUfEDCDl7vpJusYlRNpJUABcjlPau39ntTaeWljqXEVT8AY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mJ+Z6gIq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mJ+Z6gIq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C63C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755011993;
	bh=C8/AQ5u6iNLff+epYsDVJm7fjz1u+faVBK0yf/AB3W8=;
	h=To:Subject:From:Date:From;
	b=mJ+Z6gIqao8y9kSs00og0Y0Nb15Hd/C5wbCxbUIlr9OWOJausklIWuMqBes0BhDKv
	 2iniHte/zyI+uWMz8NoFlybhO3CsfEhiNEFy3D9+yBnbHQFVjIf392k0GTE36MNgK/
	 mIeQSdHFqGfHAeEM65mWWPCStDEp4zQZD15YfQfE4YIjJRVpoWZiwGOdSpj3UuvEND
	 RURSh90lKaxXrWt30TfUDIKRqxGJiVCCKsizklYiOGp2bZ7cj2Y6k/dIwzYFbuWbDf
	 Hlm6zfzwXVZMkD8IxIGV/3c8b+SqoiJ8Oitnef9qjuivDyf8VS00xdhXAYlI6z7ZXb
	 d6bM7MnvT7U/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F049CA0EC4
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175501199357.15362.17183289843854949910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b85c7f55dc951ea0fc497d66f45cc54eac4a0f9604ae4cea66828886111b73f
Date: Tue, 12 Aug 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755011993
