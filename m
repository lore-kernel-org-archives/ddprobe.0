Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F98F3F23D9
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 12:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784206114; cv=none; b=ZMfIk403OuIeD9kwNGdeP/dYcCejrYooYyWeuBqcAwkX1EW6FdPw4LOl2Dqqx8J/oyoif/KVAhPk6ubAhlyy+j+/WA6qqwBcRM5GhWWO7GaVTiQ9qpb2ZILzoIZeNwLrlBru+xmtd8WG+CTddUBWKenvA4rBFAANa28FTcXCRTs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784206114; c=relaxed/simple;
	bh=GFmnZaFhuhUmxrfRsD6AJ95RVGuhv/KTi/v+qYUnNio=;
	h=To:Subject:From:Message-Id:Date; b=g0ddwsAgPv48pO1cdELPswieU6eO4wV5zIm+3NGqMr5ZjCjbJxUW2tWD8V7iySg0DaZAPZ84cQCKi8yFDY+4J9xHmZfxjER0iywABrQJYGFcrjcNUJ4Oy+3rf+zl9jiWekUjTbchjy1A2AHGvGPnPKa1ILh5x23EVBBODhBaiFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lcpaN6mS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lcpaN6mS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD75CC19425
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 12:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784206113;
	bh=GFmnZaFhuhUmxrfRsD6AJ95RVGuhv/KTi/v+qYUnNio=;
	h=To:Subject:From:Date:From;
	b=lcpaN6mSN/DJldJZcG6iA6v5X+U0RH5ENbPKz3aidq1g9TcRjXlnN9IB8wG4gwBOu
	 P2W1QViPbCAoRH0E5Kk2Fn3Wevv+o8ZeTNAuUjzAKQfUrjbq+bVejza2sM8XPce2fc
	 /dOyr49mVyk5tC9jESfhafZM6ETAhFyWfzDgJmVhDM4P605wO1SzbWT2Adu0/FnUos
	 znWokas83hWdHWi0Oy6MjQ7EIMGqc1CQTEvcmLidOXzEgTFXcBbALn7HL+0fcClMtu
	 EWc/V3mrnG+QfUuxWAsFgHqpzYDbh78qQiJXwEvztlCqP5+un0yfZ1iDdTQN6f3Vr4
	 5RtAbucv+O2Jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A935EC44501
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 12:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178420611368.20088.10598870764016702118.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d36216bc6598eb063e05da1611bcb9950b2f855d34ca3a0119fd067422002b9
Date: Thu, 16 Jul 2026 12:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784206113
