Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 704A61DA316
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 06:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719986723; cv=none; b=WWoppcT8Ro8uX7jLF1FF91qo7bFfZClfi4g44t5gCkeHnIpDUWSz8jK0y+bsDRXm2trr8/OBlVp10isCVDeFs45lRoHYl1ypgMHfILYdqNbKnqRtBKw9EX6S+4BCE3KHINfHVsL2imtZYmuUEmdpbTtooxrZgUZa9NTWsxH+Kt4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719986723; c=relaxed/simple;
	bh=9d1iTqwYxKeG3YQQ9kJAfYhCuuIzX1gPhidGRQIPDNg=;
	h=To:Subject:From:Message-Id:Date; b=Wl67F/BO13Jz0X3eRS+dyYqNA+gGkOezu7DF4v4nwhtQsLT3pf3suRcO5bfZg1JsdSFDeq6mOfkjepLGC/vT76nxJIgN2eU8lI+qLHjlZ/Qexw1txMhQrcFfoi5S7na7wq1atkp9s0XD2J/ZVb8InaZ2e+/8BZlTW4utpgY6lkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QLBRfGUq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QLBRfGUq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 04567C32781
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 06:05:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719986723;
	bh=9d1iTqwYxKeG3YQQ9kJAfYhCuuIzX1gPhidGRQIPDNg=;
	h=To:Subject:From:Date:From;
	b=QLBRfGUqtn3wh60KtUHlz9rWGBRDUvkw5wYTAKRxZL8treyO+TLcip4kZhnqY9o+d
	 iJT7ZqgEOtSdi1bHtHnk58NVvKN455eBXOYzwd3bh2yn5X4lNXTMaeZOkHFjwVseT7
	 OZ0m3faUXFkCOGOQ2u03ygLI0vTwRX5N7DACDhvYf5YZ2UCpRQ9paEx2xquxAJQp8h
	 cfGVmZpIhlb0K5EOQN4ACvxZ/DEfk7AmFABLwoN0cFLPK/R6eA60prq7xGddikdLxx
	 cIkCnVbrw6EXN5PZjy0ChEVm5LmRXnHmkMOSyW1Bdu4WEaQy83Z08cHTUi31+h9PE4
	 ajdIQQrfh04rA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DAADBC2BD09
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 06:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171998672287.15569.9988999690644257131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38d7abdc6cefcd30da09a8e507ba7ae342e7edb8b00e77fa8db3e749077429d9
Date: Wed, 03 Jul 2024 06:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719986722
