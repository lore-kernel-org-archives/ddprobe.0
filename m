Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 145621A76BB
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 01:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771809294; cv=none; b=VGKsEzbPjteHqyMdEWGVi5ahDbGkbuorULkfmnG5X8xXK+PrFNcFJrz1BXsMS+2iidjw55uu91FG8PLHBwdjw9BxdGdbDZ4uF6EElbnLjc0xtv0NSC9jKLP9D827ZXYccdj/q3KZq4pHcECFbsJL2EeiefakcG8bBXMfbArErsw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771809294; c=relaxed/simple;
	bh=gT8XLvbS5xLREGQgfAU2ZUBOVQ/MKywHO2uTL02c7Z0=;
	h=To:Subject:From:Message-Id:Date; b=vFETvY72M99jtNIRmtD156k+RavaQzJE8CbDPFHtmV9RJF+otPExQ4ihjAtwMlcqzczsCeJrxMklOo+X7VClwwvYIveSYZx4PCS2uWw1n1+wUCyW4pJ6HklSqbu/31u8d1xVizyP9ySNcYem+cZAlcic1N5XEb1nA5IYsuQi6zI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QuZSlbCn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QuZSlbCn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF98BC116D0
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 01:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771809293;
	bh=gT8XLvbS5xLREGQgfAU2ZUBOVQ/MKywHO2uTL02c7Z0=;
	h=To:Subject:From:Date:From;
	b=QuZSlbCnnlo9BW3un3QbUabBp8hTdAOTU1UG5a6ahqPW7FT8dRfar18YRglfQTvbG
	 5cCB7l4V2SvMewZ2QKB05QdUPDu+1dgXqDaZOkQbOLRlQGBkmnmiaIXfCzh1bgxgwb
	 EvZoTkkPGx/l0sTxhEVn4ZunTbZ0zqS67haNRqTWD7Azj/Sfrc49MWRjlOvO1EAseF
	 oGcpYlBlysvpm3UbRKlUuICYyh83U4ZcrBDUFEfyKCG0Ae7dRrPSYh8MNn9n3T4Su7
	 lFS7JuGJjZPV23/2Jovwc5qA8JufmBbNc5M0B6tubDsWpU3PYS96ARTDdNPEGy3CuP
	 nq0t+H4bsy/vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96FC4E7C6F6
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 01:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177180929360.6340.3294842201532166248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35a2576637595e6e12a20fbc368607115ae9562c5eed6a24e9f77abcc22396fe
Date: Mon, 23 Feb 2026 01:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771809293
