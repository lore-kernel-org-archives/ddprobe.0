Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 212D95008D6
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 14:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792419634; cv=none; b=aI2LZrlk5yGWg/KzXWp3ZtYuRQZ2R+pbz0S1dF7mhgQvv/8niumWX3N2YNU66Rj0wufB6dV1QK0XtFjoMqizq/g8PYOLEMSn2O1VvEeG//3SrR5TLwx57+pmVAU4Rig53FejvX7ySCEMn1raxPUrg3p85GC43kWwWbUqrzGHjJ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792419634; c=relaxed/simple;
	bh=bMQa8difYfUDE5lcL2GWqV+eGihAkwnLFWgW1QL0Jl0=;
	h=To:Subject:From:Message-Id:Date; b=WMlTPH3HfvCKU++DCft1zInhe6KrlCZ1KRmWIXXrIF0ypoxolBtpqMbzgxjtWZTAeXxSkzubHr47U8sZDv8j3T07z8k9POWxAGAiL047oi+4ZWSeK2Wr61D3zXhJ/0xuanFXogGA+Xg8duMCDqqV78msup0In4KcNOphoFl8Fcw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s6aEUAYx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s6aEUAYx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CABDEC2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 14:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792419633;
	bh=bMQa8difYfUDE5lcL2GWqV+eGihAkwnLFWgW1QL0Jl0=;
	h=To:Subject:From:Date:From;
	b=s6aEUAYxlmYwTnhwvwGTBcufIFmkcTXqDJS0EyEHGEEkosemoTSTBtpoAtCpdDGcq
	 W3BjJWy5MTEspueGG8uMbAZ4STMqvsQpeIi1upqo0rDIOg6gSCvnxI9JrDo4+WJpY7
	 LNklRgzz4JehkwQVuuQRweyX7GmwUBxFpIKVhm8HI3+WkHbE3ogx34+d/JHMyot/3F
	 99N8PyF45KbHy+VZQOYzRpOmO5wu5MTNHVues4vkYrkakzSZKrTaWaeltH69xjBBd4
	 yMUEkwdseBBWZCC37ZR/bInJD498odcV+OsmRe+QzRZ39lgs9z9dHXh87F9HVwJ50s
	 5lB2ITl6NRSjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8BDDCCF2E5
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 14:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179241963374.8037.15565675160152195419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f9bdaf92bc13e5507fd19d8faebcff27c073da330ef02666e90a2be2a88f7de
Date: Mon, 19 Oct 2026 14:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792419633
