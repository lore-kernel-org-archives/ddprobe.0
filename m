Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BD1A440638
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 00:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787185834; cv=none; b=ZNHXB4TztIAIZHEcW44umy6FQacwXF7DzFiBnTF0h+h89G63/+3NO1NRYX+V/V0Xf8qechtUSiQQRkvSckNEzRLGJeZit9j/2LtwUVN8EKtOqk1rfr3J+nFcRrXT2vN3ZWk13Z3ozQfsNzlq8Q9OQLJOE8iP2cxHV4BBrzDGN0k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787185834; c=relaxed/simple;
	bh=aqVEU1fg5clJK6uwTwtxbRknD6df+WPBcviAM08lwqc=;
	h=To:Subject:From:Message-Id:Date; b=OiLAI5SkOd1G26jPT5laGIoN/11oGmSpgdhejRrKdDDSrZ9UWav+UhlOIb2AlxZfE0vs1ZmiFUdVmIl0VNpvLzczz4PfHlA+3AMFRx0g9UO5YEjguK8nlZMHreC9fOwsaX4Bj2Jq3Y+ITPFrDNliwJsDte5vLqUdPD2oOi9KCxc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KIljCNnk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KIljCNnk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0B35C19425
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 00:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787185833;
	bh=aqVEU1fg5clJK6uwTwtxbRknD6df+WPBcviAM08lwqc=;
	h=To:Subject:From:Date:From;
	b=KIljCNnkzLeqBx1x7mWnGXKD8RXoMGKemd5ubVb11Q4xdlILYr5WP5+oZcMZiNUNT
	 vyvCagZQodNwdiJrXrxeMjw7PBPtOXbGgkLP+r2xbuqaplzFE5Vk61oRQ8KgWev3XI
	 0rIbskJLYmsGuRSuXvg8XYN30OG2RNoQErFaqIPvXe5sYycw76XhUZi7nxlIe683zT
	 DIacTnKU+SXI5Fqfnz2Z5KnNmtf0Sa+VksrjvbxAAfalcYrRyTHnM+0+cYBr/FfuAZ
	 VhRBbgnEYsqOty5euziwjsIeNLenOjh55w/O7RHBgYbIKciIQiOY/8KhjyFu8IB0Ds
	 YVOpWNC7gZHKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6958C5DF81
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 00:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178718583370.13026.5300983474797578749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f6cc1f407e87472f6d2bea50c242f64d24c9500c4b62b1bdfb459f1d1cb1ff7
Date: Thu, 20 Aug 2026 00:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787185833
