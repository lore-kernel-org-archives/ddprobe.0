Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3736325E831
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744200594; cv=none; b=CQGEkaXTu5svCLsUtlNUkdslGXlasUjsGosIiiDVCnIVXveLZEtzMUg4L8FuObwlm6tZ/W+v9Tlfs8CWSq/iIV/4jC7OnLJ3JfRjLGUFfq6OUAEizkjF3rSHr+opmJIWuOvkgVg+M5MU9EZg0FR8DZcqzSZd2OtfDb1nfQtCBME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744200594; c=relaxed/simple;
	bh=plxL1YvFHvd5LT+m7/wwoVcNStfywxBqApAQIjmG8FY=;
	h=To:Subject:From:Message-Id:Date; b=GR9R8LXmT+F/DndLJ45ayVZvOIY6tx21RKV52KhrLaxCqC1n5eZQG+3u93F5kRMMvVeuzfeTuHRan9u5zHOkBUOI/ndSliGyRF9ak+LKblOa5Ulfae8WSt/EFfkQNQxOlS1i8cA3fk4rC729TfymdYl2rk+kpcIzjbUdT5Yt8Us=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BEh2hQZG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BEh2hQZG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E97C4CEE3
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744200593;
	bh=plxL1YvFHvd5LT+m7/wwoVcNStfywxBqApAQIjmG8FY=;
	h=To:Subject:From:Date:From;
	b=BEh2hQZGEpkZm35+kCqidQsemL8oEKtlyBUEEo6+o0FvI2XoiVdvPFR+MaXZ+lDuG
	 /jLecvotiyhfkxTHLZFIMKeouD46wsxgx42bBjFOKUnATH5pFfprd4k6r6I7WANZpZ
	 QKJJVbJGlUtbn0IibksfJdvx2/SKsdaooX/RSXDn6Pkcfj4AB8qAaLKVBZhetwRtpH
	 NQ8lv6e7QfTeWmR7QPvdklKjbiulp/zscsYTtmAiz48sfaHejYxt1ULhqD2TxWkETo
	 deSuL8jvFcT2WKBPlYzM9llguQsVnnAMmL2A1vLUBgavz0q/ShzK25MP/e9bQA5ZMf
	 jdvKASZZzJQUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A40C36002
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174420059358.10235.1521712813158284554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 350018ef2dfabec00a9dba5423cb57e8651a000b78a17dca63a5e6bd66e79519
Date: Wed, 09 Apr 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744200593
