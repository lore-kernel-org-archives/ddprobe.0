Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F548364EB0
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 20:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782850714; cv=none; b=RFtTGbXHYrH7sxxyfu2N94atjV0owo47niXsTxU33zO9nK6Bfmza1CG8vAgCZW92uuhIlQeWDP9kmv7KkPTyKuy6GpMoBOD6NxtjeM0HLM8WvPVxLFUZ7xCDLnbdeCg8/TPYO26j5k+Kx0//WI3WouLTnL1IbDG/kXcr/y57OPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782850714; c=relaxed/simple;
	bh=LtuJXoFNdBeYmCvI4xQk9AZQ4IzxeR7r1gIsiTGBvOU=;
	h=To:Subject:From:Message-Id:Date; b=c39z6SsBZ5Pl/mvXqyTd65P8Va/WxMrZJgJrqOyjyALtX5mPBlvESAEPym+fNNqXxcPePOOnVFaU8cV7XRjwMhpnPs2Zf4XMMfvGGH45n3gtaQ5p18ikjx0ERtDM7uWz0SptwQYD63D6Bcz/IUuiU02TUlOkn5Jo44mEPN69P58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l2ejKTRW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l2ejKTRW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2A30C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 20:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782850713;
	bh=LtuJXoFNdBeYmCvI4xQk9AZQ4IzxeR7r1gIsiTGBvOU=;
	h=To:Subject:From:Date:From;
	b=l2ejKTRW6LPv/zVmF0ihIhxUZjyR3+fpDkpTplITeAbXuyau9UnyE1ORX4q6Q2Jez
	 C4zzbQa80xw3GvdNm9iHudrDeUBFE3SXCbptZg6xwqJuJEE6ejfhu7sjz0OyB9Pq5Q
	 9+bYHXezBTpy+hJL/lvNAcDnPFnIaENv8W1KsGqRrcdjP1C7yCrE1w8Odmfe5iESHB
	 YV3xySegHQn1fPcArKn2CPue1Wjlh35OxyX3eUveFmxTkvTUi6XoqFEHUOjAqmEo4o
	 he4kS264zQ0yEyUaDXQQQZ9jJN00uBDcqKqGg79hkPvi81jk0z+NzZBZDE/9n56ibA
	 uQn52VN930deQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D4DC43458
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 20:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178285071368.4699.7914941432028149567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1dbd2965b7c20085db838f2e097c3954904dd137c9803f96145d6c8d3156be1
Date: Tue, 30 Jun 2026 20:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782850713
