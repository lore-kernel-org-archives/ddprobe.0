Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8351202F79
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746443395; cv=none; b=Ryh6J3HXA0mhAwe8ZXZ/OgOjjlONVwNe0G/pc50/XC+boB8ujo5ilHxg1Om3PN/vEm4MDIXuoVMWmzuA9pvpxaN56We2da55CvNzF1KYsJ9BWrDrbAqM32Nt9nUvUFZyIXYaDYhzHPkPYXked7AD1XYEzkoHQ5H6QvLSR5iFHAo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746443395; c=relaxed/simple;
	bh=OUPUUNh2QVTnO6wxAFG1F3Q7g5Vbj1gGRH4lwbOvuUQ=;
	h=To:Subject:From:Message-Id:Date; b=lUOiAHlla9uQvXHyc3YgcLcGvgfzZ00XUsKKwxwQ/RfiQcy+NeVc0UkV2evGQrsEETpU0G23VdMEV7RF7JleE8d7hmPe5dr+/GFssAE6Fi1StaYlpC4GqWcjJ/fTWpjX3VHtaTexju4pJhSwfqPIC5wK8x1r1az3pKOhlAVW5lQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dpdbj0ZL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dpdbj0ZL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FFBDC4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746443393;
	bh=OUPUUNh2QVTnO6wxAFG1F3Q7g5Vbj1gGRH4lwbOvuUQ=;
	h=To:Subject:From:Date:From;
	b=dpdbj0ZL/N7k7EOX58vLk0WjPWgcxkNaqAmeP3aEVSobjLel4dS52gA12a2iUFC8V
	 ey8EjpXP9PHdc1BZvz7ugOz3VvZaZDS2Pilegy3WhIpm9UNtqyDtHU9vJ76J//AnTW
	 pSugOCeBjWGASuVs0/dNA1lz+X35Jk5ts6jmNsSK3W7yfhptMVmw8P3kv+vlQ3jGlw
	 cUsq4Cpbe9AkSNAoQuYQ4qUpmMssuCvaRuYb4OI5ToT4Vm95K0b3AEpxCgMWlAicYw
	 jn/xP0+N3L5OrcYvH0FWMsnwuYUcJ/NI8Vg66titlnlS80XxPoOmwo3lkPHVKHwB1e
	 9NxZ59zQXAfoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E2C6C3ABB6
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174644339357.8139.4672313646248338534.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 636befdc82ea1b633d9d33ccbbe35964eec8b5722919da2d5a149367476d02d2
Date: Mon, 05 May 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746443393
