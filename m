Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07E1B3254BB
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760561394; cv=none; b=UmRFrsLPIQxy/XHcjmhusphE+MVjD/r5HE208FqVFuJGefvUwatxBYyrrr4pQquJnnfdoEXzegYVA9j9qkQEBNz2WK6fUaXsapXIX5Ddl+Jw8qgXwEhdpOy4hd6vFsuD6+UouFr8X7/ligcaowJQwiF2wUh/ygT+kbgT7+ewjp8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760561394; c=relaxed/simple;
	bh=I9WPk1hC1iJWMqOPbjNio/88dq1oVJ8DG+YfCjH/L9U=;
	h=To:Subject:From:Message-Id:Date; b=nh+s0BtRzHzIq2O/F6M/o1VDUAKPmxIJw7lZ9IunHPnOLRkgMpI6XXrKE7d0/Rn0N2+SxtDVnhv7LV9/Mam1OvmWv/FGvQMC9ANrp6IYls5V7NG2dnk2FMi2BobzMZWC2ZnUG6UKuhesGivyDhx73cknpOGwtmbsO0Q5I61dqaM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I7t4baLb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I7t4baLb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C33C4CEFB
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760561393;
	bh=I9WPk1hC1iJWMqOPbjNio/88dq1oVJ8DG+YfCjH/L9U=;
	h=To:Subject:From:Date:From;
	b=I7t4baLbBvJO7TYhbJkhB2W6uPBf1zncJZ9uXqSOJnYVGrujBdlTehsK1uLlgD/e/
	 muwHjVfdmJWGrphMJ9rBqNhQeKBgg0u4xgtpyf7imvWty7d2tV2FMj++Uhbj9SL5al
	 dlX8CsrMmeNnEm2sLZSYI8jFn3DsnkAzsTyU6xf+eSaVNQKVY6azu6jRsnFID96iu6
	 6TihwL2NYWjjgMB7WP/jJOj2wEj46amq9x5E05AbzhcSbS6nDGzkE7zR+NSx3HKjMh
	 onAigCG7iu1prukH9pRZQ8YAX1cg9DCq/b0f5DCqS8eVbM4rd9JZER+g3NHcDFYRWm
	 382rOvYoZgrQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918FCCCD193
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176056139358.23287.9064371449838674202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61ec915edb1374e08a53935309c510d882c4977bd4295b6c0ad7e0d75a439887
Date: Wed, 15 Oct 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760561393
