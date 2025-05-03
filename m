Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D8A3153800
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746269394; cv=none; b=DtMouX+iw8B3xY/704Dtlwu+GxClcKOonmS1o/qltoXkZprD9eD4KFpzT+Z1oKCmTqG1ZrdEycKJbDmUhHLDuyR1wMIXvzQUFRwIagUcfAezDBwMY/RpyZO84VfkNdCG796vfwQnlpbFfi5oiLF5CIzUBeWVJzsFG2GAky0/u6s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746269394; c=relaxed/simple;
	bh=VC4CWsnWZgJPfR8QlQMQPINQ3tp4A6HB3L6MUmO0OlM=;
	h=To:Subject:From:Message-Id:Date; b=u6RxSG2rwU8+7HrUzv0xH4CaE4JOYkKILQBuo2e1TOJ7+F02EppDbnuguFUnVVL+5sfmbTyp9QBYCBZlBAaAXnlUQB+mbYPY8wyGzlZpmMp3m0UQhVQH76Y1ndsiEfOMYDNQ/gnlJRXrbF9teBbjW52dm6q+TUwNCwzWcIc4heg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n93mdP9L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n93mdP9L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3F11C4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746269393;
	bh=VC4CWsnWZgJPfR8QlQMQPINQ3tp4A6HB3L6MUmO0OlM=;
	h=To:Subject:From:Date:From;
	b=n93mdP9Lb7P1+JGojd6uWVxbaLbHkwZgfwKJuSOqPF2DmZRyUuPnh5LRCO1uaQq+p
	 iQDTpq3xi1mfFNeed3sDxO1T/Nla4Gvh1UtJa8agxRXMXODsOyzMfTgIem30DPGiR+
	 +hxpc2/rd7N097xcxd7Q3gW53na+I9t4av1oF6LgmbHxLvIuuCHHN3EgS+vwtuAfN0
	 6pO3GUuNzZjFLRODQX2eA/7CtxbEjFCqoYKTtrDR+iY13asju7JdimoFcl8qPM6dSs
	 2QH04wI6CF9Rm+uLupHdUmhVrWuKXtX5aoEA4LXUeEcY/F1tj03dS4CkXBWvALHqSm
	 0dhP4/2M3CNmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92FD7C369D9
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174626939357.13370.7168499356427018844.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5213e26f7adae8da3d3937ee3bf21d566a053614ec0b0a0f872fe04f6a3e06ce
Date: Sat, 03 May 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746269393
