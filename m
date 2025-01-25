Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C4451D5CEB
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 06:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737788154; cv=none; b=bjH4haIx/TQexqL/psI/HlenkoWcOmq/vCJyC5sEpD7W1onFBN4iOjIVhWDyCsgBE8hqST/1QCXNkL+Dh+RWKgfOTyUqmD0D944hof1TxDz7ivZAJK6mDjuqtjCiDrJTlZZwG/ry0g9/YZFUuDLzJyOWsxnbyE5OdtXrQFh7/NE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737788154; c=relaxed/simple;
	bh=ZNkZFGLHT9OHFgebUm7Doku7Y2A5nL4/cyi1myBfzB8=;
	h=To:Subject:From:Message-Id:Date; b=qKR2SE1uBUX+BefVfpTrZvrHC4txuTDd6W7dLnfVZAwnkXDVakgsTj9LjkULkWP534Z9j9ZWa/xT4CslOZsrLUDVXLTca/uV1fzMkFzU1MWyDYTWVw+V9OyjdIy+NL6cfJluPuVSLiNVbnnkJwtP7PLWkXyNikI6Gz4t1Sr4vk0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=snrjfAg/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="snrjfAg/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F198C4CED6
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 06:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737788153;
	bh=ZNkZFGLHT9OHFgebUm7Doku7Y2A5nL4/cyi1myBfzB8=;
	h=To:Subject:From:Date:From;
	b=snrjfAg/jQXbVhMsd7YYgufSu8i52UP5XVPDkzybrlmc7+UNsPiZNZJvDwtzZL/gS
	 L3o3rSPL9Es3FB4rr802EKyS/zs/6+o32wOi7/hKGoYwlcjsyObcwFn6CJgfoEZfLq
	 naCgmyKA/gdIcJ1mNL5YtGd6DmRvN40dOr4snfIs9i91Wx9Sr17bGmk8Axp0c1hgPC
	 CdJtTa86Ny2OTLMMSkh4fJHQbKpqVg5bN1Q/Dm2TEhzOkQ5DGs4wzzypvoO2YorFyG
	 V6zvIiWuzsyUIM51+71N4auJG71df387LGK/qFmBZOEyMTjIMVR0Z5C7RhCwQxHCP3
	 rK43rDkiIF3ZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F666C02182
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 06:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173778815357.16911.11297279406436178445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bcdd67a902687103216708419138dd4638724351a08aa050dc784ca086b863af
Date: Sat, 25 Jan 2025 06:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737788153
