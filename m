Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E42D153BE8
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746426594; cv=none; b=fUpPO8lJGnTus9QwcJMph60QYEUKbUJHqbBctRMnjEOgQKWtH3i0CT1DFOTIkT4qu0lAFU2Hyh6oXprD04OovGeW0bikTDtfT0AHkpI4SiQZks+FuHaZvz4u9CMrNO/jyOzhuDJ7Wwf+7XRgF3lly0/K0mZL2a9ot1qUKuIROOY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746426594; c=relaxed/simple;
	bh=SN1H6gKCdo3wJNPcIns2S+qsA6Ssq7DVbiVPzGqrMfM=;
	h=To:Subject:From:Message-Id:Date; b=aE90eV8yY+F6gGcVYzGFAq2d9U2Vqo1r3AQEfnfw8KQyME2fCDiBuFAfCMGvo/DPbHCF+EshMT/2AZY0Yhn7ieiXqs0scio2DEsZ/xYpGqC18LoQ4yt8ZY/YdwU9L2DHd8URcRwyxYF0bBi2IwXGyziXDvDzrpRsOmyHQw53Kv0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PMtR2fUf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PMtR2fUf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6CA5C4CEE4
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746426593;
	bh=SN1H6gKCdo3wJNPcIns2S+qsA6Ssq7DVbiVPzGqrMfM=;
	h=To:Subject:From:Date:From;
	b=PMtR2fUfLTc5M4llquXTSWuxiawCq59d128PIAp4/phlmZU1bwnGywmUZnYMS/luy
	 YAMB33T176vxurEy+cL9VSBXXr4tVTCuh0qGBkFvQa5BpSTiYxGRsg0wCH74drnJAd
	 bs50H4Q2Yd+OYj+qA9k/5t31z/ECF28ohGzAKQoMQLHshCp90zCd8uGFRlI6LXUbGM
	 EX940GIpbQB2+2YK59wIGrQ/Ow4pSMa7Qr7lgrxZj6orvM/wTURhDBJnyhSnKU0iPW
	 DzLKTLs3R9X3ew9etApMdAJr2Rk3ve05bbsxhcn0JaqkDrOlyct8FnWVTpov/v7OR9
	 wsvRYLAtMFOZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94BE0C369C2
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174642659357.27740.4141810258656757304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6b48f724c8266f6b7aa16f72de5829e08ab31c923620a1851728cfa3c6987e4
Date: Mon, 05 May 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746426593
