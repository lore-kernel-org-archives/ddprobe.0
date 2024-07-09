Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63FDD286A6
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 01:56:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720490183; cv=none; b=GhNSAWtctsu6v/GWFoG9w4hBlO5FnGXUee0r5aMxaFqtisi1lABkJoETdLOQsKczmXxBkd3o5b7l8GP5l5AAibOYstoXk96vJS7XtaWG2Ma8Fa28T3AOmRPdf6Ds7AMvQI6vgdyoc7LrwOm5xpSqDzRFnYUUKnIredZN6UhUM5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720490183; c=relaxed/simple;
	bh=GKKxvOQZdcqM+9b8snv27alsoKiD9zBcSVpaz/tViIk=;
	h=To:Subject:From:Message-Id:Date; b=mUpxCBPx7jG/9U6BDUCyQ/rVidjZnZ/MJo4YYsMtJidA3IvYuattsQqweVlax7zw1U2e0aOiU7xkCEVjSm3cTYl8/lIu37wXgfN8T6sjOzVGiktM2AEh6ntZEKqKY8k/oJePd/7iLZIRzF348CPwUq82Z1FRqnfMSEhUO7jZt74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=brWCauOZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="brWCauOZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDF51C116B1
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 01:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720490182;
	bh=GKKxvOQZdcqM+9b8snv27alsoKiD9zBcSVpaz/tViIk=;
	h=To:Subject:From:Date:From;
	b=brWCauOZIHXmGdVeyN3pz/NBQ8tmmU6nkp0uydV2lSFed7Q33n4ddww4j4dBlhygt
	 KRgZ69lUx+X2SANdT4ICd1q0cW20sD2sVXHLJ7r1r7pwWHxQZxJhXsoylFv+/eIHC6
	 i4DzYLMg67rQsJQFtxUqCwbtnTq0D7IyXh6PDJ43UYgELkFIe4sJg/J+JGxxY1zd8D
	 qWoa+5FzK+KMDH/bIfzzm+QV9vlc2g+EJDSHAw3lnHvXTxyDP9CabvGwudvYSS40M/
	 6V4DjZquyXjfJLpEmhA5wjpZHiB/J1YZtJXQN+egJX0VtQhVCZH/705b46ISbk9dCg
	 +18wF39AzijPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC513C3271E
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 01:56:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172049018280.3276.2292585949954637087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa1234421c80add766e857dee783953b9a979429cf8359788532fde4f95efc96
Date: Tue, 09 Jul 2024 01:56:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720490182
