Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CCEF2046BA
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 09:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767173634; cv=none; b=En8nx5hZELHYLH1icQ0zoah2qJj045lqBF0NP57nYZRnjdC/AexXn4po/yoX4Tkj8uLd7c8kfEoL1bYKFJto5kKZC5tuShPVO4uM4M6koFDfyFtJq9k14mo9OtyVqa7bwv3RpYuWjnaWuo+prKZ9M37pooYEUx6q+ag7M89uH6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767173634; c=relaxed/simple;
	bh=37WURW7Qair3w+KBbUJ5YJpet921b+4RSh582Fd93tI=;
	h=To:Subject:From:Message-Id:Date; b=L126y0p1YDmHS9z7o0JwiSxen443GXX/tj9OVvMa5rbuW7dZuxg7Bik+ejM45LRemXAFqyGhkYG4duaKwkq1nt3+FIbt9GhTrCm3QkRO3I1k00DdasgxfgDT74d6OPN2UPtzARqf9zkWVOBZqwuDMuUQITci9I1kQMJEgbeddFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tTwOn9Q1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tTwOn9Q1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8451C113D0
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 09:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767173633;
	bh=37WURW7Qair3w+KBbUJ5YJpet921b+4RSh582Fd93tI=;
	h=To:Subject:From:Date:From;
	b=tTwOn9Q17HTki6QvsJlyPRxvt8BtdQLSXBZO8TiINSXrSvmmX4ikxt8a58WcoQq3i
	 Iu3y/UM6BWo589eTVQKLBt5M4sPxF5FVt3AwnQkjdBQAZ8ygXP3GCzq59GWvxbO3zw
	 P6PIMpf4Etqi9k5Mvhc2fjPEHJtNgaj+wxjOsLAumCIZQ5caXAqxwKW+wfUs15Djn8
	 R+VLZlWvhuO/1MhEhqgvDqOQRh5pqOLN1RN0ymh7PXs8lAqphopLF/LC/uSTLMbyqi
	 PYWJ04I03wqhUd9czSXZ7txQbJQnMiUZjbCYi28d8jhdK7ALxCapqjG0eAEg3E1g4E
	 kA9YuLwulCHrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E63EE57F7
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 09:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176717363357.26482.1106384558961972678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86c62774d7bbb6a63e23a0f99101987b9a5ecdb76df9b0871ce05891b2e88da5
Date: Wed, 31 Dec 2025 09:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767173633
