Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31CAF22172C
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 09:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764148974; cv=none; b=OTtc6hpOnsNnJhwL/EI+Vs4jC2O/OlzYTziy1B/FVvumrB9po6mSZkrAkG7EAVguGu7rmEvZb0HEGonUFEHA8/XftPU4QJkZ4AJhZNP2ZJsi9WPbSRq7bqIQE/cvzIqxz6lGl52g7WWHwcki6StUZVzRVxK0DItYviWHEpLxZho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764148974; c=relaxed/simple;
	bh=3ZKK5n/hyTBqfojKL8iHpk0qR2QvcL7VS6jJzD4pbN0=;
	h=To:Subject:From:Message-Id:Date; b=VbqEqrv7y+YF14/8nzA5Ok2OEm7iXK+WC6By2RsI9eTJK2hsshXS9mzuPz88UUTXcdLe4yaNdZVSllK/3dwq582auzuRiyzlJ4EkX6iPX/Pv5FxLztFeNY0cbVN+vDy475OUgBAw25LSHEVBl/bWbKG/adLiRmdRdKYG/3kekzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DNznR3GU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DNznR3GU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6CDBC116D0
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 09:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764148973;
	bh=3ZKK5n/hyTBqfojKL8iHpk0qR2QvcL7VS6jJzD4pbN0=;
	h=To:Subject:From:Date:From;
	b=DNznR3GUpLd6UYTheKb1Tu7OSmlqPzLZKRJPow9416H35PJP/nwCJyTxF8Pbyec80
	 g8uJSlfvjk0PwDseIYDN+3uBpgskScXlT4MIjo25ieYD5vlQVFBTzrrMKUMZkZhtB7
	 FcbxZdXQvSJyW2IkXxeiOp6nn8LF4htoRcOih7kx3qM1ZTKJuHYwSzpZrQu4TRUWLc
	 P21WRCTjnpeluAiGdDOuGJ9AGCwuxb5cYqV4BEZMvkq2S/upJXYrJq7N+xC1Xo0NS/
	 HguKTJDHdf/FD5AuPZdJ3fdO3ULZoP3v0AdW3DQCJuJGAtqcdhVqEwflWtWOcoRWyf
	 OuxK+BpqJApDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 928E7D10399
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 09:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176414897359.6420.4390261116117592713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7197128cb4d7fccccce5b571f09e5181c7e2b8867def08cb647c9307878b0c46
Date: Wed, 26 Nov 2025 09:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764148973
