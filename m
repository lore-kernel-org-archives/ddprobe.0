Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43EF41DF73B
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743489594; cv=none; b=HgVd7Mwxa9egwnfnPk/EFGkVSRHo00V5QhZ8JGl6BRptnxL5SK21RoP+72BqEq64BBhTedS9dMeNshXjtak41JH2ahN7EfCN0PJIwPWD2mKePPbL7ZpHpLb9PIWEEOeeeojYZ56GsuufBfQ504Ibz5t+VDkFIVyrphyb0QfQcmc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743489594; c=relaxed/simple;
	bh=FyXfKZI/ripJYng7U5ck0/EaedRPtRv9vfB8Ip5wt7w=;
	h=To:Subject:From:Message-Id:Date; b=mQCN14ked5V34ua3Z3MEseIURKFKuYKuehnpz5vgJtBKyD+zTpK68oaoMOQmChhit06uUUw3n92742j4iwkvab7TGZGfbIS+HG9qG3K1ovY8uXDZmG3nKADm7E2TqsgwZGeatOnGLFV7zjUxEyWveRffVu8Oe3ebHSZha68LIfM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o2GwsDl2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o2GwsDl2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA932C4CEE8
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743489593;
	bh=FyXfKZI/ripJYng7U5ck0/EaedRPtRv9vfB8Ip5wt7w=;
	h=To:Subject:From:Date:From;
	b=o2GwsDl2tHXdHfLqfIt5evqVgPthfYhkupCRj7l7Xrf6oMF9vEX7IU/Ic6wDw1TrS
	 P7sLLkVYyV7AdjUTE5NJNT2jd5FxHXjCLfb/xjPY0H0t0iqBA/tucAoV74sVx7hlj6
	 xSp8EOwKFeMF5pbY2vjwvBuQbDdxFtadMVW7gRp8PYScTkwm8RlB5Ykzt4m7d/zdYL
	 4jAHjLsK94E3LzHZ+hyIc9meBy9dui9wx1aohYBkeDuSoTTRfsWuShiYGFkOxSZ4Zz
	 q6tqhyDd9gggpz98YE9gDGymdppjiFU3i3GsL+l+f9SJOOKJvjn53nBOZ6LgvTZVjY
	 FCZZlDzxk0m2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A7CC36008
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174348959360.3130.14595499965972010866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8479c95528509e1d39d5bea7038a9159690ccdb65da02726e306edc43507982
Date: Tue, 01 Apr 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743489593
