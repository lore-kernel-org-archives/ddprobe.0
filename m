Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6250243DA59
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 03:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788232834; cv=none; b=uaolzLt9SMD/mHjyoP5utFDwRfXVm26/kaIc6CnvdkeTFfcDZru8Uvmcbwsv4MgDO0fGCK+A4MaNg2dQX7VeB62jpTlf48pp0OpxSxO5I4WGf8Hzegj6qDR+dmklJ9HChMzD5YQpyOvD1STnLmEJb2whnxSlhTGhsNVItjjY0B8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788232834; c=relaxed/simple;
	bh=i1T7asMXuhu8nDmjnqlie2nxT9YToKYuyzSYh1IedqQ=;
	h=To:Subject:From:Message-Id:Date; b=WES1AxCQqWmXv49pjMFWvg/nIKw1GsYlxGmvvKuCUTDdXGSR1oQPhCRDjL1kMfg5ghDf0G1orVI6p1jDsTRi7RxPvEbQgJgN96tphRW/A7VzkDofDzxfCkLjt671PDpK1xYDhZ5gksgBAhUK3XgRHjY73JslkM5/Rv/UC04OLLY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j+ucbZD8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j+ucbZD8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D143FC2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 03:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788232833;
	bh=i1T7asMXuhu8nDmjnqlie2nxT9YToKYuyzSYh1IedqQ=;
	h=To:Subject:From:Date:From;
	b=j+ucbZD8JSiQWpZxPQj73oeqDWtbijKQcGRuW22DbPBSoGdx4hbVxF0zeQcnEIJHe
	 F/mjae5oA/2vpVyf79I5KP0mvrNxofDXf44qHbcJdWMXbxPIiK5+jubSTC2qSXx0wF
	 KdinAPQTjOSPtddmRAJKfgnu4KiVExbWCwLknkETpoG/rst3Zb3ZC/uf4DBd2X/v5y
	 0W0E6zQnHKm4uqIwj1rLHOAMqukj1o7a0eLq3mfzVl0lxPnJJGl12vtOkVG47fjMNP
	 d/panWo/EDmIi7D5YK6V+GU2/JPNH1Fu8fpxw4Keif68n+MFzWezwwJOkwGee3vLsp
	 pA/+cG1sIRUBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABC57C624A4
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 03:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178823283369.14534.12727764204448720554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 899abb7cfcd4030ff57e3e1cd24a8846bfa6146a0f94ed8dd36a9d78ee75a99b
Date: Tue, 01 Sep 2026 03:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788232833
