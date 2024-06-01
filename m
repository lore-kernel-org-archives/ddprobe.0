Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 259161514E2
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 13:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717249463; cv=none; b=uYVNp2XVXs1sRlxHq0EED4cegsa0RPN5CkGtKxRvSsb+LqXeHUV3anVY8Qh6ih7QsJRs/PaXbXqMQzRukgZkO7BIteYVjJuWDYJS/87VHUjq97UvvbLV+VDpKeBYw/f2eadQcwa26a9SRiTLSBp7s+zoo42wgasXPa/qSOINirY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717249463; c=relaxed/simple;
	bh=OFJXv3qx+cppyg2rV8kLAsRFgQY12izyDqDJcEabFRM=;
	h=To:Subject:From:Message-Id:Date; b=VaQARNZk7i6a+hY4WHjnSqgHcLlQdBoGKsqvgsf9p1zGkjDCjlIyXOZMTy7w/num9EkboWll7uqVd9/8M6/KQ4fgSh6omkSirAD9yiPRUhVgjfwB0+g+7Fwi4q/pFWOTUBQuue+PyhS3ugoipA7QSOhz6M6770fopPvdG0wn6gk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FHgiUHc2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FHgiUHc2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4488C116B1
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 13:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717249462;
	bh=OFJXv3qx+cppyg2rV8kLAsRFgQY12izyDqDJcEabFRM=;
	h=To:Subject:From:Date:From;
	b=FHgiUHc27VeKiNbzxej3PE9KgbdaxAaLGyNTYeNVynEb4T9n38f8OU63DRUxpBWen
	 EE500v9gVUI7lX8LnRSN7LU5YrSnPGy8O/8PzlaOY/e/6Hok8P3hpCv6c+xE1PC/cm
	 HDLLg2THFx9ZMPjWu3Z/iwOKoZ0ifx30nodKabDnwfkjAqPbUlZPm0QHHj4knsiCAQ
	 pAB2uz99F6RM27oxrlZM3Fn2SJq6Y02mUg341/YmrZQ/R6S/F+ZnIcxovlIIItcBM9
	 Ye+qD7f9kuyYhyaRqjhLrfIDxFjqFPgHOCBSYd7aDN/EK5ou+1VfmvEnUD/A70uFU7
	 e2hAk8wsoqIcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF87BC25B76
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 13:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171724946279.3013.7214357612273411362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c279c33d08804de15520dee6fbcfde4196730cdaeed62c1ce832897e731a3ff1
Date: Sat, 01 Jun 2024 13:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717249462
