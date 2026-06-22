Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FE973B992C
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 14:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782137794; cv=none; b=r6NC44UvpKVIBjuCJMGgdnflVYlEnsionnf2hYgi4Roj42ac5pV/2rWRhPZK1cZ4wA15hxbwkKPHVD952eKsz95hJop6Y1XSvFjXH7UMhAlV0Y61HHt1riBcQVXMA2kUoQYmmxmRkMRZIY8oyHntuf86L6IKOSGzxCV47tSxDVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782137794; c=relaxed/simple;
	bh=VsJHJdxHw7MSKAzjodnKvDRbXpOT1cJaOdMhl+Tn7PQ=;
	h=To:Subject:From:Message-Id:Date; b=QARVap/k3xjMRCsS/1P4hlAQQtW9eIkvSzynXiNefnyBmmLP5UrYbvMMSg5vfPWNHX13Rasp059SIJgfXmK4XmMpo7PcVWpRPVujMGrDYVHSkaUAGcBqolGTWV6aLSJetu65gW8asJ85cG4CME84ox4QqzrDEVaZRGaruFDkZAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VOhHIpjZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VOhHIpjZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D58FAC2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 14:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782137793;
	bh=VsJHJdxHw7MSKAzjodnKvDRbXpOT1cJaOdMhl+Tn7PQ=;
	h=To:Subject:From:Date:From;
	b=VOhHIpjZBitOD7wzYsU0E/15rCp4fPYMjfds74fuwxDWwzijy6K2zoo/K5OQeQDB1
	 Y3WUEBHO/PX0CSgcMYEltOpQMuAybzE37OxHd5avd1ZQQoRt/A+OYTTkajrrD8x1sj
	 rf8ZbfH+VcEsrf2qpB5SS6+N47MaMnYh5Qx17YeILSEmRMLDjEyKGxSVS2m/Jn1Y/7
	 uwyP3iUh5XHyFZJHhFuHFxr5o6pGnDgYPGyptvQaIpwlZ4L/7qOL6En6Ndkdclp+4q
	 f0sjGRSpTPRzjsfNRsA/A9zDbAIPiTqiJS+AB+u0f2M67fyMVA8Bo6SVveVPoM4cnP
	 fXnaFCi2TO6tQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B32A8CDB46F
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 14:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178213779372.6239.10840818070762191217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 758f97fcfc16d5038bee45df3741645818cd890dfc9168f71fb0c439a9fc4de5
Date: Mon, 22 Jun 2026 14:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782137793
