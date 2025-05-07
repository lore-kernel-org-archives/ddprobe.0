Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29D0628EA
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746577195; cv=none; b=NbRVrkbqY+Ufx+IiPCanmKvPUK+/Q8mHLf623KysRI0Lod/hZSwLJRJCUzd/B0srcW3bAlQxlW4vwJFXBaK1kwE9U32ST0GjWFSVXaArGEfd4OKr9qpfdQJh4S8orAc1r8n3O8vK1rFvPZY6Q6/6MQgxZvhjTcAXw/Fuiz7lfwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746577195; c=relaxed/simple;
	bh=eHGYbDL4MGVaNfaMsTkAPkeQ/z7wKNy9DPC1eUehP1M=;
	h=To:Subject:From:Message-Id:Date; b=FimdXTvj72aNI+VHjumWVxRMISI+NBxKSxqCeKwcIjJh+lojNsNGoW+NNdO3eHh5d+viVM4MAlPL/hH5dykD/ptcWnHq9XJNgY6C+SI0dq+N4XP+jxg/ano4FZeYqy7BA8UN+QZJNvIyykmDAPvf6PnsrVuPi0VYwUqsr7JUn6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mttgir9G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mttgir9G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A07EAC4CEE4
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746577193;
	bh=eHGYbDL4MGVaNfaMsTkAPkeQ/z7wKNy9DPC1eUehP1M=;
	h=To:Subject:From:Date:From;
	b=mttgir9Gbo+0I8twm86TJSJquDLSXrHwXET4yceQ0x8/7sEdPaqpMpMbHOl0o3rt3
	 8fFGOao9L+0ujQmNTzbjcrBnQNxk3A7uS7uj4CARYHSPuAtC9XpN6SKLvbZIuIceeM
	 4UN1Tc/NXyo24QoaLYK4/0F6J1h4666CuD8IIOjhZ+vhck+O5/ULNGTdS5WJxlu1iu
	 MlPSTHAou93fh6tb7Yiwsa6ZppReL/cagsH/GLxt0bTqDu8RC4T+NBeHkYWQjFNOGs
	 ZZkbYxe6P6asqMUfgSY0bYwzv02S8OqJfE3ZPf8TiXFSHqbppgV+pl+Lv7lRVlJg4g
	 AjdcdGSxM/pdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9ADC3ABBC
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174657719357.25059.5160334969081631927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4b6ca1dcc07afd5234adbc4974315b7949112a48243d38f3ad0c1aefd546408
Date: Wed, 07 May 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746577193
