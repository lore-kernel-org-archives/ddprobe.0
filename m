Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F4DE21859F
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744688394; cv=none; b=W9uayZ0E6+wtPNG8U76sBXqFm8QzSoNIfH9cnPgKjTL3k7rHQjcthL5LBAzsImyeNBLI4bYuD9ETCVn9UowfzifW+M5svp1RQ1x65B+unVT/NvI3/72hAp8wWdeMjXBOVGkfKSysAjb2iptQHXQjR+4AVDEgCA6CQ9jTTact2KI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744688394; c=relaxed/simple;
	bh=oF4qznf3vzjuyGK6jOE4Qiz30rCRou3pbm2dN7qeCVk=;
	h=To:Subject:From:Message-Id:Date; b=fL/ka/ItITyjkjRgcW2r6fiW0WmJx8rVJEOb4nw8igQLktANHv25Gq8ZZipnyfkQU3SwfhzPZMhKysieyw9yvfJbzTkzpvJ/jgZg7Eg42polymrVGqQirA4fDNBDzebTykmrd2F/L9hiTzj+1T2COhF79rPMtHAAw7+d6xHvpTM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AklLNECs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AklLNECs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA986C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744688393;
	bh=oF4qznf3vzjuyGK6jOE4Qiz30rCRou3pbm2dN7qeCVk=;
	h=To:Subject:From:Date:From;
	b=AklLNECs9odC8SKBqmkvXsvdtSMAlBosF6cxr3BfvatexY/8HtZXioecDoLjp5f/0
	 oQgQFAU33cwpq2J2/OBBPa2DJf0GRvv8x2Gzdvo7TxovLOV+D/7EBeBPenDhJ7Tu0W
	 AChT7yLyvdvSAMwy7/mJ14Dfw0+KpOAFfs0XEt6A83Af080SrM53UfHGuOH70X2rwP
	 olrISgjm9Zr7xh1IqMWR53MhInx5Tv9kzOJUV1s69ugyYL7vd99JGsarzRaszbyh85
	 eokdoJVkGfeIydqJqNylB9LEYK6DF6MmupzE+OBkxN3CQ1+ZZ1nhad+BfMAo6mol+0
	 bkK0saapihz4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A505AC369AB
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174468839362.26905.12215097043940982153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 298b3ff4fe981b236934934b67f2eef6826a7de92cd4edac9e4ef5aff705bb23
Date: Tue, 15 Apr 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744688393
