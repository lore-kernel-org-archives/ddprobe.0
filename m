Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B71B4F85CC
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 20:10:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790626235; cv=none; b=M2hXdJ9LllLCHmFPe0s5HQ9gj3bux8p1OBaEPkfYPBRg+yhlR7Wr/PC8YNvElzl1ZMHK55sSVHzjQ0YEbK4C9AVJZkg3hLJxnF6Srkf6VsMkL9AsYjFll+vbpcIndoosmgz4/5CVNUQMAsLizutmNgXK2dN7qGjweddPD8SUZag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790626235; c=relaxed/simple;
	bh=XoEtozvOCCV03160JMcW/1UZrfqpllDDRzkPB2KCXy0=;
	h=To:Subject:From:Message-Id:Date; b=sqDPE9D5SczjzX7Tb12lUiwssn5ZOOsshqRu/EyTJCFCp8yRyBrADIxipKsgcqfZYKMlxpmFMHGxwKHYRpYUhWb7pXj93dsoCUZlbXSH6o+txW1uZf2aVyU+6P+Bk2qADB88Cj/Kho7qYZKiT77WD2ZaeO+WeSUaRiBgmAW4Xnc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YIEtqUsA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YIEtqUsA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4C6AC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 20:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790626233;
	bh=XoEtozvOCCV03160JMcW/1UZrfqpllDDRzkPB2KCXy0=;
	h=To:Subject:From:Date:From;
	b=YIEtqUsAY4JGZyHmmT74BmLHzHMspaS0K3TCiYQ7lcZ/NirW9NgF6+eLd+h48AYfp
	 GCxJlE5NSYeJIGlvRSul+DWwib83C8hnc0GKlZeA+xfefQt6pZUlborGpTHt5JtOFf
	 p/kGyfAhV8ls7JszedKhij5lwRwdNUSMXDVOYA8m9rHsrS9iOVk44N2nT/XNoKR0L3
	 PQdF6t4Jfg1OlF8BgU6s2NBE69flHSJ9Us74x5ASF45DglSlthupsSGlzcCrRxWlOJ
	 I3KpNttIt+qIFpNjs6mNzQXjHaJU44aj8J6vKLyzdHNJ7byKc+mBAx06ybBmidOh50
	 y33RnYzPbsFjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8362CA5FA2
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 20:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179062623374.32122.5984106431558362680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56ba24392b3f76db9020999e198229e5b6ba0921a22d155f91de26a01504b391
Date: Mon, 28 Sep 2026 20:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790626233
