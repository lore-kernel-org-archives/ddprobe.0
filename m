Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ACF91805A
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 01:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736819754; cv=none; b=ovg1MoxL+XbTblPHKq5OrWDP5k0lJQllyoH0oGv87dXO9USktXC+pUldkjP7DdalvBbQMHynWrM6rlHRjydSR16FpE7oaoNO3v0/GprdqYRdIKffQXVPYeYhiMf69vZXsKm/LO9h0V2G1xFF5zL3iDefWTi5WFzb+bhLAA7rWWc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736819754; c=relaxed/simple;
	bh=OAgyRqAoIjgt21Q764u272NYZtv+iJOlEdn1gWr3AW4=;
	h=To:Subject:From:Message-Id:Date; b=ImALnFSZaF/zKAvIsyJu96RYe/xeRUkJKs9h5c8IT8NZfSTL7ePguUb6mpZ/zBstCYkwqH/UniT7FhG8Qkp3H5l7nqLQwoyAS/sQ12H1jhv/JY0KjHola00ZTV5YnB4L8UT6FoC1ot6uuBASnP1cacQlnlmCxxlLbtNas/OAmWI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nhq0Gap6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nhq0Gap6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A83D5C4CEE2
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736819753;
	bh=OAgyRqAoIjgt21Q764u272NYZtv+iJOlEdn1gWr3AW4=;
	h=To:Subject:From:Date:From;
	b=Nhq0Gap6VwUtQkAMo8kZ8VLSIJQ66Y4UhtROJ3kiyseMm38SfWI5oTc3YWv91h53c
	 g7Hz8xv+aEJEdRWC5RYtv+lbvQkmbn+Ou/ZZeagKTM6ZscKeeMVcuTFHN5TW1T4m3H
	 YbZ0EB93R3MpOtX+TOGwhwNXgyA82j5VDfxuPxOoaJ00D3GDhGUs3TW9VdhZfIFXqT
	 h3/wXCefUWI9qiFsIs0pi8QZEBElrG55uYvYmRoBuCGacvHCtjj2bRaxbadRjcEwr8
	 aKHk8VTmdpctQkNrPVlymbJNRjrkz5OYNJGBeV3AcDTDYKipuLH1nYyaRJGE2MbjE9
	 TiKBQU1lEwWkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C6AC02180
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173681975359.13654.7189882570789690230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 923f6bf6109db1d3e1eb822e9baf4126bffd90949fe254cedce8201ad20472fa
Date: Tue, 14 Jan 2025 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736819753
