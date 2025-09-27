Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 231931DE89A
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758994794; cv=none; b=WFw1p0NV9RcN+lkQBnjef47c5VwRWp0tambhPXGoTjgOOX6qRlUNJN8Fpk9CZQSYMMbcOOxFG3eOAwqYqUCpLPN1O+DteKVV0XFfjDmKNu7zbdJ/Xx2ety6eVpgu3hQqlN9e5vDFf55LNCgVbA/F1WI0JEYNbUcCBhvamlfp54M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758994794; c=relaxed/simple;
	bh=C7qke43HU2qCJyufkgMT7Io1JYuA8IL8LnHRnYhsumk=;
	h=To:Subject:From:Message-Id:Date; b=cb4C0pJ92Ho/ntl3dIBtLfBHVf8BFkUdUux2yMP92ybvjnIOqh0fdZ+6jbSYrsZ8se5mJX20LDuzMGooxocr5NR3g48ewE/FUpTitGQZVUnyu+9NDdFMPpRa6CT3pskwI8QDW3dbOEi6KseBk3BxQQeBNpYeObipmDiLXKa8rqY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K6iLUD5p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K6iLUD5p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABB95C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758994793;
	bh=C7qke43HU2qCJyufkgMT7Io1JYuA8IL8LnHRnYhsumk=;
	h=To:Subject:From:Date:From;
	b=K6iLUD5pEsdCHog0yHhuD361TNVIzXdL08zcy1F65srFzFQD7X5AxDM9jHxYLoy3e
	 pDDqeHHYFBr8u4xSlZaRkLEXQRR0bSv2xuLk6LDCtpoif++dQRJbfYSbqeoljMCdUq
	 Y2qe0B9y52HuGsIJtHS/dL3A1YEhdolngAjr99+Vcty1gu9n16OoFJZmkKUzWj3Ox0
	 rclinuiWzxxp4OVYcJSFQl7PhU/8Wz3lWXy8rhAxVfAoSgVnddwdH0DnRXsA5m1eNc
	 6M4NLQUNuG9Tpir7au9MpCCaQAHk/+21k2qK1jfXu+K71pnH346wke+5Ue7A50LOCF
	 EHDsLfiVomubw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 950DECAC5B8
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175899479358.25132.2434015260081340925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9bad74e08a741c76ef6cd685a79aab4f9d61472264914d531dd9a14008497a8
Date: Sat, 27 Sep 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758994793
