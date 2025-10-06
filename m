Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33B712638B2
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759784994; cv=none; b=PDdF4W6eR7HyW8pM5jYoSk98+3GhghkjdhJjVMtjWFaV8wYTjlWztXMXT6VkQgAlxYfXcV6IUWo/pIrYjX0+SX8aWuZaFwzNzhMmjIS52wqYyWPtSWWDDPPqk6FGtNKJ/KNp27LHY9+nz7GcfFoslIHSjuddEehtPH1K+LqwyKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759784994; c=relaxed/simple;
	bh=oWh1fyy8tAKzYdXPyeENLXYbFUi61cHBEkiioGOr6hM=;
	h=To:Subject:From:Message-Id:Date; b=Kd6mkTHE3Fp3oceLtRR5eIQNKjC20B7AZfp9gQ7bIANoBr51cyqmif3uinQt9esr3ZoN3tetpthPfv/G5mh3NB8Okd90DoCkiUi8Qs6Te6oi/ceFSKSoUXBixHilKr8vkHn7O6Mjem7PekHiQ1uNDlqaxxvk8KIMdtSpfAi9di0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dN7N2LBT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dN7N2LBT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE6CEC4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759784993;
	bh=oWh1fyy8tAKzYdXPyeENLXYbFUi61cHBEkiioGOr6hM=;
	h=To:Subject:From:Date:From;
	b=dN7N2LBTuntcottdkgXTkJQgU97zhGa2NFFt0L9WO5yWpKHVaZqNDYDR8eJZlfpzv
	 qDm2P3v6VDbs58o665q5bHxg9WncJIk4QemCBUbV3lWX7QTf5KOEslAijPD4MaHGd+
	 vCHaHeh9SDCRGycgfvSuWfkJYUhWAFlsBo6A6CMR1USnq9kuon9rny67WNUwFx2aSK
	 /bAVOWl9WruIWxJ9/oGhdyg8H5is4WYu4LePiD4awq7Bcjy7e7wL/Bx3wGZl33RHZ/
	 zpiBXc89K9QC0Q1n6WyHyPJNBeHiVgPx/4wA30tiLICrpmfujs6dWOLCzdlHsbtIJk
	 mTWwjA5vilmKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A4C3CAC5B8
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175978499359.17751.1400135664781742519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dabbae7fb90a841ddde08edc7f9ec132097ab22f27f83b95f0d9190e2b9550b1
Date: Mon, 06 Oct 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759784993
