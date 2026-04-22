Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21EB23C276D
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 09:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776850054; cv=none; b=giitZLiOZlQ3MQ8zh/pGB39013tXWbl6o6GVjM+9F4dWC7OllgAcqP569qw945PsD5H5AKbUBuwuIA21jQKwNIULc6srB62Q7Ap5o22baY2IDa4N2oos5anql7U+2apClKNIdQ+4Mv+SMVhJC82t1A2GesuytGTU6Pcj6bWqZag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776850054; c=relaxed/simple;
	bh=ZFAVxnUp+ubDlu8dDxSnpdZ/tw7IkNJtNY8OfzIlky8=;
	h=To:Subject:From:Message-Id:Date; b=uHWN8b53pj00pCgsu4UJKg0rZsIP2rt1C/LO4Vm9yKNHp5OgHFfBRo3AvnkQANU2/wCV8GhLuTc3TKk6t5+z6CPWBRNfPvJESAZUDPG49XWdvtlMCaOBuK3POCkLOAgGlw39KbZJyhN903VT0nKB9H9vEm7i9mASlhAmGPd5Ja8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XgsRzrYY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XgsRzrYY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8433C19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 09:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776850053;
	bh=ZFAVxnUp+ubDlu8dDxSnpdZ/tw7IkNJtNY8OfzIlky8=;
	h=To:Subject:From:Date:From;
	b=XgsRzrYY2AVgytgiJBJQoFYjzzt7M3kW/mrSOlKZLYl92o9ow7TkC3WxBn7Fj0M7n
	 9eCCns/oPYp7nEyz7DQcegL6uAUCdRQGwcGqgDF5XmY0Z1zX62Pt3IIuwpXbCMQ+8X
	 /MW3U2zg2cu5RlaLmrqofUtOJkYDp/z5suPKRWUVAzt+uzKxarzNxS0kMMEwnV4zGG
	 m5KBpnlm7RRaUpBvCyrYv33C3rCvllMCFz2/7/ZE/cIOr2qAHzzrXPl/Hsh5bLORe6
	 /aYesnLKQGLwFFWaW/L6YS8Zo6GBS+pEszZDop+pOHbR8DI/2ZFLliXw7KZEK+Qbf1
	 ge2ty8/4cjqWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A967AF9B5F6
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 09:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177685005368.21679.3656550720320941777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4105289382234be1277abbc572a6fba89a7a13801308db7d8aaa543f4a13dab
Date: Wed, 22 Apr 2026 09:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776850053
