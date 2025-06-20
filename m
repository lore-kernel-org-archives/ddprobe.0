Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32C4321D59F
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750443594; cv=none; b=EscXJdqZnn9LUTe528l0g8HJzS0y/EMtVhO0rs5x51y0C44KtwmceeBKHBle7hdkZbe/6Gzc8Qay72+T+4+T0yjmpeQL4eJzVq5qF2HoN5hpeI18UPnpSpSka89eTkcVaV5XFuV18jItdvZmCW3BssJkL/ZYqKJbhily3BVy2kA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750443594; c=relaxed/simple;
	bh=4ZC918kNzEqqHiw2xoBqgb5jZvoRjoiUrpgu/a060LU=;
	h=To:Subject:From:Message-Id:Date; b=URrrCB90OeVb5P9lzw5BvnNRbPwJx9bBYZhA1e1uFYRPFJX+5Zv9U2cUO4G7BdEHAnZ/mhfXdneZGQbkVY4FNSwrqvD4VDUjesVAfQdv6W0+JBHxJJ83n09U4F/E3PguqNbPrOw04T6vFb/i0p9jNj2wuWkKNwEi2TaS+1yoZz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iKc7xWst; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iKc7xWst"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A860AC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750443593;
	bh=4ZC918kNzEqqHiw2xoBqgb5jZvoRjoiUrpgu/a060LU=;
	h=To:Subject:From:Date:From;
	b=iKc7xWst9mIqGJtnvJLvZdf1U7W41xGuaE/jPmWjkn+O8WYv7DXD3ZBPUoyZ3rp7U
	 x2bIOjHBGZQtVzXj58so25xY1IvQpCBlZBvJy0Y+KOyH+Lag6qQrefkJUkZosP81bc
	 auuAy2tvgUFg4x6ODHcpYTqsfg0SlM/z/fD9Ri0S8ENARcgm3cWY947jeNp0aOErtV
	 tYmXN9BvzGK+AIu3zfeCT2d+dg2HI+SozdRQHGIb3TDnLaw125k83OPxCrgVIxIQjb
	 m6hXVuAH/HlV0jOS5byIMDyoX2nDbqkXT5ZAJ8Sn7gQWsqfhDNbMvWBX2ScTtcvLfy
	 w4/TP61ZPRv2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91562C7115C
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175044359357.16021.541229978820732153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d72f27116e962bb607763be5f1a9b9635dc4ba0f9d7594f4374838b78ee6ff9
Date: Fri, 20 Jun 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750443593
