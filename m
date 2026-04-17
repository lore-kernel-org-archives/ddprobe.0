Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 140BA316189
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 07:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776410254; cv=none; b=rcd49UKA4o5KtXPUNg8UkfzjQFiLfwv71l0mPFiJKE/Axay1mBDjjIIV6I0rNroeqvwltHl3QI3mJ/KqtJHgnUzM7DTlFIQDZO746Dmt7Rlj1mfWvZfTkRcoa0c3TnxLhUKAv1Yh3Cwfs2OhwEVIt5vG/cNEMi9CJlKzLzTCZ/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776410254; c=relaxed/simple;
	bh=A5SOHOKikWp4/ifPQ+qRBFnNvjUdJxN3YeGcGU4zszk=;
	h=To:Subject:From:Message-Id:Date; b=qkGJo/92Ycu9gvqeOV0DQMdVlj0NGrTxsZeOrKRTnesuigU9XYIfn7DzmVQAxRyVV2ay0FxPmQXm0n4xxzyUvV/VPDud6Tp4mPuLUsRB5ueJZhBHQZkhzIterTbFD/XGOqgoh7BKCAq0z5GNru6CG81/sdRM6CgDGr05HLNaXvM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HCgTVyUs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HCgTVyUs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9048C19425
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 07:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776410253;
	bh=A5SOHOKikWp4/ifPQ+qRBFnNvjUdJxN3YeGcGU4zszk=;
	h=To:Subject:From:Date:From;
	b=HCgTVyUsYeNWxAK6LxXgWn83vvmUySq9e+qK5IBi1l+R8zIO7D1ZDdzjLEyLec3SG
	 2JBazy79NZ8D2V0zwWyyU8EZlP8fSIziM/TuHprF4vc3/jCuD1HdlXcwRe/bAD/Z8/
	 hQqngAAiOXDPqkfzJ3IcrUKhNdYxMeZs8Wse/YErqoqo084SPFdHGXfBeDvU2pkZeT
	 Boz+Y1alw8pffMXNk4PfB5Xduw9+wjM3EpZzrYJpFvoGk1h1WF1eEQRFVnvsNXW2Mo
	 05OpcbtJUTRuCkRwvoiQl+Cw0V9E3HlmQDq6lSUEhu+0NZ7o/saxTUaqgTGY6l6e0V
	 XHr1Kq30dtPQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A971EF8E4B3
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 07:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177641025368.4317.6541464365816271825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b66385f094d7c5dc94d92fee4f2a244fdf6fea8ffb931c4c7837689306b94e9e
Date: Fri, 17 Apr 2026 07:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776410253
