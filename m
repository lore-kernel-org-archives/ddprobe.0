Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D6794964F
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 02:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785204634; cv=none; b=MLVytJ77EpGTqZuqSW/Jy8M0vRBizwRnxUqSbskNzx8QNECkFzQW7lQZBUxMeVNohOsBDhtgo1UdFCyKVl5B8OzByHhuUN4tqobSIuh5pdcVPFmwZhb9gn2QwN3hwiB9B3LpHXT6jEyGThAf4345GsQv6NYC4YoKqer23f1q/qA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785204634; c=relaxed/simple;
	bh=O72srbG/ulg6dVGugxnyC0tIwcQnwHnwo/7dt5YB+eo=;
	h=To:Subject:From:Message-Id:Date; b=FvrxLmDD0504Atsq72N52rThBVXjn4eNfxlWuPhveq3qMGFy5gvuYOSIHGY6FqlrsOkdZCw1cO2GRWCxKrBS4ZXe4SRhkhs2cmZzA8AtCUDfjtJ5hcL13cy9orPVQ0yIQ3sDIKiT7r7OXgkdxXGNoDl/FU0h9HH4pruBtx+LHRw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BY+JgLZD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BY+JgLZD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE614C19425
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 02:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785204633;
	bh=O72srbG/ulg6dVGugxnyC0tIwcQnwHnwo/7dt5YB+eo=;
	h=To:Subject:From:Date:From;
	b=BY+JgLZDgUCgLHPpmn4/XCp8jKxuOluyXCqO4WMtyPnlYiqTk/Du7aQKhj9Z3hxAN
	 JjjrpXyKfN05pIAy1Bn/QjermzMhNiztCrWShFjpHt8yiV/1pPM5yOLAClA0KXt5Yj
	 cbRPg6MCliMJxZH5vFm/0mbzpt2EUSKDX3qSAmwSPhvsSAbqXmqAdPXn6Ip7d695Fx
	 1Nvfc8XLqOkJxzhzODazfv4g6mHZoVhcdMfRMoLUit0svfQfo2tWkya9+WgsQtRsph
	 m5IfRDeBlfLq53ClzIxFNlCGBHcLBT+1YOmrJFyjRjkm5KFF9h97bqRNVVzJo9DjYi
	 dM6TCBRyuViBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA89BC531D0
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 02:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178520463369.26867.729262988644857656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 254db50eade897c8313c5a70d43f1ac0850e0580084f7cb4de012b19986f6175
Date: Tue, 28 Jul 2026 02:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785204633
