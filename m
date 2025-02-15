Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36C04C2C6
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 03:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739590134; cv=none; b=VDIBJHhisLdLFqA3ip40agzqhn0F2CsbtecTDbIzu4n2Xxd1s3Gp++04RBU8jnqEsihUz/R9mHEbBC1se6F7D7yRACerpavwNDOlMj1bgBd96E9gc8X+BZVoUfRVuHJbDx096kNyE0fhCC3B1aauPLSF8cqPZdFiXHwh/AvYFm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739590134; c=relaxed/simple;
	bh=FHhlj3MwiyUg5cSYTaUh8aqTjWx7qXwnlur1dz4uokI=;
	h=To:Subject:From:Message-Id:Date; b=adzyBddbsTwqU+jcEdLd7hcxXtwfQgJ1oUeg345Pt0I1xMW10QdTiGasbaeteYIMF9FWuSr5BJNx0dDeZe0fSnoCiX8XgDMrZF1xhOG7LGGBlhQLuKU2YfH3YeBxHlIz1s0s6aPhbU2T9yngftAyPtzjqCh2INldOxqzcqMHeEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZHgfiELZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZHgfiELZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA1CDC4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 03:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739590133;
	bh=FHhlj3MwiyUg5cSYTaUh8aqTjWx7qXwnlur1dz4uokI=;
	h=To:Subject:From:Date:From;
	b=ZHgfiELZBJ+HrXCgTKKDAnJYygk/25SvruRgim9Yy7V9DBl4TrqFJ6a6lCcllUV5+
	 wr9Y4Uw3JoSzRkpscc92ATzbv5/+5KUQWom1bufixcrgUCrw5vOZTPc5uGjp5FJbsd
	 GL7hz/jYsCDsyMhzhqx5PmaFwXnPb5Dr8KF15Rx0BzCdbW+pjNA3A8V4pg3IdN0i96
	 GPm3L+MY0QWsTX+ulhqHuWfxMW5nP/XqRPGHVeP7crONCaZjy5H6Y0oTVWsIPRn6J8
	 K7GphokTEkrePVK5HlJKtWUV67R2vt2IrdkPxH3+ZqxEZnTSh+JvZAEE+5Yub1XTyj
	 KkIJAJwPB2t0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910B3C021A4
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 03:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173959013358.28059.3120488002110560030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f282e365c49a31440d9f23ae24872f67469bafc16949e4558e5a4944637898b8
Date: Sat, 15 Feb 2025 03:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739590133
