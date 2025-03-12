Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47F4B23C8BD
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 10:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741775334; cv=none; b=Zsnn/TbeXLceYThQvLe1ZdGixdoSDT89JCH/RjbrCG96pF65yWBdmff/gozz0saZIIihzRrgqjD3KRJNQRzDoBQyxOMmlng0m7TvKmL+HkeaR1FvO/wlcj616nlDdBqoa0iQMlRyx0IX5YcgxZ7LzNI58MYxahE/KYxGnKq7qAE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741775334; c=relaxed/simple;
	bh=CW7BGIdeEpx9+7xjouy2Koi+3eRau3WLwQx9q84McrU=;
	h=To:Subject:From:Message-Id:Date; b=co6AwlEEfYDAF6AcZwegDw32iN7kSLjIwnlopjtScQZRTXFtsZJcrxO1+PTpYdUo2SRUwBsj6KRSRy6ZNGQfk2B/bbwFkVMdWqvN1oaRESmuDvZlklh/6WUOVBdJZPOIsGeJgpDEioRm0TgZjdxBSdSlMORCTNd4pbU9puC6S/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GL8tPb6J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GL8tPb6J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B50FCC4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 10:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741775333;
	bh=CW7BGIdeEpx9+7xjouy2Koi+3eRau3WLwQx9q84McrU=;
	h=To:Subject:From:Date:From;
	b=GL8tPb6JFYTG9dcwT5MD0UaJ5W0M/GHQ8+oT+uPky337iOp8VH5kUZraDm7i/m/d4
	 50LBWrEXgj8Ghj7ObVhqwyy3eM0Zts23xNO/OEe3JzA4lVTWJ6UiWs9MqMxpTBi2+V
	 hQjEWqyPFh/nkDUgX2O+gxAQYLKM2GwdouYISWM61XDA+TwCfQWzowAgf3ZrJ0qkOx
	 BLvY+FqZ2niEp6FRkCYBs3BQJnSgahlKDcmToHh+o7O17R+D1j+p2ahQ2l0/EXxYtf
	 PsxRYeyeZ8dvL/CJngM8Ta5oZb1Qs8uEIltd1A/T0lHI+/dbKGneDZjd6g08p1tUvU
	 HaGFWX8XpR3Ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A570C28B28
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 10:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174177533361.28258.9227861698902552566.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27462450b5b9f582fc31a23f51ec63abef7676cf4505ebe98009367e30d6d0c3
Date: Wed, 12 Mar 2025 10:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741775333
