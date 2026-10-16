Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 455502FD1DA
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 11:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792149034; cv=none; b=jEFvqZ9eljqfHUcGo0xQzI07qpmxnrWQBSjxdjzLiSPDDHq0b7JXEd6RyPkqi9ug6i2EY0tktmJHM5VFmGJbLenJs0yWXGr7/sf7wfw8QTp+IsxfcM5twi6I3Jg1HpZUEF7tLCKw6b9CO+J0bKoPOL5VuvK5IHGPGa5CrIWYshc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792149034; c=relaxed/simple;
	bh=TGASJB5PiBtfXP6z2CNaePCLjLpz7gGsy/u4wdjxmZM=;
	h=To:Subject:From:Message-Id:Date; b=rjn8vgT7v63YmcBWgbnQQhiKumFiCcpkxmPVasl95osKa9BGyHmf2eAYxZoc6rr2P8gGqXraVhmmnuiju3esAaMUp5EiaLq6P9ZqEOZQyZWbYHgJiBz+3Aw4E6jYwY+boIrTisykERRHBdylZ8O/tRIxF6ZV76zs1xPdNZ66jnM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ufy0ySjU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ufy0ySjU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0CDCC2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 11:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792149033;
	bh=TGASJB5PiBtfXP6z2CNaePCLjLpz7gGsy/u4wdjxmZM=;
	h=To:Subject:From:Date:From;
	b=ufy0ySjUXb/5vpH4wWhPP4jv4sE84fx2y00U4jC9TnPGz71YOj55kdjjCOeCmolW/
	 aPvB5q3hn33H3FY21AxoAQsb3VRTRuXGVW5NErF12CzHQnfy99J+yU2LmVLB4smcoi
	 d+a12nFFhgCWqmK6U+AIFXpsSHIrMIqrgVZAa+iQphZyHEdK2lN8J+oh6pmMa1Skjl
	 3kBFYgtDMg7vFeKHlVFfawPCHVTFNp7Ymb5w9F9K5WEjE1FUF/6z8GRTKPfrS1NJGi
	 8RG0CfI6J6d0558hhX85Ldl1sXIAKJVLBBAuV/6SvSfnvJNXNSktTK9qOxImWy+6SS
	 sLcwaMDP4/JnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB9A4CCA464
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 11:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179214903369.4146.4769888119938386059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e79c8611ce959959cfe3c596708ba55ac4e2f829e79bc3475d7c79108f5387aa
Date: Fri, 16 Oct 2026 11:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792149033
