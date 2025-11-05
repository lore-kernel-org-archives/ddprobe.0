Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CCE22DCF4C
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762341594; cv=none; b=KKULHzdk1ZtLayNTP9qQmbS6/J3KMhYc2Oky2SqxPjtXzEDO+VEMqWaK4sumn50xdqFQ7PJMU/7aA5EDck7Z4FJCmbSGOY5rXUgWjyQ1upeBxWR3+oH5urnMXc1SUoTxhiXXiAGjVzOoL3R2FZ4+MVWVmpwsJDtNFyacSGJ8pX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762341594; c=relaxed/simple;
	bh=bw9n2t3Z6mIfid3GvZJmgUFD0QcBdqGeSBht1COyaIA=;
	h=To:Subject:From:Message-Id:Date; b=p3inwHrcA0iW3TQiRUgnqaTTBvo0w/hKxyOjWnRqzDVXYmsqgQo/Q7VXuy+VmAtuluvbUJ5Ji5SOMwqi9GJ+MPuNQCyzAnZh0sqlBObFo40+VVqI7gCAKA2dQYX9CNhiyhLZ/8RcUNtig31FQrEwgAoVyKzWmyLrxr85xeeYzdw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pQbsUg6G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pQbsUg6G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA49DC4CEF8
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762341593;
	bh=bw9n2t3Z6mIfid3GvZJmgUFD0QcBdqGeSBht1COyaIA=;
	h=To:Subject:From:Date:From;
	b=pQbsUg6GdvCQo7jYin7Tek0z1xFbtHzxV0SxGaulSwPOY7RxWsScNnHMrrWBj7Og7
	 OkTGvtifs5sI8kFacyHLScLsbtPbOSlvbm750pMbP7nieyQLQn+X4FCYMsKbEYrD98
	 LI1fpSTGWEaCUmI+RAZ1cEid5hndLrLeuF3ifmeAy4ydSD2C5VZQ5Fjcqkw35THXGZ
	 pqhcax+BJcEgBCCbuwFVewiF0eL0trrPlw94k5FvjM8pcTjkNHAWO9/ysYR1xLUr+o
	 X0FvR8suwAyEWboA8yteqDq0kJ0jDiffYIvjst2nUssDeoN3vtWKXEpOhoRqYEUGHt
	 VMdeZhPI2Kavw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AA67CCF9F8
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176234159359.10169.8984093377527076982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 585d792ea6edede65e424b431748ebffa2cca01ab4c7abbb1ea5db6f153a4cbc
Date: Wed, 05 Nov 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762341593
