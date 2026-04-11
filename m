Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 372D328D8DA
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 09:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775899054; cv=none; b=kSj0k0h8982u0XURvXC2QzvMjU7pnBpnZnoVqAYfzd95Xp6rzPbCRNU3MzGSRJ7W+XF9hTWK39/25/mlRSBIMAJXJLL/feOiyq7Sm0LFqNzqZKD6E9JDS3v8iEoV79abEiM8xdHzAAgkFd11mLGmnpWjvjHriyPjdm6li4AxYYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775899054; c=relaxed/simple;
	bh=HCMUNKWQIo7iNa4f5u3+v2Y1jYu2rK3WgWJHSsiivRw=;
	h=To:Subject:From:Message-Id:Date; b=KAZszA5EToZ58ctdwFasd51FP8zqhmvJyIvYmTK5LfhVwTBZXKjkg2iRnuiVHCeO4Cmi4k4UGAYTm9oBWyZU3HlBvVmcTZ3TxNPuWxPjFF9pQt+20PUHF+eTOKrVcsRlDMZ4ZB7y+Kwa6q82D9NSxj07RwKSkfaIVJr1zsSSsr8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BUAcW/IM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BUAcW/IM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1E88C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 09:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775899053;
	bh=HCMUNKWQIo7iNa4f5u3+v2Y1jYu2rK3WgWJHSsiivRw=;
	h=To:Subject:From:Date:From;
	b=BUAcW/IM40Kg64PPnj7S0vuMZdIAWAqg1Vjir3aoFbU6M+tao5sOuMAJGA/vP1l3z
	 3+ck3ZiO85ix/j6MEQWXUXgDmCqxNlWAbdkbcdPXFofhP6YBEbupPDbzEREqZXiZ+m
	 HI6Xo6o8YI2ISxpbISi1YCjO+cdOg7pApZgCWypTXm5VkODENhYDjfEb0/kjfj67kG
	 voJNMD46xv+bvnuWbFn4gCJeNRTjxVkVX83SlxWHH/HAlWr1Ae4GnQ6BmjgIQdE11C
	 D76TlJ2FNBM2aHXM4/r4fRNOqX1pwk5T5c7pWPF3rHVr846S5b8EqIUFCBWw1naFOM
	 g2yXTmtJh+IyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1ADCF45A1B
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 09:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177589905369.22875.12613587983404186786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9b8eae5b5ab61cd3f8189418fb774183edd0025e1c1979ccf9da394008a5fa0
Date: Sat, 11 Apr 2026 09:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775899053
