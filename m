Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F3DF2D8382
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 10:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767609234; cv=none; b=LLpc199S3kZzL7yocjFfe/WhvMb3lfH0hYynkhL1XeycbIwWhwy5dCQZLEw8GDybNxa1OxI95BuUM7SJJPwEiIiE+2DT/BpYJawBoSmyVmHCqT6WRDHSJSOEbiEJ/VbLuqdqJcT4oFPlZ3iEcN3YYngqDvGVCFEnvMnfuxO7sgQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767609234; c=relaxed/simple;
	bh=Np/x4aDVmrgfDq1ndE7JzbBbXD7rRUU8L80UctTXo7A=;
	h=To:Subject:From:Message-Id:Date; b=IxikJCLwNZhev0CzoH5SZQq3fL+8XFZU5OGIGtOW32KHoRFvF01pUBoGMt7nUuzbPQkaTL9INT+xvJI3L6adhwamucypvTvqHKgB6ttYx2Ti0pKJYh4GwDdlhlZk9JoA9amUUOAUUMqXB6AMJi9zpgmVipWgZsuU3EYZe4H8JWA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sw4+aNe2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sw4+aNe2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4390C116D0
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 10:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767609233;
	bh=Np/x4aDVmrgfDq1ndE7JzbBbXD7rRUU8L80UctTXo7A=;
	h=To:Subject:From:Date:From;
	b=sw4+aNe2zezfYjaHmE0Qmtb4ihzUYn4PRQj6g9tYJO/hjxY8BGCk0tqKtHAU6R7qq
	 XuSweyBmJMaRuJb5EMyhgofVsHnSc7xCAvojEjO5CpCvSC1XPn0RpFnDR2TrswymiZ
	 h0l5UukD/57ciSbIhF+/EQ//aO3yjdDACO1BsmOXSZSk0i1YP/Hcy7TC17dzO3C+z6
	 ONkOysIMZaa8M39V3PpUocumgC/AOQWbxDOM4olJV+X4A+eoXE+U++lWdT/FTEIf7H
	 v93igHciXuL47/GV8My+v7AJfgibtAtT7xI1OA9DADYr0x3PQJnKUdZaerhvQlSLyB
	 Ormynjbz1ziSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FE55C2A088
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 10:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176760923364.27788.12766748609559638469.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb6ed8f028b6057b5a0910deb166a5dba88eae71cc6e31e0ad5993607ff92939
Date: Mon, 05 Jan 2026 10:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767609233
