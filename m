Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 048CE26AC3
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 05:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773638094; cv=none; b=Kn3WrNKImDbMTe03Nf4d6F0Y2maqy7tsdTWoDsF/AqwSg1C7ghjpqIKQFZ79onxC7OktuHDT4KLkMhDm9beomhY+Ov+13JfUgDyDqNh+G/N7GwYPPDAc5pBRo7vYMZb1WTmEDucQxCR09CceJL/lghnvM4AHTh6x1I1MvDWOt8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773638094; c=relaxed/simple;
	bh=MdSKY07sNkwK7SLLfZhwJEj2eNSa9Vc2/a279JZP8dk=;
	h=To:Subject:From:Message-Id:Date; b=dlnYoh2ZKCf+NzlLrHsTO6ktycw4ay7ZOTzxxKljEmNBvq/Pgc1n2rfgtQyRrQXSbrv5o+nNnAqJaq0k44c8aMQcA66yo84jNH0ZFiwJQRx76HN0xWGHnS2y6c+tSiHAv9GuvnJVV5CgSIIOVE7yWJRFfYRrPwU4W1Fppa0Lq20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k1TzFjbD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k1TzFjbD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A018BC19425
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 05:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773638093;
	bh=MdSKY07sNkwK7SLLfZhwJEj2eNSa9Vc2/a279JZP8dk=;
	h=To:Subject:From:Date:From;
	b=k1TzFjbDsvIiZ9mvN0eTdV6/Wxk7aJ6osfDKN9+YSbIHZjc0MDsMhg8O/ZSLpBTm+
	 0hKZmST6uuiP075ONuV2oXoNf30W4Pv4mEmM/jG3HzJMi7a6PFQOKB7p+M3P0T4Oif
	 vdZIi5LeH+DJ8DMVu+uEUk7btxu/XIUxscNojJLZX6YJlzzTTrTLcyNDXv38Kx8X0c
	 uIMmxBYGAh/xzFIufAIEd6D1vpkqyVzBtyImu0rqxizRJUKo6YRJEqt1UESYVDupJ2
	 5sfstdcDSaA+j0HrDHLp6WmBb/Q9xrKT9BZLyFr/n4JoUzAFZkk1vlpVKDX4hCAARN
	 12KuLhONLij4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA78D58B21
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 05:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177363809357.29518.4902092403623533371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6df9c51b6a8d4880845a2bbb5fdee70fc5cfc586ff6fb93d890cf1b349b15f84
Date: Mon, 16 Mar 2026 05:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773638093
