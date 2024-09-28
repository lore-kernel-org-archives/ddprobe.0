Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 292B53C2F
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 00:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727483754; cv=none; b=AUMhlnIyAD3HJ5WzAf72h6wL37EcW2RTkdWNYXgxzBRKCNxCS38rokutyEIOq9aSBZsQnzam/K943jaZth5GhYJdDUq2niNQ19S8tYQs/Uwow/KMmpivOmsLggxCnLYopZtQ+FGbYiYxnbCWRoc4bOtFSbPbKra+jCnNu6ypHn8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727483754; c=relaxed/simple;
	bh=S5eSJMxkavM3ONhCJRvn8c78M2NRK8UPAiO9iGfMkjk=;
	h=To:Subject:From:Message-Id:Date; b=Sq+0VZiKJ4m9VJ4D6CN/5VXrCuKFPDSSaGAL14+mUIYrtLDJvqaj+UwJ41LfUlYGNQznco0maDXtXOXwT4fRa57nSaobaUdrck1dW0Yl/TK/mIo+sAjhDvOgUVTRatMimpXQa8othSw4sS6ZhGJqOZOX9BQBDO9oZ0Wj0obD9sU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GLTRZklX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GLTRZklX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB5ADC4CEC4
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 00:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727483753;
	bh=S5eSJMxkavM3ONhCJRvn8c78M2NRK8UPAiO9iGfMkjk=;
	h=To:Subject:From:Date:From;
	b=GLTRZklXmmizYvWEpBV+pVT7orLddC/Un83YMxiFgqFWPC/O67uN2Wz7F9Ddd7nFQ
	 UdBz8X20+QHLO+NwN1KXeVkT5QfBqPnXYx/pglFjl/jpX2rgl6BmOtTnE/diDAD5hO
	 oo8KWJp1KpwmB7gbGwg9CRnM5hAi5NjuqzE/j2zXAiwUw+CeWBpg5MVrxdGdP/sXY3
	 aH3q84Yn2mCTy/8G2SlcKiZuDXB+jruOSHxyqYTHrmnsIc4yQd4rmnXbskkMA0SXuH
	 C7ucnXYUqAmNrw7JjeoKJANEtlbRypeWX0SA1UpkBtrarMXOONCvhkA4gFfBP8eDaw
	 F3G4zzcDMm05w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94523CF6493
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 00:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172748375358.25054.7260578408351291186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a72f12301cce859febba598dc5b045451f9accdd3133139b5501f77d5adcc7d9
Date: Sat, 28 Sep 2024 00:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727483753
