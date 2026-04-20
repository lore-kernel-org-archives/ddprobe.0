Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 315E530EF95
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 10:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776679654; cv=none; b=ftTwhTwhqcKOgg7xSHJxozcc6Odyc7Xs6JtpbW3Ix9clnOW6PpFccP5x2vMLusWMngiZb83+CjKt8ChKSWuFBYkJeOgndd5au2mpp0jIy93qyIM9TEVRcRJOlrDhhBtDvQ5nM9aPIV4o0V5gvbwC19RmYZoA4yJ/6FwiDNjbR9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776679654; c=relaxed/simple;
	bh=bS3t62m509lkQZWBA3xdB58y8CVaQ/FRqFAIrJ5DHCU=;
	h=To:Subject:From:Message-Id:Date; b=apoHq84/zieUAhkFUCdx1pshv+rKHN+fMY1H36bATDfS8aZyrRF2dv2ZswpnqAEbx1C2yZJKArSxCE6ZJDnoAlv5qUccry/NXlJnq6QPfDqm2//gwoNlc4LO4UfAyeko6Jw1CObihvGRyvv5L9EDVfa82Lw/t5q9IzB/YpB88jo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gbU8wdTT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gbU8wdTT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C84FAC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 10:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776679653;
	bh=bS3t62m509lkQZWBA3xdB58y8CVaQ/FRqFAIrJ5DHCU=;
	h=To:Subject:From:Date:From;
	b=gbU8wdTTmJx5ZXw6ntHNtXV3bK3DNw2uJuzkHF7Zm6Y4phx1AYcny9nbaeAGJkTfK
	 hVwqTbgyJ3pfhNjeJQv4ntc01bbkOV4nMam4UP0CivA5cJjkVPlYfVnDyFJfdXnf1s
	 ggNChX/yJpJ6J3NJDshHPqsrJaEM3f0MXOQR/ibwLVvTvMlQzbY/blKsBQjXg4MoIu
	 URjMLF5xvL00DnxMmVY2y8Dwg85a18b2HdiDuZPxSAlZhJIGA5Q83nyrpEiGWQolkC
	 bCrF/iDl3mxhfT1zSOcTa6WIEMGpHFbZTiBAHHeVc9SEf3rKkIuVoRElpWFRfnkAJn
	 wJz3CvwMgkYtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B216DF557FE
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 10:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177667965371.18155.3161939020429671273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7236ab5f94aadc28df00af46f595f42b5e69f129f6ba04b0a09b03116c847be7
Date: Mon, 20 Apr 2026 10:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776679653
