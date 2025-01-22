Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A85516BE3A
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 10:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737540354; cv=none; b=S1S1MGKLinhV+05gKquySl3kzmKf/SPu6dUZ9zUgS8GpcR2OKDh+gmEdqD/S7QzLY5M3wa5c8TBTtmuW8sPjQsujgcGjd8vzoss0mAyRNgARgCnsyVX+8bB9C/xkw09mLiyeW5NO7xlaiZfAFYIHTafViCl0orgW8YgiJAdPGU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737540354; c=relaxed/simple;
	bh=heRzM/Ulf4Gq/ag/rr3OnY5UcMNJn6fEzCB7g6mQQMg=;
	h=To:Subject:From:Message-Id:Date; b=cOhL5aVH69aHxCxJQuGRYWo07slLCOyS9eI4bMPJnFZtwUNtVYBX7G0TEJeKQtjA4gkropZwQWz72AL+Ug7hW8KlqlVql9XEpnphyiHoj/JtIAlQ3XxgHZe+hXUVVhAuq9DuzgnN86Z9HVQq8xqix49ujHpXWfX8FscL0uZzhjI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BX3ALFST; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BX3ALFST"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8F68C4CED6
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 10:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737540353;
	bh=heRzM/Ulf4Gq/ag/rr3OnY5UcMNJn6fEzCB7g6mQQMg=;
	h=To:Subject:From:Date:From;
	b=BX3ALFSTaoYu7egFyaWiBH5mj4+VMYLJnqld8DjqWijLeifmqnwq18sQFiHupnLh2
	 PxXXc1hZNDQpsNZ1ryiLvx2hWbChbzl/cFficbOrZuuHwmJuCr1imij5pj5rkkT+xt
	 AMomXj4vrjNasdAPeD5y3E+/PKZGvb6lbp4crn+1BGedYGYaXQ7pxHiQlBwIv/9Gw6
	 jV5uUizt+aM6YCCDhYJx0G6wyocbX6nG+fSrfU+SC3y3wNiDrysEY6kUQCmSMcaN7C
	 gBoLCxW9ZxMRgyzuCKXdLFkZDgoBDKKmOPGNT5qufbYcvt2o/g0A4zO4nk7xPw/qze
	 R+bEqiMAf0kRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C7D6C02181
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 10:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173754035363.20180.6554431668977203397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6125b0c3d91d14d826edd96b522931946eef8b7fc32e0e455deff81979f41391
Date: Wed, 22 Jan 2025 10:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737540353
