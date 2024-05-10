Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47C77FC0B
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 20:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715374343; cv=none; b=YfcoDmqNs2XshLL6eONR2CzlyvagtTngvIzen3lLZ4vQakYlkWQAJ0ajknnvXTa8StyJ3gZ7isDeO/+OklaJE3I2DdzkWQwZ0YZ0xalZSowvuXw409f+02MiOYLnaM6GlbS5zcQ+OpM/tJ7mQyPe6WNkFI9ofRLSFQGS46qfVT8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715374343; c=relaxed/simple;
	bh=69fTdc+a9rNR0hxGVXjjc5iq/+VEUiQBVCmpOnjSVCw=;
	h=To:Subject:From:Message-Id:Date; b=jTA52RVSqrgHUWHDiqNzcR/3aWr5GnV8DH6FuLe5Kcm7zWHrHEg2NgvkRvLAyf3322tWMiKWDXoMlR8FuXCunMLrNhTQj+WJt48GpmNsRT+OkGqfOpJc/9begpBhCRAYsPGXF+cWnWR9WFW2T63tqa6Bk8JKgIDGQEjYHBXGgcU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IWgmgtX0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IWgmgtX0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1C17C113CC
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 20:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715374342;
	bh=69fTdc+a9rNR0hxGVXjjc5iq/+VEUiQBVCmpOnjSVCw=;
	h=To:Subject:From:Date:From;
	b=IWgmgtX0XL6V08uLEZL81F8AoQbIv+8SYDB38QkcDHn5M+jkuEZK8lk6s2haP3wiM
	 be+CZezi88piXlX0A0ERC59f+8ymNQKb4J0sEitr6SLtF4pAnrvkyNF8NEn1l8W6L0
	 i88NP1pQlgcuVv/ogDHeYuA8ldgJaILolFqKFu/jCtwQnY1TsanNwiPz/+qDjtnxjC
	 xuXf13zL8GIWzreJXxhYgiAtKEuet6avnFGR+a9fC9jtyNKUhWsPRi3c6bymaF79OO
	 W/TIdkqxPmIcFPTA2hXotoMyWseNbU3GrZNHtEst2KHutkkGF/tV/485C9fYMMN2pS
	 xYgEhqaXyalFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD11CC25B10
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 20:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171537434276.31635.2250930586206853743.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7437a8280ed49d8d91c542b086942829d1c8346bd792c01937e4ab0bef1dbd47
Date: Fri, 10 May 2024 20:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715374342
