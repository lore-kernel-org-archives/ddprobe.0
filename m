Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28EBC13C8E8
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 13:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764423774; cv=none; b=dJpHVyXErYyZ9tpOkAfEhVl+OU8SqCTihXhOvKnKQP3yMmxUott2UFqb0Tj6og0LO3Q8Lkn/040MldNw4dtnBAh3/RPsWYm2rnVxUpnIEqkxH1f2onErxFIt41OxZl6ePIzhOmMAhPxyZl/STFQaGDpLQj1RB6yKr52BZohhABA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764423774; c=relaxed/simple;
	bh=iYjVcwHNf1WA/HV42NgWEiP9zjbBGre6w74X+KuLafE=;
	h=To:Subject:From:Message-Id:Date; b=bZ/cD0g8UPiBfNNkbXW4hctfldDe6TN3dHTwLhUjjGiVemlODP2lWbPktrzgYVZhDgWgkZu4bhF/cBSbKYCku7OGkLkywPpPN852wfg+MIj5uTGN+6R36xa551bUZyGX4zncLhoopJMYayKyLUOHRglGqrI+vtzMgV67cYf0HAo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TLFTf9Og; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TLFTf9Og"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A73BBC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 13:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764423773;
	bh=iYjVcwHNf1WA/HV42NgWEiP9zjbBGre6w74X+KuLafE=;
	h=To:Subject:From:Date:From;
	b=TLFTf9Og/TyDl/Fm9QGfiFpD+hnPvWTcO8Svtl3YBORUWDFWxmEIW5yJzVtrJhrVQ
	 b++F8JhVjdqbNPa6j7REMv+yxXZV8NEqqqZbcEwi1PsBzBLwcBctQJ18gmWkY7JXSq
	 LowFXWYdupNZxWWzd5B7aw2y1XF9r5uirtfVw0iX1DsjwBQuZdH5EoCJ+7Ey1gIVnF
	 TCnm+1HTYKdL0b6LKsTm3IOb//fmC0bsj/FdE40BZ2+na0aMCuQsrZQ+9VRDuVPnk2
	 m4vY1b/YnKRQaCejl9PnCBGgH16e5UwfQ272P1YZM0uoviw93P4BS4515YMxcSrpi8
	 FCO7ebbSXRfpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 958D4D116EA
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 13:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176442377358.31610.11748061412989020279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5608b1439aeb9d7d44cdc694835457f07e126e1aae4b5b8679bf434938dc30b0
Date: Sat, 29 Nov 2025 13:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764423773
