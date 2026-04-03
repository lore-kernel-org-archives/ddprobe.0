Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 337C73C4574
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 16:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775234734; cv=none; b=aHec8ol2gi7OPhd58O2Xdn54kNuYGsaLo/TylPutp0b6L6GvbLB1GCuHBLPSItAuL/YRO1io3IvNfxEEmOCmkcqz/6BKBLgdyCYWKy69C0NE6dlmfZIV1UsSoUz7FKHXpdfsT0ELN+vkiGXTX1AzZuVSUtd/JhruT6jfrI3/og8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775234734; c=relaxed/simple;
	bh=FZyOSInrxpGS7uBNd8UBaYu9mEnil74ZO0ccxmzNlcQ=;
	h=To:Subject:From:Message-Id:Date; b=ol4V2EulmFB+ZxymrJ6qK693e8aD1PoaQPPGRCpI6tDGaf+B+WrtZH7l5/66VD5HKrRoIFfPTRcQS0cNlNSwZOt12BUVyAtYVbA3nsrTWsDAGNo2jX4mr85FmQeaIUO8gu9MfJgkQvg7Lr6F2/Ph4I+jL8e+qLkwiBUnm0sISKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m5PbFxhF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m5PbFxhF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA141C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 16:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775234733;
	bh=FZyOSInrxpGS7uBNd8UBaYu9mEnil74ZO0ccxmzNlcQ=;
	h=To:Subject:From:Date:From;
	b=m5PbFxhFJcuLDFWStZfOLG36IQv1pKCy/WntAqbQYQmpwOmfrY+ojMKFJGtz4IrNw
	 k+eznirm97zewMYkcHFOR5UK45VN0x4O3getPxguws5t59bcagJ3b7DRbSxIY8i3Ri
	 X7ujGb2gOuVbg8OWvZkiy8V9un0I/mDP4pG8ij8hfqWC5jYaBgJha4oozggJZC8h6P
	 AGG+JWg7FG2293fn8ELJ3lv8n5B05Wv8PbWSLm0YbcwhxtveC3TJVlpG6ceCl3pfsk
	 i9cpnl+Ridf11VXnHMvLQ+Z+PKeHn5pfdt7355OyEB0dTTk7gEre+1fQuDKlYtxHov
	 U1C7ko0izsOjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B65ABE8537A
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 16:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177523473373.10057.5394453994281972300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e27e92c3bf97d396e30ec4212444904cb2fb564e237ea3479fbbf8c7272549ce
Date: Fri, 03 Apr 2026 16:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775234733
