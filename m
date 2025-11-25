Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1916D28725C
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 16:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764089574; cv=none; b=OWlmZKPKXicswRhOPi3f0DdMPLWxq+KlBd60vwTk+LS+CwWzgUx8Siod3kXp4TjbwC9R0seBzCzx6Q3eTOyvs2dQ2mArDo/9rKO8V7jbNZBxumIVvYkAcheUTGP6Djmpni9LDCY+v/ebnaKl2JuheJlWsYvEU27+US1Npiu4PSk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764089574; c=relaxed/simple;
	bh=O3/RCNqD5FeMkn5FkfRHOwtZUTSqR2QFmHm35066wQw=;
	h=To:Subject:From:Message-Id:Date; b=FOcz0GSy6aPv61MXbcNa829Pf6qB6d9RE6mF92o7UO99U/Kg+ON71pO6fHx3zP1AgWP0aupGuwjOLRqdPeEQku0IPDAz5nVIedtWNS8PUjlC4OkJ4XqWnsIcuoUtLc8C2S3lxP+H6rBlM9jFyOy9tpgLRP2P87dg/90ZfjtYdqo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A0GkyLxk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A0GkyLxk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4BDDC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 16:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764089573;
	bh=O3/RCNqD5FeMkn5FkfRHOwtZUTSqR2QFmHm35066wQw=;
	h=To:Subject:From:Date:From;
	b=A0GkyLxksRyXqJ8tylhy2hjgv3wpUMIdkDmk8legbrqtIQaNPwARYMFp+qHcuP3ws
	 yumU4s+YXvn/nAekU3e9nos45QfJ8uiN/4x178bog3rDqr0WOhM/11bO8473/2qoWo
	 DPsO0JKnxOtNmEvXp8Fpvis9EoxQAlPliuvxrxFhyuyRBiFnXeMfj4vSpU3I9YoQXb
	 BODmP6PlopUJNDppcKfO4ihSwMBsfrG0MTlpwhCjuGsKVkZSdBYqtcf4juCWp8APWi
	 g/Ox0i8uSmnb+a8U4l6j1OH1y47N4Z3HyeEpKaHNS1sSVsIGlklUwS0ZecB+SMlZWL
	 xzOmQo68YDubA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 938F0D0EE0D
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 16:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176408957359.32343.2133016630302897209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1aea9f0bf7957423854dcedbd6a04c121df07d910fae668614b140be00351fa5
Date: Tue, 25 Nov 2025 16:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764089573
