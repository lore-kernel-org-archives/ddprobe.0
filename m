Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F32AB1F818D
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 23:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729035954; cv=none; b=AkqHyu7lifgOjdRxlrjUuwoEuDh7bFsAc7ITXQVI/PZ60ggwuI9OW1D6sPMNSkzuTjuXi7SDV9ItYkeSQSA2EzN4YexgbLhP1Pmh5nsO06HR7x8eOHSuKz+xVVvneqnfHYQExNgUvkSLKvvQWzLSaAXAuNFd5K7bbIgyexwbuzM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729035954; c=relaxed/simple;
	bh=wCkLKjq979iDYJ80EXPu090oraVHz2q/orbbFLmKKnE=;
	h=To:Subject:From:Message-Id:Date; b=ospE9yO7rYuS+fzNqZq9jn0/6uPV3/p70tqctLab8k1b+eokbT8nH9hmbj4ibfhl4k9LJsJ611quy45lNaJAIL9BRfovMN8+vwN3SkicEUZwIXTkaoU7qylyS62KZ9ZtnPYG8yNTwEwFGx9KfOFklJkSpDPHG1cKbkF/rxKJJNk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rDwBip+r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rDwBip+r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3DC5C4CED2
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 23:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729035953;
	bh=wCkLKjq979iDYJ80EXPu090oraVHz2q/orbbFLmKKnE=;
	h=To:Subject:From:Date:From;
	b=rDwBip+rdT7OcvpEnwmsofoFbyq6L1quKGHztCKvVfoHah7CtwDke4gvBY049FKyc
	 FrdJ/B00o/nLwx3kRWKSlW45IZrl/sjESacpfZLt6MEaIJClq+/kjDj9I8iKn9/iul
	 4Be+jkgOV0uT8C1ExqTPPrdu8tJ7cHP5JAtr1nzwJOM9zw2p/ZZzP4ZWaIF/lAwgpc
	 nybI3oUYVnkR8am5z2Uwad704OwBFwTN1HfwkQALoonQm/zQOr4LYclJWMvQKvye2V
	 vpKe3l+F9erLEvexNg90HjuepJwBilnrEpo1ORI7uDy5KAGm21AlOqeRlZBhnREdFR
	 Gihv5AZFgO1sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 927D6D20682
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 23:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172903595359.23461.2590514208025780601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 464235f83b247b7e0f899db05b105cdd4da341c729e05ed6c9c45ecef6da599f
Date: Tue, 15 Oct 2024 23:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729035953
