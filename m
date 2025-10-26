Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EDA97483
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761480594; cv=none; b=ln0arzgfz9rONO15TMRjHL5u8Cd0z1rDt+NsiZqoXSHrACtrZu7lk29FyBcg4c8I5KWyyysghszwgEKkV+KB7W5+iGjNdvdPABBzNOuCzI9EfU8+bUijZKzCc6z3tbVwAz9gISBNHDvwrK6z44gka4RqRKjzpdj4uU0sKmzoiu8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761480594; c=relaxed/simple;
	bh=XU5UEDJROIUjlVrwd7TEF+NGwlQLXmxEJFJk5JAy4w0=;
	h=To:Subject:From:Message-Id:Date; b=j0hEDOvIwMNRp5ZsnnwVQuhVWQOf5FP4sMOqrgPW1MZ9u9f1JnjWWSPRCpvrAwpgV+z9Oeydhqaqdl71VqhrirLitrbjHiMKo/ZucwCWmK58lYpPQKRl6CxGJ3y0KuKOxtqGHAnvGgnXqek0kAjn6M6U0l14YgcKp7AdoYy1lcY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mmp9w+i8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mmp9w+i8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7DC7C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761480593;
	bh=XU5UEDJROIUjlVrwd7TEF+NGwlQLXmxEJFJk5JAy4w0=;
	h=To:Subject:From:Date:From;
	b=Mmp9w+i8WET4cf8aFiXgaOHMPSl6FKDobuzmgkH0M5jGrf3bz3aBtnK2NAC2Uipax
	 2ZZM2MxYZcDoZ5q7XVCvn4kNl1rf7p40FE8nL4C9Bd2KHIPaSYV5V7SCowRldGQBGd
	 igPYxkAKwE9A6VETVTAAYR8NkhTbnh0/08NxwZJNTlMo/icxS88n+l6g7A62xQABRB
	 0GUyc4GDOidhbwY41YYPDZG3MMUzrzS1ANdjQoVZ2WCt5Ml8VeAQqG0XXbRvhYc+1C
	 HGCKBsQYI+n26MGq0Bf8OLtoEsB+/vHCRpURpJpkQVRwCQLd13KZJMvOXjk4z1XzU8
	 OHg9W4c1+X/Kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95CCFCCD193
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176148059358.5437.12773409931984751591.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf67eec8c19c68673358ab8ac2b9f9bb90e547f2788ed9cf4a880ac636fd523a
Date: Sun, 26 Oct 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761480593
