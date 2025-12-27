Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FF82625
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 00:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766793834; cv=none; b=u7faQuV504xjcLgEZRtfbf0dxTCGySWe+bEKyUho497Pj0P11+RSRjYW012335POmxFCyfl9itfb7Sl5JUUiqBvTG5kD0OxigfAtcvM690ZQf/1+wkTtl9JNtd5/hXp5V2bus16HX0qOR7aOrQkoaiw+OV8d1A7DgLCM1Z2PR6E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766793834; c=relaxed/simple;
	bh=ihGSyqpdNC+QmOIcRuxieYD5zwaTwARcq9XRB4LdOCg=;
	h=To:Subject:From:Message-Id:Date; b=qSKhOHQg1GCs8f5VBNou1483iz31we65drkdBfp3xEXPaJhju4zCakVOjs06SlT/ENJtVin7mJA89yWF4Jt+1x3d515GzRJw3woMRahQJ5Jjjll0VU85XMBcSv/wXrftmUlyOxluNgRckYyZVfiZ14P8zQcY9d9UGjk0rL6deAA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aAX8FOka; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aAX8FOka"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADBB6C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 00:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766793833;
	bh=ihGSyqpdNC+QmOIcRuxieYD5zwaTwARcq9XRB4LdOCg=;
	h=To:Subject:From:Date:From;
	b=aAX8FOkajrlFxNEOKNPfLv0JbDbtdVxCLUllcFNsOht1nQf7Rtcxm9fKPHJstkQMr
	 cvbywyRt0MPQ5LfMBWsJps508fMilhs/sMjSt9jBih9Px/SmDXI16zSSU1BpSZDQlr
	 ijvFk76oWdroNPAJoNaaSm0MbuvpL9W9vOKDr972AWpO2BKMA4s3tDqPni3sjh394u
	 KQYmtTtvNfePXRnAwa8WpkIXsakO4CxhwCR6Z8OgYB6UZ3vWvJ1zFMzh9JM8psq+kM
	 a/8LyjQoFEF3wuAu4SCNzNWx5UI2t8xUdc0d2aQEQ2p34Q/UFYgoFDGKZQKDSe44AU
	 LmOjyxGVMl8wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98373E8FDB8
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 00:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176679383359.28549.15077578976363918592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a84b5d2503b019b5d422b1f7dae2869548dc0190f78e4c516db74cab1e5251a
Date: Sat, 27 Dec 2025 00:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766793833
