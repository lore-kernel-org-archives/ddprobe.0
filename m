Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E431472762
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 13:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788184234; cv=none; b=hgBCCcP21oWp274hZ7kBTH+m9XgIO64iZ1+ZZSArgNExMhXO/poy4rF29A6WVUavhVltTP4OpleAGzU3xJz6l4BHdPcOebEIFOJ+FFln9jNZCaRbeJdcsbroSEB6qOnkiWdvemdxJUnJ3nx8ZSTMUZmdFQOSQmwh0bhoIkVC/rI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788184234; c=relaxed/simple;
	bh=6mSQbW+ELa+CAvEBm4STi9aC8TDEDs4CR0IO5vTPvq8=;
	h=To:Subject:From:Message-Id:Date; b=YQ0ajFwGA5uX17C+pNG8X7KNcSW7MHUiAZtHljl73BVrBXgb+8H2VVnjGuVOhf60Ecp+zRYChY4aj2Kg9S8xGK+usSfEc6ze2hTASbe3VeGYteqAmiDwUZNJB0JjtIaw1f2ZAAaN1JwzIc1wy285AuzH8h6beXnidCDLfEuOljk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R2tqyb2V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R2tqyb2V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFD29C2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 13:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788184233;
	bh=6mSQbW+ELa+CAvEBm4STi9aC8TDEDs4CR0IO5vTPvq8=;
	h=To:Subject:From:Date:From;
	b=R2tqyb2VFpDriCs/V440PEb4gAcwkiOlXuvXCATwxidnfKVU+CoXLUghW7Ts+vEI1
	 4w0bFKMQtbMjL5tGqyekOHjWo+d8yv+KLhDA0fVk3PaHtKrrtyc8LDQNcbuLtVdUUG
	 I2lIHyacHRTPn2lRarNubOKScOKX2Q/z2zJaZESxIgGamoVDsUk+SOTJlKt+yXunh8
	 9pzp4w5xbQ5VsyyS/zvQWXtfttInhn9ONbNdPT4nwKNLQ7kI5YGFwNImqG//1ZWgzj
	 SYAX9/wKegSPkt5zAiDDJgqON1qZHK0xr/t14i0PrzYz5nUtTpQkTV+mSg6jWMVoHU
	 HnOiHjy3+tkCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB037C624CE
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 13:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178818423375.25077.15848125927394505679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e14e5d5dd8707dce9c8a1cb92db7dc093ae460ec021e6edf09ab420ee5a3f9b
Date: Mon, 31 Aug 2026 13:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788184233
