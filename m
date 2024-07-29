Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3485D1304AB
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 08:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722240354; cv=none; b=aM995r76M93SP1t+Xsnsy+u4QtYFWdqQOOEUYwf8uLywBxidQZXnMhqwCgA3X0TiimDdRuWzs7CuIVWSlKaoxpT+hmqN4CvspOO+M/vAr5hhMOReSDMNQ8i4P42PrVMRPwn4wuWM0sJABDHfl1tRmE8ZuLihSxnVOIxZ0LR2agM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722240354; c=relaxed/simple;
	bh=4IcjDF/dv+4cHaOirXtCKuhJ3hfboOlFZ+LqZTy6bnE=;
	h=To:Subject:From:Message-Id:Date; b=HkmL+nQwRUJq2tTs45i72qhlzU8mDAuyZFg3v0KA59FVb4teFSfAICnrIdr47OrCDDM2+FbpcsEqpwhP1j0jybHFjgSZ+De65fFlwm0bEwD2sW1C3UVTOBlSh8L/sK35hX7kUAK5j6KlEyoOc6berc8OzJyRyUGMzGnSTxOM5d8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kGyuG96g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kGyuG96g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B55B5C32786
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 08:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722240353;
	bh=4IcjDF/dv+4cHaOirXtCKuhJ3hfboOlFZ+LqZTy6bnE=;
	h=To:Subject:From:Date:From;
	b=kGyuG96gBypzXskJm2hV/SU4C1evsBxj4o3zuspVoYk5Z8q6LxRp3LM4eCsN42eGL
	 b4+syx8470HFr5MwzBMJciNzh/KXvaPTSwBncR+Ssc5KlhlI9i8Cnbthou9IRFRHax
	 bQnVYkXf5kLdkAkVb/8Im8o7C0NUeZCAI9kYljsOwk2LJhM8HJaQIsehAHUDQJvC55
	 q1iQX5xZIUUfnDU6ukZEvozBpuQdVaZhZMrVV0fPvaHfXswxOj4LorY1qcbvA89eKv
	 lfhIYdhgm72bdhLGI4SFQzbpkfCyMuDqNa5nZBJfM1PLOP0aW4P/buLZt16I/rhHco
	 XvK760F3+hQNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A660C3DA4A
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 08:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172224035362.7849.16398538304477158917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4781e789b3cb0dcb3fffa97169ef84b1de2eb9fdccf6973f88735289adbfd4ed
Date: Mon, 29 Jul 2024 08:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722240353
