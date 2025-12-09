Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 386E02E7657
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 12:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765282374; cv=none; b=MbF6Y+nxG1FILx3m85EOZtcuGUoCJpFmAkmtIjiUoL0mLeSnSF1QUy/OwP/vuPFh4AuHaSpbczs4tD4ADRl7Mg24oSLnw6xjkUqHQWJL0u1kpXVEoBsSqric8Ta7MKbCY9qxtGBJx1Pek7YdMG4QCFzdMDy/IdMtLdRL85QhWss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765282374; c=relaxed/simple;
	bh=5cvBYT8VhdaDPb1pZ6zpmRiBnIaTZEShFoZ1Dy8ENtI=;
	h=To:Subject:From:Message-Id:Date; b=dcIlBvk034w5luaAPZkBRSKcLt7pEu8I8Ffzr2E6RznpIggolNAFnNIoEN5NM9Pzbg0ew4xcNkOOv3pgzTPv+mjoyClYnSRYmdTbgjdLX4gD6DTh9iOt5nzOpQPdaJxQfr0vyUePv3BA/PcfkAjItc2ZrW+Iun4J0Y2agqOVBXE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RJciFtZE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RJciFtZE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF973C4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 12:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765282373;
	bh=5cvBYT8VhdaDPb1pZ6zpmRiBnIaTZEShFoZ1Dy8ENtI=;
	h=To:Subject:From:Date:From;
	b=RJciFtZEy50+hs/WVNSQxiJy7Lp9hJ2JWLTcr6ve1qQCll2F6K6rL73g5rbhP1tnD
	 jnfFVu/F8X2s4hQ536dzhKZoMljkfnnDO2T8kCbKZkDN9pehAFCaoN6T4uoMPDgrAr
	 9tORVvF2dNil8i+QZnhz4/VMXtHreFVJw2wCA+AMfSkwUqk6fEpsNM61Wwa2VzoRQZ
	 D6kzVgUszWVYD2foiAHyN8EFFZ8pAztBzfMmgkZwD8bgcAinNVBWkyYl5zlUmHQuPR
	 cPJsXzVZK1ae2+I6ZsNcj4vNKiaSmtq+WxBebSPBXphOLB3ZMVrj8suUmpnmWVVfWa
	 xZ2BPfAxJ8o9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DC9D1CDC6
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 12:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176528237358.13332.17608115838992389064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3614b9af3676cef1d6981304109d1e8df6d96ef16f3e12d6fc7bf677cf392780
Date: Tue, 09 Dec 2025 12:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765282373
