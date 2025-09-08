Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04F28315D3A
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757306994; cv=none; b=J2X4Fyz2ZNhIgFZiGaT8Ms8PJ7gANIN+8iyK9SsLD5cMjur/GobbiACfM50e9td5lTgVBAXcyV1+tFWnduvy/EXdW+AZjTG4Y5X9SfX28Y/NTdOJv5lLROwrbmyGWhV7OnEV9Pe9yhZxl3306s65ZZzMbtgUr4b+kueduLfbdGs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757306994; c=relaxed/simple;
	bh=bO28fChQKHga/0p3YdFPe/69om9/y+QrZfzJhUZ7ohY=;
	h=To:Subject:From:Message-Id:Date; b=AlEmKWFVLa04d86pnSHXTxxqcMJ4XlMsaaRIV/2XbxhesYwfYWNh8mUouJJr9oDd+ikN3UbD7oJkGHsdh7byUf5xVG5LtjKwq4xOyCFyeW33CAyswkytrHsGfN46Q84hw9DE1qCtnlWHkd3LH7WmkTuA052ycZwFypcKf7RTUak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Aq5fiLjh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Aq5fiLjh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2DE5C4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757306993;
	bh=bO28fChQKHga/0p3YdFPe/69om9/y+QrZfzJhUZ7ohY=;
	h=To:Subject:From:Date:From;
	b=Aq5fiLjheUzc02LqxNYH8LcikkGl0ltU7SdkGNwER8r6jYoz9xczgJY2xXDFiSk13
	 g19M0uVehrvzt3UDvrMzOp3Q9yvL5pHeA/NX62yZpYKZgz11rzKzHXIpw5fnLX5w5/
	 1UbGsyUJA/3ZZa08boix3SOri69PsotJEg/97sUNwFmKypyDKa3J2Cc1IwwvslqMuN
	 +XfZpBuHW5EPyoI+VD1X4hhBDIQPptUY1FOCEKnWDlQo5x7S6IgjcP/5ty+kRMjEq7
	 0PWkdquI8rZPzOJjgnyQDccY0JcLTtWs6EN199pB6O1fPYgP+scDLfkOdBVCupvsSi
	 Iy84XfeaD1sjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C3ACA1016
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175730699357.17572.2453328461807709605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ff4243c361430c641c5788cf8cc5fa65e5c240b1b5e87dcc08e3f7d5a77ef7b
Date: Mon, 08 Sep 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757306993
