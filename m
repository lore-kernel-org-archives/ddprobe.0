Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1531B314B7F
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761940194; cv=none; b=uP1HuX5zHimetwnEV+JbO3+0xXzIqathmFH2BT1vdYR8MipV8KoJo3iLsc+vhencL8IUvc2HI5UgpoOD1z1wuGNhKNRMhm7H5MAlYicMURf4S5/2jJgxm8iBi5/DyZ3Jz748xpBzlMW7GxKieojPJnnMIEY7gjlLQYn4kH9U0nY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761940194; c=relaxed/simple;
	bh=+D4eUqQB5MhRNqhkLMiAAbc9/XLBSn15zDFuREFU9dM=;
	h=To:Subject:From:Message-Id:Date; b=oUgNGRSODgz15mwz8W4bnWGmX1zqzWPfsF05qL+hWy/RRZTOAGFJbUC709+c44RHKBJFl7hpax5aQdB0qt0cgfDT0dc08Pm4SEmr1rIOgeGOqpuIrL5uIzZ7x7TPFTOz0zuNzwMtUbsKfBXXZow+F4pqFUMN/BEM8cZUogZv1bY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NeHIRIWB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NeHIRIWB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5378C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761940193;
	bh=+D4eUqQB5MhRNqhkLMiAAbc9/XLBSn15zDFuREFU9dM=;
	h=To:Subject:From:Date:From;
	b=NeHIRIWBh0nDoJG7p4HZhrwRZcHTdHPhgz4PvmE4UjPF+IyWrc1SOt90cHnec2JFF
	 WMqUnuuwD3VsYhS2RH1IeWkD6xE/pyaQ6oQlz+hSPdPz4ag9yplutVBgcX6aiO6V8u
	 i3DL9q71qemgj8EsXPDet1yiIdtNpPXorwYTByI+ZasZzN8LLfOisIY8p173CZwbZV
	 iQqsybjnzQnlBMqPgB7DzHeO3HabTVax3AQ/eONz42bJ2c83Bc2gq7H2wAQM9xgdoS
	 uUPKrTOXCKdYlFVnkrpk8rbQp9SzS5ZoQ5liKByyrGiJx6jhfR+HPDLhxGU1xiTv9j
	 ZQsKVjcy6GXDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9562CCCFA02
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176194019360.1357.1162768385954128528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 455c6e2897d975757f5fe8c9f79762e3b26aff4d0438f13a1f5722cd8a5b72c4
Date: Fri, 31 Oct 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761940193
