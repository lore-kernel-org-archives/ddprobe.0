Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43B1027713
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 23:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737934554; cv=none; b=km/V54pKeJobE+Kw23s0JHB8W5bT+STaZIog12AwG4FLK94VlTNtzoMWzyFz+j30Eu8D6yKthWRhB0o/cFDv5ICNHp8RJjbldLIqfqTaBHOu2JSzJLjOh+218eW9wyldnI5o9H75QNzCQTy9Ls4IIQSvsZ6c5qAcH+FeJbCYqZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737934554; c=relaxed/simple;
	bh=8ExwMw8D8SjN82QD3Adiz2KnaLYZG47VbltnGNDguEU=;
	h=To:Subject:From:Message-Id:Date; b=o/rT3JW03KbpXUVmGdCnmVPYPwLUamhpCux6iDin4b9/iFnsnPVze5xpHcavqFOy0YSSDR1tnks5pEwSeVZ1zxQVgKK2VJUVBuv5YUamk/fBIdJtpRDEXeZXfGQA0x5PDiPmRLofhZyNEagCPZ/86f/aAaNnd/H6Jeb5bmQOBIk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oNbMQ/Fy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oNbMQ/Fy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F83C4CED3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 23:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737934553;
	bh=8ExwMw8D8SjN82QD3Adiz2KnaLYZG47VbltnGNDguEU=;
	h=To:Subject:From:Date:From;
	b=oNbMQ/Fyoq7MxbMbOn7DdrnvNhvUTDaCzttDhwESVgs0GLwFDuQ5gLPCjsq19Wc8R
	 7SWhMbiUn4o07DJIENeKzVLA98eCQrzk2+xI40M2VueogfHk66PoJweGSx7ncHHh3u
	 3PP5gOI/wDA5iSToI3h96eANp3CjrdKaBMruQMREeUyakrcnvzFz94B/40GqrnZ3u+
	 I1onI9GZIX0JlqEYxVLucA6oqRPIjuhwuLDospiENXpeGvrCeFBMZjKsmtOc3gR7BK
	 8F50PuB6InQqtMer4T38sY1KIz7zef7GHmcZ6s9XjTR3PbzZGL6Fz+TNvgPMk0PEaI
	 8Ht4w9vjRIP/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CC4C0218D
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 23:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173793455357.18553.5461651219591418339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40ffb987946c3d6275ed45e1f932e3395e384bb65dfb4adb3443a5176532b801
Date: Sun, 26 Jan 2025 23:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737934553
