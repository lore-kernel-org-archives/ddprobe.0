Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A96984A3E
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758059394; cv=none; b=oeN1zyKdiE+IiBmzNALbIveqEyYIUKZbMEUlcELJFFkBmNZIaYbAT4ySIKe3tJW87M5W+DxcGaQqzer+8LjwjYksFlvGt3HfaXIoYfEbvMnwmsB57d8mG/dvF4hDh1t6McT32WnuQXxtrjnDifQH72vCVVGkkCGEoRVW6UYq7y0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758059394; c=relaxed/simple;
	bh=tnqqMUqd/fbB64NIFqbzWP8zeKoj7Iwv+3TW6EdtTAM=;
	h=To:Subject:From:Message-Id:Date; b=E/A6BKnMxFmGuivVStJS8DL4XUaQxDBdA+5mrJveGMeSLcWfQEE9Irmc3SYV5Neo6x5JDTH+3G9EtKV3B/JSWXoXTZ/LuQ+PV7M15PkkfrPiY6OzkPnTFyxkJKIQLiW/rl7n5xF+HgeQoSnhbOSfSR1q4yv8RZDZyfFMffWq0u4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UpNKQrBT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UpNKQrBT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A39EAC4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758059393;
	bh=tnqqMUqd/fbB64NIFqbzWP8zeKoj7Iwv+3TW6EdtTAM=;
	h=To:Subject:From:Date:From;
	b=UpNKQrBTt8at/0zoemn3vMpAJEW4oguGfMAefStjv/cDgSQTC0LxqXxYHd/IAuG9V
	 xwC7yIggdTyrkW4mYRlijmsqMbhzBmdeo9yom+yi7mAKWuHQGHmL805T/lKIhkmEXJ
	 9gxcQnoX25a6dOU0SlxTSfONikNIXoT/xI5aDXdX/w6xzqzMdcRnbfPhFQ+5h0tA9k
	 fmQbtS14T+XwtBGNC6X094LDp4YefYyVot/My8JAwFQATDbusk4C1vvJqb6KeyiBhM
	 d5XUvshXGXR4lVD7Cn+UrVH2wCQtlOt9oNCMRuG0534frqYGqCevu5Vekt2MlzsxYs
	 KUw9ZvMhkpbzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EDFCAC598
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175805939358.3048.16377767111471619719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4449aa756512f09d10eb1ad0325be0922b3cf79a1ab242412e86aaf13062487
Date: Tue, 16 Sep 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758059393
