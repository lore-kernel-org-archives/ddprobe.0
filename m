Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27C8E23741
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 22:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774737294; cv=none; b=Fo9nO/8TR9Ta4pAn41aQet1AfDJ4183dpQgtMi83FS9k6bSHYxvVIYkt1fKcesppA7D5I7KTuhKF9uwPtxT79wfrWE8iz8KuHk+S546aBixsp9UkS42TSd6El2z5JLc0omvnvsaTfSVdLeT/vHo+v9avhKnZHmmXVY/bv6y8MKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774737294; c=relaxed/simple;
	bh=ms9MPQ10AMBYraSwUMPzO589Cn0n3XuSo7lyS6EvfoY=;
	h=To:Subject:From:Message-Id:Date; b=rZLpZ60Q/EgEaXhRyazwoWgk5g0xkzcRm9HX/IjA4FZLsSbCx+z+dgqDReuWCkVksiRr/nqrQfyPjmICL8h/XTNXWFDzk2P/hUWICydjYynn2XUQZhVwLU12pyyaFpxcV7I15Uki/XW6V/+M7DPmW5XdVoUWXUPh4Y7oc2xKx8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s4L6qs0n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s4L6qs0n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA24BC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 22:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774737293;
	bh=ms9MPQ10AMBYraSwUMPzO589Cn0n3XuSo7lyS6EvfoY=;
	h=To:Subject:From:Date:From;
	b=s4L6qs0nl0E9u8CqX/3BmCw7keIoalvkGHL4iEcQk2ukTVLWb5n+Fh816Inn6MvOQ
	 uUBVJmITiLQTwbnmavIRxfnISi5YAs5aban3Nl+ecYsQEpCY6cBsj8C9grYnmb35Ur
	 sZVxPhBUBXvS9drHqmuBa5quErYu7F8VU3n6T9/XOIh/rh3EOuu8qaHiRRY8D6c/7S
	 3oAilIJqZ3svFVTGbknKnjCC80cOWDWa2GpIh7hT4ar0mysjY0rAj07Ys6kPaieV3a
	 3Oig8/gACJPLx8A6G1zrx9R88YfxLjYaAwI3sdseuyXLQ5rb8J3IjBdIMUWGzo39xP
	 /sRbkuIK1YZ4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B1D10D1485
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 22:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177473729358.16014.13385425703830438343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 390ec1b401e2be694a5f96973e0bc6caa291d32e152ca45e9f18b1609814cc9a
Date: Sat, 28 Mar 2026 22:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774737293
