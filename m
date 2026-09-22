Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02D1E37FF46
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 07:20:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790061636; cv=none; b=Wp+83FT9V9008QGj7iXljd7X4XF1SqXD1L5NOfJtQcC4cFP0FvElriYjzbmazuUU0wDjtJDsPl7Ms6bjWdgsLUY/goh7CKvs1Yqkhj2dZ2BqqulSncKT/LDwFpGKxKV89t2yG5bNW3zr/kNeOZ5dAKct0d/NadR+YJDtCl3Wivg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790061636; c=relaxed/simple;
	bh=bLxz8RwbtPdtfbm5NiBohFcH6I0uO+TGMP3P6/DIqQ4=;
	h=To:Subject:From:Message-Id:Date; b=a1y3NTYAbzhRCQ9HzxqiWmDMIBCrshvz7dpwEtFQCxTkTuNi6hKwmGMsx8z+2igyo5xAKmECCwDFwhACz8Rimpm0lFg3pHgdbYcsru4ny1qLRnwqo872ok+sfNGB8r4kKCRocbc7/LqHfbIIPWANBHss1yxhJzlh3X9cSk+QSBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SPk0rlWh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SPk0rlWh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC335C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 07:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790061633;
	bh=bLxz8RwbtPdtfbm5NiBohFcH6I0uO+TGMP3P6/DIqQ4=;
	h=To:Subject:From:Date:From;
	b=SPk0rlWhldwjsQog8JW4ZmMB5YLfxQ9tUj/a2aJsvIsW/CB4FAWOgqHn4Sa47zGdK
	 mUkdRs9voTNLW/osV+EndjZTmvU3gZbp05h1bhPNNcdAfOEG9jNU6G5Ry3nNa8F3qu
	 HOO84qagFjieXwpQiUlZ46vXM21mUXTmZQo+KJ0l+Bs+huZR5OCw5scE0EY87Rrfoz
	 2gQMteH5prJc/D70u9MwhjmG/G0ZJSMsF9Vje+cU3JhSiAJ30iOrg3EES3l5vKsykn
	 eso2j6jOtegdYg7PFf7x3SPvvTxGhaMduyQPfhM2q3xVEUql4I3EKuh5w31ICBxepm
	 JuuW2+u9hwWVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB6C4C982F1
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 07:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179006163369.30837.10510842910491098012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3267688440e2cfbb62e31f241d3729ea08e6a8dab87adaa4ff182cc1b205dfd
Date: Tue, 22 Sep 2026 07:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790061633
