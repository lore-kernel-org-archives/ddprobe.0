Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4911513EFE8
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 09:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714124543; cv=none; b=OpACyvxzInP/CucC8OJdY8PHFEQOcxK6XMCQbDhkhsDdlop8p7hEDeFgU4Hs/yNkOU52zhnbkVE//0Bsf8+64P5Q1rywpK5J0GkU2icuHnGZQEA1QgvJQFbtJzejCkjWsEWg8kM+hyns40t4wy/so6pzmqyU8OFGwrY6/s9dfHc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714124543; c=relaxed/simple;
	bh=ebyquZucSzunhlOiJjbt3EigRSNHhHYIugdjqvCHmE0=;
	h=To:Subject:From:Message-Id:Date; b=pXeaCxWbylT+P+EFsczd0R27hukJzbjcbD8TYqt7exDn81B5ZxDrp0oMcqSGpCXj1ErQ0hkY0r2nJFKw1vo5CKzv/TA7cULu1KG2w8L8kuR/UMBkjDI7gqS0PkSi4UkqG+Jnyvurmhf1r35hSqUwxk615JmmkK7xoVS4aD5zuTg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A/7XAQZ0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A/7XAQZ0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9E61C2BD11
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 09:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714124542;
	bh=ebyquZucSzunhlOiJjbt3EigRSNHhHYIugdjqvCHmE0=;
	h=To:Subject:From:Date:From;
	b=A/7XAQZ0gIBxniywYHMTVM30XPX8NrYYcN0PT8JUyHdLNDfqEly0hLPtklz9pVO/b
	 SIabaiBp6SPQl8QZv9ZlakFh9Q18aRWj7i1Ut4FCcdThCwWMSW1BLQHu6OcrqUx+Ik
	 huv5Ri+mdtoaJh56QGsScA4I5tMu5HL725EIAwfQuSXQZL+fnQeDeJvJPqtY+7Wey/
	 IwSracxNEfJwOpJqHH0ChAse9Ks20BnAV02QxpLDSZnDoKZBmik4SgCu0sNQFr94dZ
	 XaV0tgmAVEEcevOZffnuNQvs9bQ5rsfIESu01v6xjXqkg/nl29Hvtukj4fYHCWu28m
	 uKQetrg4LePpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C70EFC04FFE
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 09:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171412454280.5994.8746050150857438496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 123e2cda8d865e1d519c71b5df3fd0dd45fec20efc6e367be374fe3fa9475db5
Date: Fri, 26 Apr 2024 09:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714124542
