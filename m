Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D57C037C11E
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 11:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775821053; cv=none; b=IWT22iAMeHnCsmBOmokRVkpwNugfZCNdo60raqM4RNrRv4BhZ4JF8Sc2w26l7Ip/JAPZoBMW7iuXux0qh14xMnL45TO7goUBpIJCLTeusmmX/09fkY1xr1QSgEkLIWyYJjenk8WwmVWghO3RHfnmP4jxnpheJWb1g9RhRr9wKgM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775821053; c=relaxed/simple;
	bh=4kLP2I1VbQHnNpUy0kJnnxT+pQ7w8wl3cC1dwLmKg2s=;
	h=To:Subject:From:Message-Id:Date; b=F6+uqkkGvYB8Qr23y8NJfcLzrdlPrJEzhKhkaNkyc35ANcwIzJkHTPAY9Q+WioJaSE4BQ5TaUGNY1zYZC9vYIqMtKXH4lR0rG/KofEcydedPPMHUFE+jYyr8JeDkdfQGxurxahqLzBQfLPpSB/F3N0mCWaTF/zh8ivm9l36HrO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PdxqjN7O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PdxqjN7O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B93ACC19425
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 11:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775821053;
	bh=4kLP2I1VbQHnNpUy0kJnnxT+pQ7w8wl3cC1dwLmKg2s=;
	h=To:Subject:From:Date:From;
	b=PdxqjN7O0gioGfaU2iFLTbsVT7awhwdXMQaIH7kFLz40c9pbZnec7V9rxYhdxTGka
	 fxc7U94RYI8E3qstQfXJoJ209q3d/ssghVTufpBLpxh94dj/a6jh6kHFjXI4ZQz8oY
	 vbd65Zelrn8VZxZfUFQ+kf/JjWFVCgSieW0hElcRM87eb7qc14ZgxvEpuc/Gl2imhS
	 wC5Qlcpg7xoZwfLlxrcA0taSL45N3FYo5glSC9VZbaekmn9ySFQLa/PbkPb0idhvir
	 EOGe88t3SQD1DZfu+j/s3c5XEZBMR6PmlOPipsPzcaMuVsDHxy1lTHU1WADtUYps4R
	 ymSdQWNRktKOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A980FF44843
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 11:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177582105368.13111.1501993947897458554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd235289664138bac583fb764b9d797e86870e0f466b31d4091041b3fec06719
Date: Fri, 10 Apr 2026 11:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775821053
