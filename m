Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05EDA30E0FD
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761305994; cv=none; b=hG+Qm3vMnvt9iijYeFwDCTYIqwUow1iiHGYjzeiWp5qoeOx8DB+OPXqRbk8CtbCOSuGqvoujdmxVgyluGQ9SM/s5rJHRmqanFNNodTD5COBVJc/fd6e/sOrBZ1BmaRNyBYv2u73alaBZ8JGj4gPvuLVmxJ2eRrLFaAXGhqFoSKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761305994; c=relaxed/simple;
	bh=9b9qXVF+Xi8K616sE65tFs8e18sk9f/kMajesENtfYw=;
	h=To:Subject:From:Message-Id:Date; b=itta168fALxsHXNMB7EVG1xtPMMH/qenJEjUbb70g4Hd2u9D2LzwDXWv0mE7+/m34q2XOxjfgbEeDuM1bo4T6BHKXgRXc896SOMmck+o2PbvsK0PAB9AI3yPbJmzB1QmyTJqZkbo80RmeY3gcymzAjpffiQ2gwVdNJFM4u70+HY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SaUULZF1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SaUULZF1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A13A9C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761305993;
	bh=9b9qXVF+Xi8K616sE65tFs8e18sk9f/kMajesENtfYw=;
	h=To:Subject:From:Date:From;
	b=SaUULZF1FfigJfAtby5aLnB9oeieWwfI+8sOSyPrKYAbuvJPkAsRN71Ppk5PqhFhe
	 Y5tk+Ih9zvYo4jS28j/+/4GscERUXV7ULPtqKTE0YHCiHWprrw8qq+rTbcFVBMMuj6
	 bO242PYqWQpfBn99/OJ7YL6RtOuw+B1AYCSWcuDKSuKTtKlhXTB6kRuvHoOr5JIzXc
	 maZD2DiO+WPU+Y95iJOI4XbpQvPsrYlP/wRUDjqF0O3KaWcjspVVrAbjPlwMi9H1m1
	 ciqMfjjc0ExzGtCPlFALONjBrxdgCdvTRm6zy6kHbRxXTWD4HQPbDCdpXzz8xdfMd+
	 7XfM1uS5vhSkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F810CCD1AB
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176130599357.9305.17673867304927599191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d89cdb74ad0a03b5dc14b5ecc9b4547542096891be0beda94d8396c935835247
Date: Fri, 24 Oct 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761305993
