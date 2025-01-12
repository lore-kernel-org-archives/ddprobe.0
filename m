Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EB6C1BE238
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 15:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736697354; cv=none; b=h4FCofSbfYckFJLDdF6E/opIxYm2O6w99+vt3P513Bw1GnhA4jpYV0K1RPRThBv/vrkWDIvDRVuq2jqZ8q9cGhy9+wdmMH9AyoG1XKDtjB5oBVo4aygYXMtfERzpiJUIdXhLjLGu74/SGfIwWJPM4vQKAnw7j9v+MwIgYkOr0FM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736697354; c=relaxed/simple;
	bh=eo0u6vVY3GhUJOuOCMGVQvRW+st7S8Hn1b6YMBO51es=;
	h=To:Subject:From:Message-Id:Date; b=CQuvvmMNELMJ4YbLLp2muLpwK82vJoRt8JPt/19vjqO736NfyFw62+O/f6KtRdDNGasZ27zTWUWY/ywDhfL+/WakBvmC9+gh3PCMarZ4/Kr748ALdOGvq2NjWx/9Mz2cQJ7ih3Ayz0ZC2Jv8y5ebJ10Mlhmfqsaf5DJ3Ed5l794=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ul1IBiyR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ul1IBiyR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9F26C4CEE0
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 15:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736697353;
	bh=eo0u6vVY3GhUJOuOCMGVQvRW+st7S8Hn1b6YMBO51es=;
	h=To:Subject:From:Date:From;
	b=Ul1IBiyRrvhYqZwT865EMgL/uN9wuhOMZ8hNcVPod4Fd/Ua1hlIerQtmqt+yzvCTt
	 T7e3HkCa0snf90912/ShlO4ZAcTuLEuyWz6yoCpuYwyN1cYGHl1F80iUK5FyGJ7Gkj
	 kbrIoZcBp74RYEFby+jmnufKzhNnw8Auy/9Z33HNpffa0DDcmbR0+vzONyoQVmON1d
	 1F9lOK4ljHw2Vi/Z8efj9RMxF0xrmNJv0GCikGdAPjGeB5/vN+Z/+CDr1OXk4jpRCx
	 uZkNEK0pUENPs+CEt1pPJfLx9BQVYjwrMZF+DhkIBwkbkzZ9Jaff+hXRz0Q3LXuf7G
	 B7U1zaaQeimsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F56E77188
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 15:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173669735358.27033.6524579045097119090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3b6191bea96e8cd574e32fb43e6d390aebbb6108956f3f19edb7d6dcfafa56d
Date: Sun, 12 Jan 2025 15:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736697353
